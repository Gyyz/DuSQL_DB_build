PRAGMA foreign_keys = ON;

CREATE TABLE "单位" (
"词条id" int,
"名称" text,
"类别" text,
primary key ("词条id")
);

CREATE TABLE "进制换算" (
"单位id" int,
"转换单位id" int,
"进制" int,
foreign key("转换单位id") references "单位"("词条id"),
foreign key("单位id") references "单位"("词条id")
);

insert into "单位" ("词条id", "名称", "类别") values ("item_dynasties_words_4_21", "米", "长度")

insert into "单位" ("词条id", "名称", "类别") values ("item_dynasties_words_4_22", "千米", "面积")

insert into "单位" ("词条id", "名称", "类别") values ("item_dynasties_words_4_23", "平方米", "体积")

insert into "单位" ("词条id", "名称", "类别") values ("item_dynasties_words_4_24", "立方米", "重量")

insert into "单位" ("词条id", "名称", "类别") values ("item_dynasties_words_4_25", "公顷", "温度")

insert into "进制换算" ("单位id", "转换单位id", "进制") values ("item_dynasties_words_4_25", "item_dynasties_words_4_25", "10")

insert into "进制换算" ("单位id", "转换单位id", "进制") values ("item_dynasties_words_4_22", "item_dynasties_words_4_24", "100")

insert into "进制换算" ("单位id", "转换单位id", "进制") values ("item_dynasties_words_4_25", "item_dynasties_words_4_22", "1000")

insert into "进制换算" ("单位id", "转换单位id", "进制") values ("item_dynasties_words_4_23", "item_dynasties_words_4_21", "60")

insert into "进制换算" ("单位id", "转换单位id", "进制") values ("item_dynasties_words_4_23", "item_dynasties_words_4_21", "12")

