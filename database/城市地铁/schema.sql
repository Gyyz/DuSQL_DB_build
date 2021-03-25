PRAGMA foreign_keys = ON;

CREATE TABLE "中国地铁" (
"年份" time,
"总里程" int,
"开通城市数量" int
);

CREATE TABLE "城市" (
"词条id" text,
"城市名称" text,
"所属省份" text,
primary key ("词条id")
);

CREATE TABLE "城市地铁里程" (
"城市id" int,
"地铁运营里程" int,
"在建里程" int,
"规划里程" int,
"已运营线路数" int,
primary key ("城市id"),
foreign key("城市id") references "城市"("词条id")
);

CREATE TABLE "城市地铁日均客运量" (
"城市id" int,
"日均客运量(万人次)" int,
"每日每公里客运量(万人次)" int,
"每公里运营成本" int,
"每公里运营收入" int,
primary key ("城市id"),
foreign key("城市id") references "城市"("词条id")
);

CREATE TABLE "城市地铁票价" (
"城市id" int,
"2元可乘坐里程" int,
"3元可乘坐里程" int,
"4元可乘坐里程" int,
"5元可乘坐里程" int,
primary key ("城市id"),
foreign key("城市id") references "城市"("词条id")
);

insert into "中国地铁" ("年份", "总里程", "开通城市数量") values ("1980", "54.1", "2")

insert into "中国地铁" ("年份", "总里程", "开通城市数量") values ("1981", "4598", "70")

insert into "中国地铁" ("年份", "总里程", "开通城市数量") values ("1982", "54.1", "70")

insert into "中国地铁" ("年份", "总里程", "开通城市数量") values ("1999", "54.1", "2")

insert into "中国地铁" ("年份", "总里程", "开通城市数量") values ("2019", "54.1", "70")

insert into "城市" ("词条id", "城市名称", "所属省份") values ("item_geostatistics_19_91", "广州", "广东")

insert into "城市" ("词条id", "城市名称", "所属省份") values ("item_geostatistics_19_92", "深圳", "湖北")

insert into "城市" ("词条id", "城市名称", "所属省份") values ("item_geostatistics_19_93", "武汉", "四川")

insert into "城市" ("词条id", "城市名称", "所属省份") values ("item_geostatistics_19_94", "成都", "江苏")

insert into "城市" ("词条id", "城市名称", "所属省份") values ("item_geostatistics_19_95", "南京", "浙江")

insert into "城市地铁里程" ("城市id", "地铁运营里程", "在建里程", "规划里程", "已运营线路数") values ("item_geostatistics_19_92", "617", "300", "300", "20")

insert into "城市地铁里程" ("城市id", "地铁运营里程", "在建里程", "规划里程", "已运营线路数") values ("item_geostatistics_19_95", "670", "150", "200", "15")

insert into "城市地铁里程" ("城市id", "地铁运营里程", "在建里程", "规划里程", "已运营线路数") values ("item_geostatistics_19_92", "474", "400", "100", "14 ")

insert into "城市地铁里程" ("城市id", "地铁运营里程", "在建里程", "规划里程", "已运营线路数") values ("item_geostatistics_19_91", "286", "280", "200", "8")

insert into "城市地铁里程" ("城市id", "地铁运营里程", "在建里程", "规划里程", "已运营线路数") values ("item_geostatistics_19_94", "264", "250", "150", "8")

insert into "城市地铁日均客运量" ("城市id", "日均客运量(万人次)", "每日每公里客运量(万人次)", "每公里运营成本", "每公里运营收入") values ("item_geostatistics_19_93", "", "", "20.1", "15.2")

insert into "城市地铁日均客运量" ("城市id", "日均客运量(万人次)", "每日每公里客运量(万人次)", "每公里运营成本", "每公里运营收入") values ("item_geostatistics_19_92", "", "", "23.8", "17.6")

insert into "城市地铁日均客运量" ("城市id", "日均客运量(万人次)", "每日每公里客运量(万人次)", "每公里运营成本", "每公里运营收入") values ("item_geostatistics_19_92", "", "", "23.8", "17.6")

insert into "城市地铁日均客运量" ("城市id", "日均客运量(万人次)", "每日每公里客运量(万人次)", "每公里运营成本", "每公里运营收入") values ("item_geostatistics_19_92", "", "", "23.8", "17.6")

insert into "城市地铁日均客运量" ("城市id", "日均客运量(万人次)", "每日每公里客运量(万人次)", "每公里运营成本", "每公里运营收入") values ("item_geostatistics_19_92", "", "", "23.8", "17.6")

insert into "城市地铁票价" ("城市id", "2元可乘坐里程", "3元可乘坐里程", "4元可乘坐里程", "5元可乘坐里程") values ("item_geostatistics_19_93", "0", "6", "12", "18")

insert into "城市地铁票价" ("城市id", "2元可乘坐里程", "3元可乘坐里程", "4元可乘坐里程", "5元可乘坐里程") values ("item_geostatistics_19_92", "10", "16", "22", "30")

insert into "城市地铁票价" ("城市id", "2元可乘坐里程", "3元可乘坐里程", "4元可乘坐里程", "5元可乘坐里程") values ("item_geostatistics_19_93", "10", "16", "12", "18")

insert into "城市地铁票价" ("城市id", "2元可乘坐里程", "3元可乘坐里程", "4元可乘坐里程", "5元可乘坐里程") values ("item_geostatistics_19_91", "0", "16", "12", "18")

insert into "城市地铁票价" ("城市id", "2元可乘坐里程", "3元可乘坐里程", "4元可乘坐里程", "5元可乘坐里程") values ("item_geostatistics_19_93", "10", "6", "12", "30")

