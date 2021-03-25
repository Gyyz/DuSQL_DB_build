PRAGMA foreign_keys = ON;

CREATE TABLE "省份" (
"词条id" int,
"名称" text,
"下辖区数量" int,
"面积" int,
"人口" int,
"气候条件" text,
"省花" text,
"省树" text,
primary key ("词条id")
);

CREATE TABLE "城市" (
"词条id" int,
"名称" text,
"面积" int,
"人口" int,
"市花" text,
"所属省id" int,
primary key ("词条id"),
foreign key("所属省id") references "省份"("词条id")
);

CREATE TABLE "省生产总值" (
"年份" time,
"省份id" int,
"GDP" int,
"人均GDP" int,
foreign key("省份id") references "省份"("词条id")
);

CREATE TABLE "市生产总值" (
"年份" time,
"城市id" int,
"GDP" int,
"人均GDP" int,
foreign key("城市id") references "城市"("词条id")
);

insert into "省份" ("词条id", "名称", "下辖区数量", "面积", "人口", "气候条件", "省花", "省树") values ("item_geography.2_5_51", "北京市", "10", "3.15万平方千米", "1000万", "温带季风气候", "桂花", "杨树")

insert into "省份" ("词条id", "名称", "下辖区数量", "面积", "人口", "气候条件", "省花", "省树") values ("item_geography.2_5_52", "天津市", "12", "3.15万平方千米", "2000万", "温带季风气候", "菊花", "梧桐")

insert into "省份" ("词条id", "名称", "下辖区数量", "面积", "人口", "气候条件", "省花", "省树") values ("item_geography.2_5_53", "上海市", "13", "3.15万平方千米", "2000万", "温带季风气候", "梅花", "杏树")

insert into "省份" ("词条id", "名称", "下辖区数量", "面积", "人口", "气候条件", "省花", "省树") values ("item_geography.2_5_54", "重庆市", "14", "3.15万平方千米", "2000万", "温带季风气候", "牡丹", "桃树")

insert into "省份" ("词条id", "名称", "下辖区数量", "面积", "人口", "气候条件", "省花", "省树") values ("item_geography.2_5_55", "河北省", "15", "3.15万平方千米", "2000万", "温带季风气候", "玫瑰", "松树")

insert into "城市" ("词条id", "名称", "面积", "人口", "市花", "所属省id") values ("item_geography.2_5_56", "北京市", "3.15万平方千米", "1000万", "桂花", "item_geography.2_5_52")

insert into "城市" ("词条id", "名称", "面积", "人口", "市花", "所属省id") values ("item_geography.2_5_57", "天津市", "3.15万平方千米", "2000万", "菊花", "item_geography.2_5_51")

insert into "城市" ("词条id", "名称", "面积", "人口", "市花", "所属省id") values ("item_geography.2_5_58", "上海市", "3.15万平方千米", "2000万", "梅花", "item_geography.2_5_54")

insert into "城市" ("词条id", "名称", "面积", "人口", "市花", "所属省id") values ("item_geography.2_5_59", "重庆市", "3.15万平方千米", "2000万", "牡丹", "item_geography.2_5_53")

insert into "城市" ("词条id", "名称", "面积", "人口", "市花", "所属省id") values ("item_geography.2_5_60", "郑州市", "3.15万平方千米", "2000万", "玫瑰", "item_geography.2_5_51")

insert into "省生产总值" ("年份", "省份id", "GDP", "人均GDP") values ("2019", "item_geography.2_5_53", "10亿", "3000元")

insert into "省生产总值" ("年份", "省份id", "GDP", "人均GDP") values ("2010", "item_geography.2_5_51", "15亿", "4000元")

insert into "省生产总值" ("年份", "省份id", "GDP", "人均GDP") values ("2003", "item_geography.2_5_51", "15亿", "4000元")

insert into "省生产总值" ("年份", "省份id", "GDP", "人均GDP") values ("2015", "item_geography.2_5_54", "15亿", "4000元")

insert into "省生产总值" ("年份", "省份id", "GDP", "人均GDP") values ("2014", "item_geography.2_5_51", "15亿", "4000元")

insert into "市生产总值" ("年份", "城市id", "GDP", "人均GDP") values ("2019", "item_geography.2_5_59", "10亿", "3000元")

insert into "市生产总值" ("年份", "城市id", "GDP", "人均GDP") values ("2010", "item_geography.2_5_58", "15亿", "4000元")

insert into "市生产总值" ("年份", "城市id", "GDP", "人均GDP") values ("2003", "item_geography.2_5_59", "15亿", "4000元")

insert into "市生产总值" ("年份", "城市id", "GDP", "人均GDP") values ("2015", "item_geography.2_5_57", "15亿", "4000元")

insert into "市生产总值" ("年份", "城市id", "GDP", "人均GDP") values ("2014", "item_geography.2_5_60", "15亿", "4000元")

