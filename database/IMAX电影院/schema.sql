PRAGMA foreign_keys = ON;

CREATE TABLE "城市" (
"词条id" int,
"名称" text,
"所属省份" text,
"市区面积" int,
primary key ("词条id")
);

CREATE TABLE "IMAX电影院" (
"词条id" int,
"影院名称" text,
"所在城市id" int,
"开业时间" time,
"屏幕宽" int,
"屏幕高" int,
"屏幕面积" int,
"座位数" int,
primary key ("词条id"),
foreign key("所在城市id") references "城市"("词条id")
);

CREATE TABLE "影院放映电影数量" (
"年份" time,
"影院id" int,
"电影数量" int,
"营收" int,
foreign key("影院id") references "IMAX电影院"("词条id")
);

insert into "城市" ("词条id", "名称", "所属省份", "市区面积") values ("item_mechanism_3_31", "北京", "北京", "8400平方千米")

insert into "城市" ("词条id", "名称", "所属省份", "市区面积") values ("item_mechanism_3_32", "上海", "上海", "90000平方千米")

insert into "城市" ("词条id", "名称", "所属省份", "市区面积") values ("item_mechanism_3_33", "长春", "吉林", "98000平方千米")

insert into "城市" ("词条id", "名称", "所属省份", "市区面积") values ("item_mechanism_3_34", "青岛", "山东", "15430平方千米")

insert into "城市" ("词条id", "名称", "所属省份", "市区面积") values ("item_mechanism_3_35", "苏州", "江苏", "16410平方千米")

insert into "IMAX电影院" ("词条id", "影院名称", "所在城市id", "开业时间", "屏幕宽", "屏幕高", "屏幕面积", "座位数") values ("item_mechanism_3_36", "中国科技馆影院", "item_mechanism_3_35", "2003-09-08", "21米", "16", "352", "278")

insert into "IMAX电影院" ("词条id", "影院名称", "所在城市id", "开业时间", "屏幕宽", "屏幕高", "屏幕面积", "座位数") values ("item_mechanism_3_37", "上海和平影都", "item_mechanism_3_34", "2004-05-07", "25米", "16.7米", "400", "300")

insert into "IMAX电影院" ("词条id", "影院名称", "所在城市id", "开业时间", "屏幕宽", "屏幕高", "屏幕面积", "座位数") values ("item_mechanism_3_38", "武汉环艺影城", "item_mechanism_3_35", "2010-08-23", "25.7米", "17.9米", "430", "370")

insert into "IMAX电影院" ("词条id", "影院名称", "所在城市id", "开业时间", "屏幕宽", "屏幕高", "屏幕面积", "座位数") values ("item_mechanism_3_39", "苏州文化艺术中心", "item_mechanism_3_32", "2013-11-09", "29.8米", "19.9米", "500", "400")

insert into "IMAX电影院" ("词条id", "影院名称", "所在城市id", "开业时间", "屏幕宽", "屏幕高", "屏幕面积", "座位数") values ("item_mechanism_3_40", "长春万达影城", "item_mechanism_3_35", "2014-09-07", "30米", "20米", "570", "630")

insert into "影院放映电影数量" ("年份", "影院id", "电影数量", "营收") values ("2017", "item_mechanism_3_36", "10000", "6亿")

insert into "影院放映电影数量" ("年份", "影院id", "电影数量", "营收") values ("2016", "item_mechanism_3_39", "13000", "9.8亿")

insert into "影院放映电影数量" ("年份", "影院id", "电影数量", "营收") values ("2015", "item_mechanism_3_39", "17000", "10亿")

insert into "影院放映电影数量" ("年份", "影院id", "电影数量", "营收") values ("2014", "item_mechanism_3_40", "200000", "10.33亿")

insert into "影院放映电影数量" ("年份", "影院id", "电影数量", "营收") values ("2013", "item_mechanism_3_37", "100000", "30亿")

