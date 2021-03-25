PRAGMA foreign_keys = ON;

CREATE TABLE "菜系" (
"词条id" int,
"名称" text,
"起源地区" text,
"起源时间" text,
"口味" text,
"是否是四大菜系" text,
"是否是八大菜系" text,
primary key ("词条id")
);

CREATE TABLE "菜系分布城市" (
"菜系id" int,
"城市" text,
"受欢迎程度" int,
"主要餐厅数量" int,
"分布密度" int,
"版本类型" text,
foreign key("菜系id") references "菜系"("词条id")
);

CREATE TABLE "菜品" (
"词条id" int,
"名称" text,
"起源地" text,
"版本数量" int,
"排名" int,
primary key ("词条id")
);

CREATE TABLE "菜品对应菜系" (
"菜品id" int,
"菜系id" int,
"口味" text,
foreign key("菜系id") references "菜系"("词条id"),
foreign key("菜品id") references "菜品"("词条id")
);

insert into "菜系" ("词条id", "名称", "起源地区", "起源时间", "口味", "是否是四大菜系", "是否是八大菜系") values ("item_animal_food_5_36", "鲁菜", "山东", "春秋", "鲜咸", "是", "是")

insert into "菜系" ("词条id", "名称", "起源地区", "起源时间", "口味", "是否是四大菜系", "是否是八大菜系") values ("item_animal_food_5_37", "川菜", "四川", "三国", "麻辣", "否", "否")

insert into "菜系" ("词条id", "名称", "起源地区", "起源时间", "口味", "是否是四大菜系", "是否是八大菜系") values ("item_animal_food_5_38", "粤菜", "广东", "明朝", "酸辣", "否", "是")

insert into "菜系" ("词条id", "名称", "起源地区", "起源时间", "口味", "是否是四大菜系", "是否是八大菜系") values ("item_animal_food_5_39", "苏菜", "江苏", "清朝", "清淡", "是", "否")

insert into "菜系" ("词条id", "名称", "起源地区", "起源时间", "口味", "是否是四大菜系", "是否是八大菜系") values ("item_animal_food_5_40", "浙菜", "浙江", "宋朝", "香甜", "是", "是")

insert into "菜系分布城市" ("菜系id", "城市", "受欢迎程度", "主要餐厅数量", "分布密度", "版本类型") values ("item_animal_food_5_37", "哈尔滨", "3", "10", "0.1", "专业版")

insert into "菜系分布城市" ("菜系id", "城市", "受欢迎程度", "主要餐厅数量", "分布密度", "版本类型") values ("item_animal_food_5_37", "成都", "9", "1000", "1.5", "改良版")

insert into "菜系分布城市" ("菜系id", "城市", "受欢迎程度", "主要餐厅数量", "分布密度", "版本类型") values ("item_animal_food_5_36", "重庆", "3", "1000", "0.1", "专业版")

insert into "菜系分布城市" ("菜系id", "城市", "受欢迎程度", "主要餐厅数量", "分布密度", "版本类型") values ("item_animal_food_5_39", "乌鲁木齐", "9", "10", "0.1", "专业版")

insert into "菜系分布城市" ("菜系id", "城市", "受欢迎程度", "主要餐厅数量", "分布密度", "版本类型") values ("item_animal_food_5_37", "太原", "3", "1000", "0.1", "改良版")

insert into "菜品" ("词条id", "名称", "起源地", "版本数量", "排名") values ("item_animal_food_5_41", "宫保鸡丁", "淮南", "1", "1")

insert into "菜品" ("词条id", "名称", "起源地", "版本数量", "排名") values ("item_animal_food_5_42", "一品豆腐", "曲阜", "5", "500")

insert into "菜品" ("词条id", "名称", "起源地", "版本数量", "排名") values ("item_animal_food_5_43", "  三丝鱼翅", "重庆", "5", "1")

insert into "菜品" ("词条id", "名称", "起源地", "版本数量", "排名") values ("item_animal_food_5_44", "白扒四宝", "成都", "5", "500")

insert into "菜品" ("词条id", "名称", "起源地", "版本数量", "排名") values ("item_animal_food_5_45", "糖醋黄河鲤鱼", "哈尔滨", "5", "1")

insert into "菜品对应菜系" ("菜品id", "菜系id", "口味") values ("item_animal_food_5_43", "item_animal_food_5_36", "鲜咸")

insert into "菜品对应菜系" ("菜品id", "菜系id", "口味") values ("item_animal_food_5_45", "item_animal_food_5_40", "麻辣")

insert into "菜品对应菜系" ("菜品id", "菜系id", "口味") values ("item_animal_food_5_45", "item_animal_food_5_40", "酸辣")

insert into "菜品对应菜系" ("菜品id", "菜系id", "口味") values ("item_animal_food_5_44", "item_animal_food_5_39", "清淡")

insert into "菜品对应菜系" ("菜品id", "菜系id", "口味") values ("item_animal_food_5_41", "item_animal_food_5_38", "香甜")

