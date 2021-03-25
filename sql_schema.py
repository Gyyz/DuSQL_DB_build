import json
import os
import sqlite3
from sqlite3 import Error


def alias(inp):
    #  {'binary', 'number', 'others', 'text', 'time'}
    if inp == 'number':
        return 'int'
    elif inp == 'others':
        return 'text'
    return inp

def load_db(path='./db_data'):
    """
    suppose db files are json files which can load all items use json.load()
    """
    db_content_f = os.path.join(path, 'db_content.json')
    db_schema_f = os.path.join(path, 'db_schema.json')

    assert os.path.exists(db_content_f)
    assert os.path.exists(db_schema_f)

    with open(db_content_f) as in_file:
        db_contents = json.load(in_file)
    with open(db_schema_f) as in_file:
        db_schemas = json.load(in_file)

    assert len(db_schemas) == len(db_contents)
    db_contents = {itm['db_id']: itm['tables'] for itm in db_contents}

    return db_contents, db_schemas


class SCM:
    def __init__(self, db_sc, db_cnt):
        super(SCM, self).__init__()
        self.schema_id = db_sc['db_id']  # the schema name, the folder name
        self.db_sc = db_sc  # the column, tables, column_types, foreign and primary keys
        self.db_cnt = db_cnt  # the table values


        self.sql_lines = ['PRAGMA foreign_keys = ON;']

        self.column_names = db_sc['column_names']
        self.column_types = db_sc['column_types']
        self.foreign_keys = db_sc['foreign_keys']
        self.primary_keys = db_sc['primary_keys']
        self.table_names = db_sc['table_names']

        self.add_value_lines = []
        self.column_table_mapping = [col_[0] for col_ in self.column_names]
        self.table_blocks = [[] for i_ in range(len(self.table_names))]
        self.compose_tables()

        self.compose_values()
        self.finalize()

    def compose_tables(self):

        tbl_flag = -1

        # some table have repeated column name
        duplicate_column_ref = [[] for i_ in range(len(self.table_names))]

        for ((tbl_id, col_name), ctyp) in zip(self.column_names, self.column_types):
            if tbl_id < 0:
                continue

            if tbl_id == tbl_flag:
                if col_name in duplicate_column_ref[tbl_id]:
                    print('Should not often, '
                            f'Replace Column name {col_name} with {col_name}2')
                    col_name += '2'
                self.table_blocks[tbl_id].append(f'''"{col_name}" {alias(ctyp)}''')
                duplicate_column_ref[tbl_id].append(col_name)
            else:
                tbl_flag = tbl_id
                if col_name in duplicate_column_ref[tbl_id]:
                    col_name += '2'
                    print('Duplicate Column Found In the same table, should not occur often, '
                            f'Replace Column name {col_name} with {col_name}2')
                self.table_blocks[tbl_id].append(f'''CREATE TABLE "{self.table_names[tbl_id]}" (''')
                self.table_blocks[tbl_id].append(f'''"{col_name}" {alias(ctyp)}''')
                duplicate_column_ref[tbl_id].append(col_name)
        # for itm in self.table_blocks:
        #     print(itm[0]+',\n'.join(itm[1:]))

    def compose_values(self):
        #  should add table without foreign key first for later table reference
        table_val_block = [[] for _ in range(len(self.table_names))]

        wrapped = lambda a: f'"{a}"'
        for tbl_name,  tbl_cnt in self.db_cnt.items():
            cell_values = tbl_cnt['cell']
            header = list(map(wrapped, tbl_cnt['header']))
            header = ', '.join(header)
            for valu in cell_values:
                valu = list(map(wrapped, valu))
                # some column conflict in primary key?
                # todo: how to handle conflict in primary key, here ignore first
                table_val_block[self.table_names.index(tbl_name)].append(f'''insert into or ignore "{tbl_name}" ({header}) values ({', '.join(valu)})''')
        self.add_value_lines = sum(table_val_block, [])

    def finalize(self):
        # add primary, if one table has more than two primary keys, should add together
        # primary key ("pkey1", "pkey2")

        # todo: some table have foreign keys but have nno primary keys?, force generate primary first
        tmp_pri = []
        if len(self.foreign_keys) > 0:
            for fkey_pair in self.foreign_keys:
                in_tbl_col_idx, ref_tbl_col_idx = fkey_pair
                assert in_tbl_col_idx > ref_tbl_col_idx
                if ref_tbl_col_idx not in self.primary_keys:
                    tmp_pri.append(ref_tbl_col_idx)
        tmp_pri = list(set(tmp_pri))

        if len(self.primary_keys+tmp_pri) > 0:
            primary_key_tbl_mapping = [[] for i_ in range(len(self.table_names))]
            for pkey_idx in self.primary_keys+tmp_pri:
                tbl_idx = self.column_table_mapping[pkey_idx]
                col_name = self.column_names[pkey_idx][-1]
                primary_key_tbl_mapping[tbl_idx].append(col_name)
            for tbl_idx, tbl in enumerate(primary_key_tbl_mapping):
                if len(tbl) > 0:
                    add_quote = lambda a: f'"{a}"'
                    cols = list(map(add_quote, tbl))
                    cols = ', '.join(cols)
                    # print(cols)
                    self.table_blocks[tbl_idx].append(f'''primary key ({cols})''')

        if len(self.foreign_keys) > 0:
            for fkey_pair in self.foreign_keys:
                in_tbl_col_idx, ref_tbl_col_idx = fkey_pair
                assert in_tbl_col_idx > ref_tbl_col_idx
                intbl_idx = self.column_table_mapping[in_tbl_col_idx]  # in_tbl idx
                reftbl_idx = self.column_table_mapping[ref_tbl_col_idx]  # ref_tbl_idx
                in_col_name = self.column_names[in_tbl_col_idx][-1]  # in_col_name
                ref_col_name = self.column_names[ref_tbl_col_idx][-1]  # ref_col_name
                in_tbl_name = self.table_names[intbl_idx]  # in_tbl_name
                ref_tbl_name = self.table_names[reftbl_idx]  # ref_tbl_name
                self.table_blocks[intbl_idx].append(f'''foreign key("{in_col_name}") references "{ref_tbl_name}"("{ref_col_name}")''')

        for tbl_idx in range(len(self.table_blocks)):
            self.table_blocks[tbl_idx].append(''');''')
            self.table_blocks[tbl_idx] = self.table_blocks[tbl_idx][0]+'\n'+',\n'.join(self.table_blocks[tbl_idx][1:-1])+'\n'+self.table_blocks[tbl_idx][-1]
        self.sql_lines = self.sql_lines + self.table_blocks + self.add_value_lines


class Schemas:
    def __init__(self, db_contents, db_schemas):
        super(Schemas, self).__init__()
        self.db_schemas = db_schemas
        self.db_contents = db_contents

    def generate_sqls(self):
        databases = []
        for db_sc in self.db_schemas:
            db_id = db_sc['db_id']
            db_cnt = self.db_contents[db_id]
            # databases.append(SCM(db_sc=db_sc, db_cnt=db_cnt).sql_lines)

            itmm = SCM(db_sc=db_sc, db_cnt=db_cnt)
            dir_path = itmm.schema_id
            if '/' in dir_path:
                dir_path = dir_path.replace('/', '_')
            if not os.path.exists(f'./database/{dir_path}'):
                os.mkdir(f'./database/{dir_path}')
            conn = sqlite3.connect(f'./database/{dir_path}/{dir_path}.sqlite')
            c = conn.cursor()
            itmm = SCM(db_sc=db_sc, db_cnt=db_cnt)
            outfile = open(os.path.join(f'./database/{dir_path}', 'schema.sql'), 'w')
            for sql in itmm.sql_lines:
                outfile.write(sql+'\n\n')
                try:
                    c.execute(sql)
                    conn.commit()
                except sqlite3.IntegrityError as E:
                    print(E)
                    print(sql)
                except sqlite3.OperationalError as E:
                    print(E)
                    print(sql)
            outfile.close()
            conn.close()


if __name__ == '__main__':
    db_schema = Schemas(*load_db())
    db_schema.generate_sqls()
