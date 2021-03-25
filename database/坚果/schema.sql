PRAGMA foreign_keys = ON;

CREATE TABLE "坚果" (
"词条id" int,
"名称" text,
"饱和脂肪含量" int,
"不饱和脂肪含量" int,
"每100克热量" int,
primary key ("词条id")
);

CREATE TABLE "每100克坚果营养成分" (
"坚果id" int,
"营养成分" text,
"含量" int,
foreign key("坚果id") references "坚果"("词条id")
);

CREATE TABLE "坚果产地" (
"坚果id" int,
"产地" text,
"市场占比" int,
foreign key("坚果id") references "坚果"("词条id")
);

CREATE TABLE "坚果摄入量" (
"坚果id" int,
"国家" text,
"人均摄入量" int,
"世界人均摄入量" int,
foreign key("坚果id") references "坚果"("词条id")
);

CREATE TABLE "坚果中国人均消费" (
"坚果id" int,
"消费次数" int,
"占比" int,
foreign key("坚果id") references "坚果"("词条id")
);

CREATE TABLE "坚果季节性营业收入" (
"坚果id" int,
"季节" text,
"营业收入" int,
"全年占比" int,
foreign key("坚果id") references "坚果"("词条id")
);

CREATE TABLE "坚果销售渠道" (
"坚果id" int,
"年份" time,
"线上销售收入" int,
"线下销售收入" int,
foreign key("坚果id") references "坚果"("词条id")
);

insert into "坚果" ("词条id", "名称", "饱和脂肪含量", "不饱和脂肪含量", "每100克热量") values ("item_animal_food_8_61", "核桃", "3克", "33克", "212千卡")

insert into "坚果" ("词条id", "名称", "饱和脂肪含量", "不饱和脂肪含量", "每100克热量") values ("item_animal_food_8_62", "板栗", "9克", "51克", "600千卡")

insert into "坚果" ("词条id", "名称", "饱和脂肪含量", "不饱和脂肪含量", "每100克热量") values ("item_animal_food_8_63", "松仁", "9克", "51克", "212千卡")

insert into "坚果" ("词条id", "名称", "饱和脂肪含量", "不饱和脂肪含量", "每100克热量") values ("item_animal_food_8_64", "花生", "3克", "33克", "600千卡")

insert into "坚果" ("词条id", "名称", "饱和脂肪含量", "不饱和脂肪含量", "每100克热量") values ("item_animal_food_8_65", "瓜子", "9克", "51克", "212千卡")

insert into "每100克坚果营养成分" ("坚果id", "营养成分", "含量") values ("item_animal_food_8_63", "钾", "5g")

insert into "每100克坚果营养成分" ("坚果id", "营养成分", "含量") values ("item_animal_food_8_64", " 钙", "30g")

insert into "每100克坚果营养成分" ("坚果id", "营养成分", "含量") values ("item_animal_food_8_62", " 镁", "30g")

insert into "每100克坚果营养成分" ("坚果id", "营养成分", "含量") values ("item_animal_food_8_63", " 铁", "30g")

insert into "每100克坚果营养成分" ("坚果id", "营养成分", "含量") values ("item_animal_food_8_65", " 锌", "5g")

insert into "坚果产地" ("坚果id", "产地", "市场占比") values ("item_animal_food_8_63", "西非", "2%")

insert into "坚果产地" ("坚果id", "产地", "市场占比") values ("item_animal_food_8_62", "印度", "44%")

insert into "坚果产地" ("坚果id", "产地", "市场占比") values ("item_animal_food_8_63", "东非", "2%")

insert into "坚果产地" ("坚果id", "产地", "市场占比") values ("item_animal_food_8_63", "越南", "44%")

insert into "坚果产地" ("坚果id", "产地", "市场占比") values ("item_animal_food_8_64", "巴西", "2%")

insert into "坚果摄入量" ("坚果id", "国家", "人均摄入量", "世界人均摄入量") values ("item_animal_food_8_65", "中国", "0.003千克", "0.01千克")

insert into "坚果摄入量" ("坚果id", "国家", "人均摄入量", "世界人均摄入量") values ("item_animal_food_8_63", "美国", "0.05千克", "0.09千克")

insert into "坚果摄入量" ("坚果id", "国家", "人均摄入量", "世界人均摄入量") values ("item_animal_food_8_62", "澳大利亚", "0.003千克", "0.09千克")

insert into "坚果摄入量" ("坚果id", "国家", "人均摄入量", "世界人均摄入量") values ("item_animal_food_8_61", "德国", "0.05千克", "0.01千克")

insert into "坚果摄入量" ("坚果id", "国家", "人均摄入量", "世界人均摄入量") values ("item_animal_food_8_61", "印度", "0.003千克", "0.09千克")

insert into "坚果中国人均消费" ("坚果id", "消费次数", "占比") values ("item_animal_food_8_63", "1", "65%-68%")

insert into "坚果中国人均消费" ("坚果id", "消费次数", "占比") values ("item_animal_food_8_62", " 2", " 10%~20%")

insert into "坚果中国人均消费" ("坚果id", "消费次数", "占比") values ("item_animal_food_8_65", " 3", " 4~5%")

insert into "坚果中国人均消费" ("坚果id", "消费次数", "占比") values ("item_animal_food_8_63", " 4", " 1~2%")

insert into "坚果中国人均消费" ("坚果id", "消费次数", "占比") values ("item_animal_food_8_61", " 5", " 0~1%")

insert into "坚果季节性营业收入" ("坚果id", "季节", "营业收入", "全年占比") values ("item_animal_food_8_62", "春夏", "10亿", "30%")

insert into "坚果季节性营业收入" ("坚果id", "季节", "营业收入", "全年占比") values ("item_animal_food_8_64", "秋冬", "3亿", "10%")

insert into "坚果季节性营业收入" ("坚果id", "季节", "营业收入", "全年占比") values ("item_animal_food_8_63", "春夏", "5亿", "15%")

insert into "坚果季节性营业收入" ("坚果id", "季节", "营业收入", "全年占比") values ("item_animal_food_8_61", "秋冬", "14亿", "45%")

insert into "坚果季节性营业收入" ("坚果id", "季节", "营业收入", "全年占比") values ("item_animal_food_8_63", "秋冬", "14亿", "15%")

insert into "坚果销售渠道" ("坚果id", "年份", "线上销售收入", "线下销售收入") values ("item_animal_food_8_62", "2014", "28", "2")

insert into "坚果销售渠道" ("坚果id", "年份", "线上销售收入", "线下销售收入") values ("item_animal_food_8_61", "2019年", "32亿", "5亿")

insert into "坚果销售渠道" ("坚果id", "年份", "线上销售收入", "线下销售收入") values ("item_animal_food_8_61", "2019年", "32亿", "2")

insert into "坚果销售渠道" ("坚果id", "年份", "线上销售收入", "线下销售收入") values ("item_animal_food_8_64", "2014", "28", "2")

insert into "坚果销售渠道" ("坚果id", "年份", "线上销售收入", "线下销售收入") values ("item_animal_food_8_61", "2019年", "32亿", "2")

