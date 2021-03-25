PRAGMA foreign_keys = ON;

CREATE TABLE "百城" (
"词条id" int,
"城市" text,
"排名" int,
"人口吸引力指数" int,
"同比排名变化" int,
"环比排名变化" int,
primary key ("词条id")
);

CREATE TABLE "人口来源城市" (
"城市id" text,
"人口来源省份" text,
"流入人口占比" int,
"排名" int,
foreign key("城市id") references "百城"("词条id")
);

CREATE TABLE "人口去向城市" (
"城市id" text,
"人口去向省份" text,
"流出人口占比" int,
"排名" int,
foreign key("城市id") references "百城"("词条id")
);

CREATE TABLE "流动人口年龄" (
"年份" time,
"年龄段" int,
"占比" int
);

CREATE TABLE "流动人口学历" (
"年份" time,
"学历" text,
"占比" int
);

CREATE TABLE "城市酒吧活力" (
"城市id" text,
"酒吧数量" int,
"排名" int,
"周末客流量" int,
"节假日客流量" int,
"平日客流量" int,
primary key ("城市id"),
foreign key("城市id") references "百城"("词条id")
);

CREATE TABLE "酒吧顾客年龄" (
"顾客年龄段" int,
"占比" int
);

CREATE TABLE "城市美食" (
"城市id" text,
"美食名称" text,
"搜索指数" int,
"关注排名" int,
foreign key("城市id") references "百城"("词条id")
);

CREATE TABLE "城市文化" (
"城市id" int,
"文化名称" text,
"关注热度" int,
"关注排名" int,
foreign key("城市id") references "百城"("词条id")
);

insert into "百城" ("词条id", "城市", "排名", "人口吸引力指数", "同比排名变化", "环比排名变化") values ("item_geostatistics_16_71", "北京", "1", "4.399", "-1", "-3")

insert into "百城" ("词条id", "城市", "排名", "人口吸引力指数", "同比排名变化", "环比排名变化") values ("item_geostatistics_16_72", "广州", "100", "8.521", "+3", "+2")

insert into "百城" ("词条id", "城市", "排名", "人口吸引力指数", "同比排名变化", "环比排名变化") values ("item_geostatistics_16_73", "深圳", "100", "8.521", "-1", "-3")

insert into "百城" ("词条id", "城市", "排名", "人口吸引力指数", "同比排名变化", "环比排名变化") values ("item_geostatistics_16_74", "上海", "1", "4.399", "-1", "-3")

insert into "百城" ("词条id", "城市", "排名", "人口吸引力指数", "同比排名变化", "环比排名变化") values ("item_geostatistics_16_75", "重庆", "1", "4.399", "+3", "+2")

insert into "人口来源城市" ("城市id", "人口来源省份", "流入人口占比", "排名") values ("item_geostatistics_16_75", "湖南省", "6.42%", "1")

insert into "人口来源城市" ("城市id", "人口来源省份", "流入人口占比", "排名") values ("item_geostatistics_16_72", "广东省", "33.54%", "5")

insert into "人口来源城市" ("城市id", "人口来源省份", "流入人口占比", "排名") values ("item_geostatistics_16_74", "河南省", "6.42%", "5")

insert into "人口来源城市" ("城市id", "人口来源省份", "流入人口占比", "排名") values ("item_geostatistics_16_73", "贵州省", "6.42%", "5")

insert into "人口来源城市" ("城市id", "人口来源省份", "流入人口占比", "排名") values ("item_geostatistics_16_71", "四川省", "6.42%", "5")

insert into "人口去向城市" ("城市id", "人口去向省份", "流出人口占比", "排名") values ("item_geostatistics_16_74", "湖南省", "6.42%", "1")

insert into "人口去向城市" ("城市id", "人口去向省份", "流出人口占比", "排名") values ("item_geostatistics_16_72", "广东省", "33.54%", "5")

insert into "人口去向城市" ("城市id", "人口去向省份", "流出人口占比", "排名") values ("item_geostatistics_16_74", "河南省", "6.42%", "1")

insert into "人口去向城市" ("城市id", "人口去向省份", "流出人口占比", "排名") values ("item_geostatistics_16_72", "贵州省", "6.42%", "5")

insert into "人口去向城市" ("城市id", "人口去向省份", "流出人口占比", "排名") values ("item_geostatistics_16_75", "四川省", "6.42%", "5")

insert into "流动人口年龄" ("年份", "年龄段", "占比") values ("2016", "0-18", "4.06~5.24%")

insert into "流动人口年龄" ("年份", "年龄段", "占比") values ("2018", "18-24", "38.67~43.74%")

insert into "流动人口年龄" ("年份", "年龄段", "占比") values ("2018", "25-34", "28.06~31.11%")

insert into "流动人口年龄" ("年份", "年龄段", "占比") values ("2016", "35-44", "16.7~17.6%")

insert into "流动人口年龄" ("年份", "年龄段", "占比") values ("2018", "45-54", "6.3~8.9%")

insert into "流动人口学历" ("年份", "学历", "占比") values ("2016", "高中", "67.3~70.4%")

insert into "流动人口学历" ("年份", "学历", "占比") values ("2018", "大专", "19.6~21.8%")

insert into "流动人口学历" ("年份", "学历", "占比") values ("2018", "本科及以上", "9.5~11.2%")

insert into "流动人口学历" ("年份", "学历", "占比") values ("2016", "高中", "67.3~70.4%")

insert into "流动人口学历" ("年份", "学历", "占比") values ("2018", "高中", "67.3~70.4%")

insert into "城市酒吧活力" ("城市id", "酒吧数量", "排名", "周末客流量", "节假日客流量", "平日客流量") values ("item_geostatistics_16_74", "100", "1", "1000", "3000", "200")

insert into "城市酒吧活力" ("城市id", "酒吧数量", "排名", "周末客流量", "节假日客流量", "平日客流量") values ("item_geostatistics_16_75", "500", "10", "2000", "5000", "500")

insert into "城市酒吧活力" ("城市id", "酒吧数量", "排名", "周末客流量", "节假日客流量", "平日客流量") values ("item_geostatistics_16_71", "100", "1", "2000", "5000", "500")

insert into "城市酒吧活力" ("城市id", "酒吧数量", "排名", "周末客流量", "节假日客流量", "平日客流量") values ("item_geostatistics_16_73", "100", "10", "2000", "3000", "500")

insert into "城市酒吧活力" ("城市id", "酒吧数量", "排名", "周末客流量", "节假日客流量", "平日客流量") values ("item_geostatistics_16_72", "500", "10", "2000", "5000", "500")

insert into "酒吧顾客年龄" ("顾客年龄段", "占比") values ("0-18", "3.13%")

insert into "酒吧顾客年龄" ("顾客年龄段", "占比") values ("18-24", "56.68%")

insert into "酒吧顾客年龄" ("顾客年龄段", "占比") values ("25-34", "27.27%")

insert into "酒吧顾客年龄" ("顾客年龄段", "占比") values ("35-44", "10.45%")

insert into "酒吧顾客年龄" ("顾客年龄段", "占比") values ("45-54", "2.31%")

insert into "城市美食" ("城市id", "美食名称", "搜索指数", "关注排名") values ("item_geostatistics_16_71", "东坡肉", "10000", "1")

insert into "城市美食" ("城市id", "美食名称", "搜索指数", "关注排名") values ("item_geostatistics_16_72", "烤鸭", "100000", "10")

insert into "城市美食" ("城市id", "美食名称", "搜索指数", "关注排名") values ("item_geostatistics_16_72", "火锅", "10000", "10")

insert into "城市美食" ("城市id", "美食名称", "搜索指数", "关注排名") values ("item_geostatistics_16_75", "小笼包", "100000", "10")

insert into "城市美食" ("城市id", "美食名称", "搜索指数", "关注排名") values ("item_geostatistics_16_71", "笋干老鸭汤", "100000", "1")

insert into "城市文化" ("城市id", "文化名称", "关注热度", "关注排名") values ("item_geostatistics_16_71", "白蛇传", "5.0", "1")

insert into "城市文化" ("城市id", "文化名称", "关注热度", "关注排名") values ("item_geostatistics_16_74", "五芳斋", "9.5", "10")

insert into "城市文化" ("城市id", "文化名称", "关注热度", "关注排名") values ("item_geostatistics_16_72", "京剧", "5.0", "10")

insert into "城市文化" ("城市id", "文化名称", "关注热度", "关注排名") values ("item_geostatistics_16_74", "变脸", "9.5", "1")

insert into "城市文化" ("城市id", "文化名称", "关注热度", "关注排名") values ("item_geostatistics_16_75", "皮影戏", "5.0", "10")

