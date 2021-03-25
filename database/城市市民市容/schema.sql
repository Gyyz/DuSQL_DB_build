PRAGMA foreign_keys = ON;

CREATE TABLE "省份" (
"词条id" int,
"名称" text,
"南北区域" text,
"东西区域" text,
"5区域" text,
primary key ("词条id")
);

CREATE TABLE "平均身高和寿命" (
"省份id" int,
"性别" text,
"平均身高" int,
"平均寿命" int,
foreign key("省份id") references "省份"("词条id")
);

CREATE TABLE "各省美女比例" (
"省份id" int,
"评价者来自区域" text,
"美女比例" int,
"美女平均颜值分数" int,
foreign key("省份id") references "省份"("词条id")
);

CREATE TABLE "各省市容评分" (
"省份id" int,
"评价者来自区域" text,
"市容评分" int,
"市民素质评分" int,
foreign key("省份id") references "省份"("词条id")
);

CREATE TABLE "民风彪悍十大城市" (
"城市名称" text,
"所属省份id" int,
"排名" int,
foreign key("所属省份id") references "省份"("词条id")
);

insert into "省份" ("词条id", "名称", "南北区域", "东西区域", "5区域") values ("item_geostatistics_11_51", "黑龙江", "南方", "东部", "东北")

insert into "省份" ("词条id", "名称", "南北区域", "东西区域", "5区域") values ("item_geostatistics_11_52", "甘肃", "北方", "西部", "西北")

insert into "省份" ("词条id", "名称", "南北区域", "东西区域", "5区域") values ("item_geostatistics_11_53", "四川", "南方", "西部", "西南")

insert into "省份" ("词条id", "名称", "南北区域", "东西区域", "5区域") values ("item_geostatistics_11_54", "云南", "北方", "东部", "东南")

insert into "省份" ("词条id", "名称", "南北区域", "东西区域", "5区域") values ("item_geostatistics_11_55", "福建", "南方", "西部", "中部")

insert into "平均身高和寿命" ("省份id", "性别", "平均身高", "平均寿命") values ("item_geostatistics_11_54", "男", "165~173cm", "60~72")

insert into "平均身高和寿命" ("省份id", "性别", "平均身高", "平均寿命") values ("item_geostatistics_11_53", "女", "155~160cm", "65~80")

insert into "平均身高和寿命" ("省份id", "性别", "平均身高", "平均寿命") values ("item_geostatistics_11_55", "男", "165~173cm", "65~80")

insert into "平均身高和寿命" ("省份id", "性别", "平均身高", "平均寿命") values ("item_geostatistics_11_51", "男", "165~173cm", "60~72")

insert into "平均身高和寿命" ("省份id", "性别", "平均身高", "平均寿命") values ("item_geostatistics_11_54", "男", "165~173cm", "65~80")

insert into "各省美女比例" ("省份id", "评价者来自区域", "美女比例", "美女平均颜值分数") values ("item_geostatistics_11_54", "东北", "5%", "3")

insert into "各省美女比例" ("省份id", "评价者来自区域", "美女比例", "美女平均颜值分数") values ("item_geostatistics_11_52", "西北", "60%", "9.4")

insert into "各省美女比例" ("省份id", "评价者来自区域", "美女比例", "美女平均颜值分数") values ("item_geostatistics_11_51", "东南", "60%", "9.4")

insert into "各省美女比例" ("省份id", "评价者来自区域", "美女比例", "美女平均颜值分数") values ("item_geostatistics_11_55", "西南", "5%", "9.4")

insert into "各省美女比例" ("省份id", "评价者来自区域", "美女比例", "美女平均颜值分数") values ("item_geostatistics_11_51", "中部", "60%", "9.4")

insert into "各省市容评分" ("省份id", "评价者来自区域", "市容评分", "市民素质评分") values ("item_geostatistics_11_51", "东北", "3", "3")

insert into "各省市容评分" ("省份id", "评价者来自区域", "市容评分", "市民素质评分") values ("item_geostatistics_11_54", "西北", "9.4", "9.4")

insert into "各省市容评分" ("省份id", "评价者来自区域", "市容评分", "市民素质评分") values ("item_geostatistics_11_54", "东南", "3", "9.4")

insert into "各省市容评分" ("省份id", "评价者来自区域", "市容评分", "市民素质评分") values ("item_geostatistics_11_52", "西南", "9.4", "9.4")

insert into "各省市容评分" ("省份id", "评价者来自区域", "市容评分", "市民素质评分") values ("item_geostatistics_11_54", "中部", "9.4", "3")

insert into "民风彪悍十大城市" ("城市名称", "所属省份id", "排名") values ("潮汕", "item_geostatistics_11_51", "1")

insert into "民风彪悍十大城市" ("城市名称", "所属省份id", "排名") values ("唐山", "item_geostatistics_11_54", "10")

insert into "民风彪悍十大城市" ("城市名称", "所属省份id", "排名") values ("青岛", "item_geostatistics_11_51", "1")

insert into "民风彪悍十大城市" ("城市名称", "所属省份id", "排名") values ("重庆", "item_geostatistics_11_54", "10")

insert into "民风彪悍十大城市" ("城市名称", "所属省份id", "排名") values ("福清", "item_geostatistics_11_54", "10")

