PRAGMA foreign_keys = ON;

CREATE TABLE "作者" (
"词条id" int,
"姓名" text,
"性别" text,
"国籍" text,
"职业" text,
"所在单位" text,
primary key ("词条id")
);

CREATE TABLE "论文" (
"词条id" int,
"名称" text,
"作者id" int,
"会议名称" text,
"年份" time,
"引用量" int,
primary key ("词条id"),
foreign key("作者id") references "作者"("词条id")
);

CREATE TABLE "论文引用" (
"论文id" int,
"引用论文id" int,
"是否对比论文" binary,
foreign key("论文id") references "论文"("词条id"),
foreign key("引用论文id") references "论文"("词条id")
);

insert into "作者" ("词条id", "姓名", "性别", "国籍", "职业", "所在单位") values ("item_book.2_3_21", "曼宁", "男", "中国", "研究生", "中科院自动化所")

insert into "作者" ("词条id", "姓名", "性别", "国籍", "职业", "所在单位") values ("item_book.2_3_22", "曼德拉", "女", "美国", "讲师", "清华大学")

insert into "作者" ("词条id", "姓名", "性别", "国籍", "职业", "所在单位") values ("item_book.2_3_23", "张一", "女", "新加坡", "助理教授", "浙江大学")

insert into "作者" ("词条id", "姓名", "性别", "国籍", "职业", "所在单位") values ("item_book.2_3_24", "李平", "女", "印度", "副教授", "阿里巴巴集团")

insert into "作者" ("词条id", "姓名", "性别", "国籍", "职业", "所在单位") values ("item_book.2_3_25", "王乐", "女", "德国", "教授", "百度")

insert into "论文" ("词条id", "名称", "作者id", "会议名称", "年份", "引用量") values ("item_book.2_3_26", "基于对齐的机器翻译", "item_book.2_3_21", "ACL", "2010-03-24", "100")

insert into "论文" ("词条id", "名称", "作者id", "会议名称", "年份", "引用量") values ("item_book.2_3_27", "基于神经网络的文本分类", "item_book.2_3_24", "IJCAI", "2011-07-06", "90")

insert into "论文" ("词条id", "名称", "作者id", "会议名称", "年份", "引用量") values ("item_book.2_3_28", "小样本迁移学习", "item_book.2_3_23", "AAAI", "2014-07-07", "90")

insert into "论文" ("词条id", "名称", "作者id", "会议名称", "年份", "引用量") values ("item_book.2_3_29", "主动学习机制在对话中的应用", "item_book.2_3_23", "EMNLP", "2015-06-24", "100")

insert into "论文" ("词条id", "名称", "作者id", "会议名称", "年份", "引用量") values ("item_book.2_3_30", "强化学习在闲聊对话中的应用", "item_book.2_3_24", "CONLL", "2019-09-09", "90")

insert into "论文引用" ("论文id", "引用论文id", "是否对比论文") values ("item_book.2_3_29", "item_book.2_3_29", "是")

insert into "论文引用" ("论文id", "引用论文id", "是否对比论文") values ("item_book.2_3_30", "item_book.2_3_26", "否")

insert into "论文引用" ("论文id", "引用论文id", "是否对比论文") values ("item_book.2_3_26", "item_book.2_3_26", "否")

insert into "论文引用" ("论文id", "引用论文id", "是否对比论文") values ("item_book.2_3_27", "item_book.2_3_30", "是")

insert into "论文引用" ("论文id", "引用论文id", "是否对比论文") values ("item_book.2_3_26", "item_book.2_3_27", "否")

