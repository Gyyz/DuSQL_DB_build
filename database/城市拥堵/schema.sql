PRAGMA foreign_keys = ON;

CREATE TABLE "城市" (
"词条id" int,
"城市" text,
"所属省份" text,
"城市人口" int,
"城市面积" int,
"汽车保有量级别(辆)" int,
"通勤高峰拥堵指数" int,
"通勤高峰实际速度(千米/时)" int,
"拥堵排名" int,
primary key ("词条id")
);

CREATE TABLE "全国交通枢纽" (
"词条id" int,
"交通枢纽站" text,
"所属城市id" text,
"所属省份" int,
"平均拥堵指数" int,
"周边路网平均速度(千米/时)" int,
"拥堵排名" int,
primary key ("词条id"),
foreign key("所属城市id") references "城市"("词条id")
);

CREATE TABLE "旅游景点" (
"词条id" int,
"景点名称" text,
"所属城市id" int,
"平均拥堵指数" int,
"周边路网平均速度(千米/时)" int,
"拥堵排名" int,
primary key ("词条id"),
foreign key("所属城市id") references "城市"("词条id")
);

CREATE TABLE "全国热门景点" (
"景点id" int,
"日均接待游客数量" int,
"日均外省游客数量" int,
"热度排名" int,
primary key ("景点id"),
foreign key("景点id") references "旅游景点"("词条id")
);

CREATE TABLE "热门出境游城市" (
"城市" text,
"所在国家" text,
"国内游客数量" int,
"排名" int
);

insert into "城市" ("词条id", "城市", "所属省份", "城市人口", "城市面积", "汽车保有量级别(辆)", "通勤高峰拥堵指数", "通勤高峰实际速度(千米/时)", "拥堵排名") values ("item_geostatistics_4_16", "重庆", "重庆", "800万", "17000", "", "2.2", "", "1")

insert into "城市" ("词条id", "城市", "所属省份", "城市人口", "城市面积", "汽车保有量级别(辆)", "通勤高峰拥堵指数", "通勤高峰实际速度(千米/时)", "拥堵排名") values ("item_geostatistics_4_17", "北京", "北京", "2300万", "35000平方千米", "", "1.4", "", "10")

insert into "城市" ("词条id", "城市", "所属省份", "城市人口", "城市面积", "汽车保有量级别(辆)", "通勤高峰拥堵指数", "通勤高峰实际速度(千米/时)", "拥堵排名") values ("item_geostatistics_4_18", "武汉", "湖北", "2300万", "35000平方千米", "", "1.4", "", "1")

insert into "城市" ("词条id", "城市", "所属省份", "城市人口", "城市面积", "汽车保有量级别(辆)", "通勤高峰拥堵指数", "通勤高峰实际速度(千米/时)", "拥堵排名") values ("item_geostatistics_4_19", "唐山", "河北", "800万", "17000", "", "1.4", "", "1")

insert into "城市" ("词条id", "城市", "所属省份", "城市人口", "城市面积", "汽车保有量级别(辆)", "通勤高峰拥堵指数", "通勤高峰实际速度(千米/时)", "拥堵排名") values ("item_geostatistics_4_20", "呼和浩特", "内蒙古", "800万", "35000平方千米", "", "2.2", "", "1")

insert into "全国交通枢纽" ("词条id", "交通枢纽站", "所属城市id", "所属省份", "平均拥堵指数", "周边路网平均速度(千米/时)", "拥堵排名") values ("item_geostatistics_4_21", "济南东站", "item_geostatistics_4_19", "山东", "1.4", "", "1")

insert into "全国交通枢纽" ("词条id", "交通枢纽站", "所属城市id", "所属省份", "平均拥堵指数", "周边路网平均速度(千米/时)", "拥堵排名") values ("item_geostatistics_4_22", "重庆长途客运站", "item_geostatistics_4_18", "重庆", "1.7", "", "10")

insert into "全国交通枢纽" ("词条id", "交通枢纽站", "所属城市id", "所属省份", "平均拥堵指数", "周边路网平均速度(千米/时)", "拥堵排名") values ("item_geostatistics_4_23", "重庆站", "item_geostatistics_4_20", "重庆", "1.4", "", "10")

insert into "全国交通枢纽" ("词条id", "交通枢纽站", "所属城市id", "所属省份", "平均拥堵指数", "周边路网平均速度(千米/时)", "拥堵排名") values ("item_geostatistics_4_24", "郑州汽车客运中心", "item_geostatistics_4_20", "河南", "1.7", "", "10")

insert into "全国交通枢纽" ("词条id", "交通枢纽站", "所属城市id", "所属省份", "平均拥堵指数", "周边路网平均速度(千米/时)", "拥堵排名") values ("item_geostatistics_4_25", "哈尔滨东站", "item_geostatistics_4_19", "黑龙江", "1.4", "", "10")

insert into "旅游景点" ("词条id", "景点名称", "所属城市id", "平均拥堵指数", "周边路网平均速度(千米/时)", "拥堵排名") values ("item_geostatistics_4_26", "西柏坡纪念馆", "item_geostatistics_4_16", "1.9", "", "1")

insert into "旅游景点" ("词条id", "景点名称", "所属城市id", "平均拥堵指数", "周边路网平均速度(千米/时)", "拥堵排名") values ("item_geostatistics_4_27", "陕西历史博物馆", "item_geostatistics_4_17", "3.2", "", "10")

insert into "旅游景点" ("词条id", "景点名称", "所属城市id", "平均拥堵指数", "周边路网平均速度(千米/时)", "拥堵排名") values ("item_geostatistics_4_28", "阳朔公园", "item_geostatistics_4_20", "1.9", "", "10")

insert into "旅游景点" ("词条id", "景点名称", "所属城市id", "平均拥堵指数", "周边路网平均速度(千米/时)", "拥堵排名") values ("item_geostatistics_4_29", "永兴坊", "item_geostatistics_4_19", "1.9", "", "1")

insert into "旅游景点" ("词条id", "景点名称", "所属城市id", "平均拥堵指数", "周边路网平均速度(千米/时)", "拥堵排名") values ("item_geostatistics_4_30", "秦始皇兵马俑", "item_geostatistics_4_20", "3.2", "", "1")

insert into "全国热门景点" ("景点id", "日均接待游客数量", "日均外省游客数量", "热度排名") values ("item_geostatistics_4_27", "20000", "15000", "1")

insert into "全国热门景点" ("景点id", "日均接待游客数量", "日均外省游客数量", "热度排名") values ("item_geostatistics_4_28", "100000", "50000", "10")

insert into "全国热门景点" ("景点id", "日均接待游客数量", "日均外省游客数量", "热度排名") values ("item_geostatistics_4_30", "100000", "15000", "10")

insert into "全国热门景点" ("景点id", "日均接待游客数量", "日均外省游客数量", "热度排名") values ("item_geostatistics_4_27", "100000", "15000", "1")

insert into "全国热门景点" ("景点id", "日均接待游客数量", "日均外省游客数量", "热度排名") values ("item_geostatistics_4_30", "100000", "50000", "1")

insert into "热门出境游城市" ("城市", "所在国家", "国内游客数量", "排名") values ("曼谷", "泰国", "20000", "1")

insert into "热门出境游城市" ("城市", "所在国家", "国内游客数量", "排名") values ("首尔", "韩国", "100000", "10")

insert into "热门出境游城市" ("城市", "所在国家", "国内游客数量", "排名") values ("东京", "日本", "20000", "1")

insert into "热门出境游城市" ("城市", "所在国家", "国内游客数量", "排名") values ("大阪", "日本", "100000", "1")

insert into "热门出境游城市" ("城市", "所在国家", "国内游客数量", "排名") values ("吉隆坡", "马来西亚", "20000", "10")

