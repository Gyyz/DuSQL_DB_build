PRAGMA foreign_keys = ON;

CREATE TABLE "网红食品" (
"词条id" int,
"名称" text,
"品类数量" int,
"商家数量" int,
"出现年份" time,
primary key ("词条id")
);

CREATE TABLE "网红食品销售" (
"类型id" int,
"年份" time,
"销售额" int,
"购买人数" int,
foreign key("类型id") references "网红食品"("词条id")
);

CREATE TABLE "网红食品购买者" (
"类型id" int,
"年龄段" text,
"人数占比" int,
foreign key("类型id") references "网红食品"("词条id")
);

CREATE TABLE "网红食品分布城市" (
"类型id" int,
"省份" text,
"销售量占比" int,
"商家占比" int,
"安全事件关注度" int,
foreign key("类型id") references "网红食品"("词条id")
);

insert into "网红食品" ("词条id", "名称", "品类数量", "商家数量", "出现年份") values ("item_animal_food_1_1", "奶茶饮料", "1", "10", "2014年")

insert into "网红食品" ("词条id", "名称", "品类数量", "商家数量", "出现年份") values ("item_animal_food_1_2", " 休闲食品", "10", "100", "2018年")

insert into "网红食品" ("词条id", "名称", "品类数量", "商家数量", "出现年份") values ("item_animal_food_1_3", " 保健食品", "10", "10", "2018年")

insert into "网红食品" ("词条id", "名称", "品类数量", "商家数量", "出现年份") values ("item_animal_food_1_4", "方便速食", "10", "100", "2014年")

insert into "网红食品" ("词条id", "名称", "品类数量", "商家数量", "出现年份") values ("item_animal_food_1_5", " 代餐轻食", "1", "100", "2018年")

insert into "网红食品销售" ("类型id", "年份", "销售额", "购买人数") values ("item_animal_food_1_2", "2015", "100亿", "1000万")

insert into "网红食品销售" ("类型id", "年份", "销售额", "购买人数") values ("item_animal_food_1_5", "2018", "1000亿", "1亿")

insert into "网红食品销售" ("类型id", "年份", "销售额", "购买人数") values ("item_animal_food_1_1", "2018", "1000亿", "1亿")

insert into "网红食品销售" ("类型id", "年份", "销售额", "购买人数") values ("item_animal_food_1_4", "2018", "1000亿", "1亿")

insert into "网红食品销售" ("类型id", "年份", "销售额", "购买人数") values ("item_animal_food_1_3", "2015", "100亿", "1亿")

insert into "网红食品购买者" ("类型id", "年龄段", "人数占比") values ("item_animal_food_1_1", "60后", "0%")

insert into "网红食品购买者" ("类型id", "年龄段", "人数占比") values ("item_animal_food_1_3", "70后", "40%")

insert into "网红食品购买者" ("类型id", "年龄段", "人数占比") values ("item_animal_food_1_2", "80后", "40%")

insert into "网红食品购买者" ("类型id", "年龄段", "人数占比") values ("item_animal_food_1_5", "90后", "40%")

insert into "网红食品购买者" ("类型id", "年龄段", "人数占比") values ("item_animal_food_1_2", "95后", "40%")

insert into "网红食品分布城市" ("类型id", "省份", "销售量占比", "商家占比", "安全事件关注度") values ("item_animal_food_1_5", "江苏", "5%", "0", "2.5%")

insert into "网红食品分布城市" ("类型id", "省份", "销售量占比", "商家占比", "安全事件关注度") values ("item_animal_food_1_5", "广东", "30%", "40%", "14.6%")

insert into "网红食品分布城市" ("类型id", "省份", "销售量占比", "商家占比", "安全事件关注度") values ("item_animal_food_1_3", "四川", "5%", "0", "2.5%")

insert into "网红食品分布城市" ("类型id", "省份", "销售量占比", "商家占比", "安全事件关注度") values ("item_animal_food_1_3", "北京", "30%", "40%", "14.6%")

insert into "网红食品分布城市" ("类型id", "省份", "销售量占比", "商家占比", "安全事件关注度") values ("item_animal_food_1_3", "浙江", "5%", "0", "2.5%")

