PRAGMA foreign_keys = ON;

CREATE TABLE "国家卫生城市" (
"词条id" int,
"名称" text,
"所属省份" text,
"下辖区县数量" int,
"入选次数" int,
primary key ("词条id")
);

CREATE TABLE "国家旅游城市" (
"词条id" int,
"名称" text,
"所属省份" text,
"气候条件" text,
"景点数量" int,
"5A级景点数量" int,
primary key ("词条id")
);

CREATE TABLE "国家森林城市" (
"词条id" int,
"名称" text,
"所属省份" text,
"森林覆盖率" int,
"森林公园数量" int,
primary key ("词条id")
);

CREATE TABLE "国家中心城市" (
"词条id" int,
"名称" text,
"所属省份" text,
"排名" int,
"GDP" int,
"GDP同比增速" int,
primary key ("词条id")
);

CREATE TABLE "世界一线城市" (
"词条id" int,
"名称" text,
"所属省份" text,
"世界排名" int,
"户籍人口" int,
"常住流动人口" int,
primary key ("词条id")
);

insert into "国家卫生城市" ("词条id", "名称", "所属省份", "下辖区县数量", "入选次数") values ("item_geography.2_17_151", "东城区", "北京市", "16", "1")

insert into "国家卫生城市" ("词条id", "名称", "所属省份", "下辖区县数量", "入选次数") values ("item_geography.2_17_152", "西城区", "天津市", "6", "2")

insert into "国家卫生城市" ("词条id", "名称", "所属省份", "下辖区县数量", "入选次数") values ("item_geography.2_17_153", "和平区", "河北省", "2", "1")

insert into "国家卫生城市" ("词条id", "名称", "所属省份", "下辖区县数量", "入选次数") values ("item_geography.2_17_154", "迁安市", "山西省", "8", "1")

insert into "国家卫生城市" ("词条id", "名称", "所属省份", "下辖区县数量", "入选次数") values ("item_geography.2_17_155", "长治市", "河北省", "8", "2")

insert into "国家旅游城市" ("词条id", "名称", "所属省份", "气候条件", "景点数量", "5A级景点数量") values ("item_geography.2_17_156", "北京市", "北京", "干燥", "108", "13")

insert into "国家旅游城市" ("词条id", "名称", "所属省份", "气候条件", "景点数量", "5A级景点数量") values ("item_geography.2_17_157", "天津市", "天津", "寒冷", "45", "2")

insert into "国家旅游城市" ("词条id", "名称", "所属省份", "气候条件", "景点数量", "5A级景点数量") values ("item_geography.2_17_158", "上海市", "上海", "炎热", "67", "8")

insert into "国家旅游城市" ("词条id", "名称", "所属省份", "气候条件", "景点数量", "5A级景点数量") values ("item_geography.2_17_159", "重庆市", "重庆", "干燥", "24", "95")

insert into "国家旅游城市" ("词条id", "名称", "所属省份", "气候条件", "景点数量", "5A级景点数量") values ("item_geography.2_17_160", "秦皇岛", "河北", "寒冷", "23", "95")

insert into "国家森林城市" ("词条id", "名称", "所属省份", "森林覆盖率", "森林公园数量") values ("item_geography.2_17_161", "贵阳市", "贵州省", "40.6%", "9")

insert into "国家森林城市" ("词条id", "名称", "所属省份", "森林覆盖率", "森林公园数量") values ("item_geography.2_17_162", "沈阳市", "辽宁省", "35.4%", "8")

insert into "国家森林城市" ("词条id", "名称", "所属省份", "森林覆盖率", "森林公园数量") values ("item_geography.2_17_163", "长沙市", "湖南省", "37.8%", "11")

insert into "国家森林城市" ("词条id", "名称", "所属省份", "森林覆盖率", "森林公园数量") values ("item_geography.2_17_164", "成都市", "四川省", "50.5%", "12")

insert into "国家森林城市" ("词条id", "名称", "所属省份", "森林覆盖率", "森林公园数量") values ("item_geography.2_17_165", "包头市", "内蒙古自治区", "42.1%", "15")

insert into "国家中心城市" ("词条id", "名称", "所属省份", "排名", "GDP", "GDP同比增速") values ("item_geography.2_17_166", "上海", "上海", "1", "32679.87", "6.6 ")

insert into "国家中心城市" ("词条id", "名称", "所属省份", "排名", "GDP", "GDP同比增速") values ("item_geography.2_17_167", "北京", "北京", "2", "30320.0", "6.6 ")

insert into "国家中心城市" ("词条id", "名称", "所属省份", "排名", "GDP", "GDP同比增速") values ("item_geography.2_17_168", "广州", "广东", "3", "22859.35", "6.2 ")

insert into "国家中心城市" ("词条id", "名称", "所属省份", "排名", "GDP", "GDP同比增速") values ("item_geography.2_17_169", "重庆", "重庆", "4", "20363.19", "6.0 ")

insert into "国家中心城市" ("词条id", "名称", "所属省份", "排名", "GDP", "GDP同比增速") values ("item_geography.2_17_170", "成都", "四川", "6", "15342.77", "8.0 ")

insert into "世界一线城市" ("词条id", "名称", "所属省份", "世界排名", "户籍人口", "常住流动人口") values ("item_geography.2_17_171", "香港", "香港特别行政区", "3", "726.4万", "454.2万")

insert into "世界一线城市" ("词条id", "名称", "所属省份", "世界排名", "户籍人口", "常住流动人口") values ("item_geography.2_17_172", "北京", "北京", "7", "1359.2万", "794.3万")

insert into "世界一线城市" ("词条id", "名称", "所属省份", "世界排名", "户籍人口", "常住流动人口") values ("item_geography.2_17_173", "上海", "上海", "3", "1445.65万", "972.69万")

insert into "世界一线城市" ("词条id", "名称", "所属省份", "世界排名", "户籍人口", "常住流动人口") values ("item_geography.2_17_174", "广州", "广东", "7", "897.87万", "465.3万")

insert into "世界一线城市" ("词条id", "名称", "所属省份", "世界排名", "户籍人口", "常住流动人口") values ("item_geography.2_17_175", "台北", "台湾", "3", "270.1571万", "89.9万")

