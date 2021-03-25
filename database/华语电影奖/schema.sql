PRAGMA foreign_keys = ON;

CREATE TABLE "华语电影奖" (
"词条id" int,
"名称" text,
"创办时间" time,
"颁奖周期" int,
"颁奖地点" text,
primary key ("词条id")
);

CREATE TABLE "演员" (
"词条id" int,
"姓名" text,
"性别" text,
"年龄" int,
"主演电影数" int,
"出演电影数" int,
"获得提名数" int,
"获奖次数" int,
primary key ("词条id")
);

CREATE TABLE "电影" (
"词条id" int,
"名称" text,
"上映时间" time,
"片长" int,
"票房" int,
"获奖次数" int,
primary key ("词条id")
);

CREATE TABLE "华语电影奖提名名单" (
"年份" time,
"届数" int,
"提名人id" int,
"具体奖项" text,
"电影奖id" int,
foreign key("提名人id") references "演员"("词条id"),
foreign key("电影奖id") references "华语电影奖"("词条id")
);

CREATE TABLE "华语电影奖获奖名单" (
"年份" time,
"届数" int,
"电影奖id" int,
"具体奖项" text,
"获奖人id" int,
"电影id" int,
foreign key("获奖人id") references "演员"("词条id"),
foreign key("电影id") references "电影"("词条id"),
foreign key("电影奖id") references "华语电影奖"("词条id")
);

insert into "华语电影奖" ("词条id", "名称", "创办时间", "颁奖周期", "颁奖地点") values ("item_prize_1_1", "中国电影金鸡奖", "1981年", "1", "福建厦门")

insert into "华语电影奖" ("词条id", "名称", "创办时间", "颁奖周期", "颁奖地点") values ("item_prize_1_2", "大众电影百花奖", "1962年", "2", "每届不同")

insert into "华语电影奖" ("词条id", "名称", "创办时间", "颁奖周期", "颁奖地点") values ("item_prize_1_3", "中国电影华表奖", "1994年", "2", "北京")

insert into "华语电影奖" ("词条id", "名称", "创办时间", "颁奖周期", "颁奖地点") values ("item_prize_1_4", "香港电影金像奖", "1982年", "1", "香港")

insert into "华语电影奖" ("词条id", "名称", "创办时间", "颁奖周期", "颁奖地点") values ("item_prize_1_5", "台湾电影金马奖", "1962年", "1", "台湾")

insert into "演员" ("词条id", "姓名", "性别", "年龄", "主演电影数", "出演电影数", "获得提名数", "获奖次数") values ("item_prize_1_6", "王景春", "男", "22", "1", "3", "0", "0")

insert into "演员" ("词条id", "姓名", "性别", "年龄", "主演电影数", "出演电影数", "获得提名数", "获奖次数") values ("item_prize_1_7", "咏梅", "女", "55", "20", "50", "6", "3")

insert into "演员" ("词条id", "姓名", "性别", "年龄", "主演电影数", "出演电影数", "获得提名数", "获奖次数") values ("item_prize_1_8", "张涵予", "女", "55", "1", "50", "0", "0")

insert into "演员" ("词条id", "姓名", "性别", "年龄", "主演电影数", "出演电影数", "获得提名数", "获奖次数") values ("item_prize_1_9", "范冰冰", "男", "55", "1", "50", "0", "3")

insert into "演员" ("词条id", "姓名", "性别", "年龄", "主演电影数", "出演电影数", "获得提名数", "获奖次数") values ("item_prize_1_10", "黄晓明", "男", "22", "1", "50", "6", "3")

insert into "电影" ("词条id", "名称", "上映时间", "片长", "票房", "获奖次数") values ("item_prize_1_11", "我不是潘金莲", "2017年1月1日", "90分", "1000万", "0")

insert into "电影" ("词条id", "名称", "上映时间", "片长", "票房", "获奖次数") values ("item_prize_1_12", "地久天长", "2019年7月6日", "150分", "10亿", "6")

insert into "电影" ("词条id", "名称", "上映时间", "片长", "票房", "获奖次数") values ("item_prize_1_13", "红海行动", "2019年7月6日", "150分", "1000万", "6")

insert into "电影" ("词条id", "名称", "上映时间", "片长", "票房", "获奖次数") values ("item_prize_1_14", "烈日灼心", "2017年1月1日", "90分", "1000万", "6")

insert into "电影" ("词条id", "名称", "上映时间", "片长", "票房", "获奖次数") values ("item_prize_1_15", "中国合伙人", "2019年7月6日", "150分", "1000万", "6")

insert into "华语电影奖提名名单" ("年份", "届数", "提名人id", "具体奖项", "电影奖id") values ("2019", "3", "item_prize_1_9", "最佳男主角", "item_prize_1_4")

insert into "华语电影奖提名名单" ("年份", "届数", "提名人id", "具体奖项", "电影奖id") values ("2018", "4", "item_prize_1_10", "最佳女主角", "item_prize_1_3")

insert into "华语电影奖提名名单" ("年份", "届数", "提名人id", "具体奖项", "电影奖id") values ("2017", "5", "item_prize_1_10", "最佳男配角", "item_prize_1_3")

insert into "华语电影奖提名名单" ("年份", "届数", "提名人id", "具体奖项", "电影奖id") values ("2016", "6", "item_prize_1_10", "最佳女配角", "item_prize_1_1")

insert into "华语电影奖提名名单" ("年份", "届数", "提名人id", "具体奖项", "电影奖id") values ("2019", "7", "item_prize_1_10", "最佳男主角", "item_prize_1_4")

insert into "华语电影奖获奖名单" ("年份", "届数", "电影奖id", "具体奖项", "获奖人id", "电影id") values ("2018", "5", "item_prize_1_4", "最佳男主角", "item_prize_1_9", "item_prize_1_14")

insert into "华语电影奖获奖名单" ("年份", "届数", "电影奖id", "具体奖项", "获奖人id", "电影id") values ("2017", "2", "item_prize_1_2", "最佳女主角", "item_prize_1_8", "item_prize_1_11")

insert into "华语电影奖获奖名单" ("年份", "届数", "电影奖id", "具体奖项", "获奖人id", "电影id") values ("2016", "4", "item_prize_1_4", "最佳男配角", "item_prize_1_10", "item_prize_1_15")

insert into "华语电影奖获奖名单" ("年份", "届数", "电影奖id", "具体奖项", "获奖人id", "电影id") values ("2015", "3", "item_prize_1_1", "最佳女配角", "item_prize_1_7", "item_prize_1_13")

insert into "华语电影奖获奖名单" ("年份", "届数", "电影奖id", "具体奖项", "获奖人id", "电影id") values ("2014", "6", "item_prize_1_2", "最佳男配角", "item_prize_1_10", "item_prize_1_11")

