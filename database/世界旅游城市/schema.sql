PRAGMA foreign_keys = ON;

CREATE TABLE "城市" (
"词条id" int,
"名称" text,
"国家" text,
"2017年世界排名" int,
"2018年世界排名" int,
"2019年世界排名" int,
primary key ("词条id")
);

CREATE TABLE "旅游人数" (
"年份" time,
"城市id" int,
"接待人口" int,
"收入" int,
foreign key("城市id") references "城市"("词条id")
);

insert into "城市" ("词条id", "名称", "国家", "2017年世界排名", "2018年世界排名", "2019年世界排名") values ("item_geography.2_8_76", "纽约", "美国", "1", "1", "1")

insert into "城市" ("词条id", "名称", "国家", "2017年世界排名", "2018年世界排名", "2019年世界排名") values ("item_geography.2_8_77", "东京", "日本", "2", "2", "2")

insert into "城市" ("词条id", "名称", "国家", "2017年世界排名", "2018年世界排名", "2019年世界排名") values ("item_geography.2_8_78", "伦敦", "英国", "3", "3", "3")

insert into "城市" ("词条id", "名称", "国家", "2017年世界排名", "2018年世界排名", "2019年世界排名") values ("item_geography.2_8_79", "巴黎", "法国", "4", "4", "4")

insert into "城市" ("词条id", "名称", "国家", "2017年世界排名", "2018年世界排名", "2019年世界排名") values ("item_geography.2_8_80", "北京", "中国", "5", "5", "5")

insert into "旅游人数" ("年份", "城市id", "接待人口", "收入") values ("2019", "item_geography.2_8_80", "10000", "10亿美元")

insert into "旅游人数" ("年份", "城市id", "接待人口", "收入") values ("2010", "item_geography.2_8_80", "20000", "10亿美元")

insert into "旅游人数" ("年份", "城市id", "接待人口", "收入") values ("2003", "item_geography.2_8_79", "40000", "10亿美元")

insert into "旅游人数" ("年份", "城市id", "接待人口", "收入") values ("2015", "item_geography.2_8_79", "50000", "10亿美元")

insert into "旅游人数" ("年份", "城市id", "接待人口", "收入") values ("2014", "item_geography.2_8_79", "100000", "10亿美元")

