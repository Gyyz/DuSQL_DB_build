PRAGMA foreign_keys = ON;

CREATE TABLE "水果" (
"词条id" int,
"名称" text,
"特性" text,
"适合季节" text,
"每100克热量" int,
"每100克水分" int,
primary key ("词条id")
);

CREATE TABLE "省份" (
"词条id" int,
"名称" text,
"气候" text,
"所属区域" text,
primary key ("词条id")
);

CREATE TABLE "水果产地" (
"水果id" int,
"省份id" int,
"是否特产" binary,
"年平均产量" int,
"销售形式" text,
foreign key("水果id") references "水果"("词条id"),
foreign key("省份id") references "省份"("词条id")
);

CREATE TABLE "水果销售城市" (
"水果id" int,
"原产省份id" int,
"销往省份id" int,
"年销售量" int,
foreign key("原产省份id") references "省份"("词条id"),
foreign key("销往省份id") references "省份"("词条id"),
foreign key("水果id") references "水果"("词条id")
);

insert into "水果" ("词条id", "名称", "特性", "适合季节", "每100克热量", "每100克水分") values ("item_animal_food_2_6", "香蕉", "凉性", "春季", "23千卡", "50克")

insert into "水果" ("词条id", "名称", "特性", "适合季节", "每100克热量", "每100克水分") values ("item_animal_food_2_7", "西瓜", "热性", "夏季", "241千卡", "93克")

insert into "水果" ("词条id", "名称", "特性", "适合季节", "每100克热量", "每100克水分") values ("item_animal_food_2_8", "柚子", "温性", "秋季", "241千卡", "50克")

insert into "水果" ("词条id", "名称", "特性", "适合季节", "每100克热量", "每100克水分") values ("item_animal_food_2_9", "猕猴桃", "凉性", "冬季", "241千卡", "93克")

insert into "水果" ("词条id", "名称", "特性", "适合季节", "每100克热量", "每100克水分") values ("item_animal_food_2_10", "葡萄", "温性", "秋季", "241千卡", "50克")

insert into "省份" ("词条id", "名称", "气候", "所属区域") values ("item_animal_food_2_11", "海南", "热带季风", "华东")

insert into "省份" ("词条id", "名称", "气候", "所属区域") values ("item_animal_food_2_12", "广东", "亚热带季风", "华南")

insert into "省份" ("词条id", "名称", "气候", "所属区域") values ("item_animal_food_2_13", "云南", "温带季风", "华中")

insert into "省份" ("词条id", "名称", "气候", "所属区域") values ("item_animal_food_2_14", "湖北", "高原山地", "华北")

insert into "省份" ("词条id", "名称", "气候", "所属区域") values ("item_animal_food_2_15", "新疆", "温带大陆性", "西北")

insert into "水果产地" ("水果id", "省份id", "是否特产", "年平均产量", "销售形式") values ("item_animal_food_2_10", "item_animal_food_2_12", "是", "1000万公斤", "内销")

insert into "水果产地" ("水果id", "省份id", "是否特产", "年平均产量", "销售形式") values ("item_animal_food_2_8", "item_animal_food_2_12", "否", "1亿公斤", "外销")

insert into "水果产地" ("水果id", "省份id", "是否特产", "年平均产量", "销售形式") values ("item_animal_food_2_6", "item_animal_food_2_15", "否", "1亿公斤", "内销")

insert into "水果产地" ("水果id", "省份id", "是否特产", "年平均产量", "销售形式") values ("item_animal_food_2_10", "item_animal_food_2_15", "否", "1亿公斤", "内销")

insert into "水果产地" ("水果id", "省份id", "是否特产", "年平均产量", "销售形式") values ("item_animal_food_2_6", "item_animal_food_2_11", "是", "1亿公斤", "内销")

insert into "水果销售城市" ("水果id", "原产省份id", "销往省份id", "年销售量") values ("item_animal_food_2_10", "item_animal_food_2_13", "item_animal_food_2_15", "100万")

insert into "水果销售城市" ("水果id", "原产省份id", "销往省份id", "年销售量") values ("item_animal_food_2_6", "item_animal_food_2_14", "item_animal_food_2_15", "2000万")

insert into "水果销售城市" ("水果id", "原产省份id", "销往省份id", "年销售量") values ("item_animal_food_2_10", "item_animal_food_2_12", "item_animal_food_2_13", "100万")

insert into "水果销售城市" ("水果id", "原产省份id", "销往省份id", "年销售量") values ("item_animal_food_2_10", "item_animal_food_2_13", "item_animal_food_2_13", "100万")

insert into "水果销售城市" ("水果id", "原产省份id", "销往省份id", "年销售量") values ("item_animal_food_2_9", "item_animal_food_2_12", "item_animal_food_2_12", "2000万")

