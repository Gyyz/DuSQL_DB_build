PRAGMA foreign_keys = ON;

CREATE TABLE "名人" (
"词条id" int,
"姓名" text,
"国籍" text,
"职业" text,
"主要成就" text,
primary key ("词条id")
);

CREATE TABLE "传记" (
"词条id" int,
"书名" text,
"作者" text,
"页数" int,
"出版社" text,
"出版时间" time,
primary key ("词条id")
);

CREATE TABLE "名人传记" (
"传记id" int,
"人物id" int,
"记录时间" text,
foreign key("人物id") references "名人"("词条id"),
foreign key("传记id") references "传记"("词条id")
);

insert into "名人" ("词条id", "姓名", "国籍", "职业", "主要成就") values ("item_book.2_1_1", "乔布斯", "美国", "企业家", "苹果公司联合创办人")

insert into "名人" ("词条id", "姓名", "国籍", "职业", "主要成就") values ("item_book.2_1_2", "曾国藩", "中国", "政治家", "晚清四大名臣")

insert into "名人" ("词条id", "姓名", "国籍", "职业", "主要成就") values ("item_book.2_1_3", "成龙", "日本", "文艺工作者", "奥斯卡金像奖终身成就奖")

insert into "名人" ("词条id", "姓名", "国籍", "职业", "主要成就") values ("item_book.2_1_4", "吴敬琏", "日本", "作家", "中国经济学奖杰出贡献奖")

insert into "名人" ("词条id", "姓名", "国籍", "职业", "主要成就") values ("item_book.2_1_5", "萧红", "中国", "经济学家", "中国杰出作家")

insert into "传记" ("词条id", "书名", "作者", "页数", "出版社", "出版时间") values ("item_book.2_1_6", "乔布斯传", "柳润墨", "200", "人民文艺出版社", "1980-07-08")

insert into "传记" ("词条id", "书名", "作者", "页数", "出版社", "出版时间") values ("item_book.2_1_7", "曾国藩传", "垂青", "300", "机械工业出版社", "1981-03-24")

insert into "传记" ("词条id", "书名", "作者", "页数", "出版社", "出版时间") values ("item_book.2_1_8", "吴敬琏传", "吴晓波", "350", "人民教育出版社", "1990-05-04")

insert into "传记" ("词条id", "书名", "作者", "页数", "出版社", "出版时间") values ("item_book.2_1_9", "穿过爱情的漫长旅程:萧红传", "张丽", "400", "中国林业出版社", "2000-06-07")

insert into "传记" ("词条id", "书名", "作者", "页数", "出版社", "出版时间") values ("item_book.2_1_10", "成龙:还没长大就老了", "朱墨", "500", "科学出版社", "2015-11-01")

insert into "名人传记" ("传记id", "人物id", "记录时间") values ("item_book.2_1_8", "item_book.2_1_2", "生前")

insert into "名人传记" ("传记id", "人物id", "记录时间") values ("item_book.2_1_9", "item_book.2_1_2", "逝世后")

insert into "名人传记" ("传记id", "人物id", "记录时间") values ("item_book.2_1_6", "item_book.2_1_5", "逝世后")

insert into "名人传记" ("传记id", "人物id", "记录时间") values ("item_book.2_1_9", "item_book.2_1_2", "逝世后")

insert into "名人传记" ("传记id", "人物id", "记录时间") values ("item_book.2_1_9", "item_book.2_1_2", "生前")

