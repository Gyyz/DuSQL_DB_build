PRAGMA foreign_keys = ON;

CREATE TABLE "植物" (
"词条id" int,
"学名" text,
"花期" int,
"花期时长" int,
"果期" int,
primary key ("词条id")
);

CREATE TABLE "药用植物" (
"植物id" int,
"用途说明" text,
"毒性" text,
"种植方式" text,
primary key ("植物id"),
foreign key("植物id") references "植物"("词条id")
);

CREATE TABLE "植物分布城市" (
"植物id" int,
"城市" text,
"保护级别" text,
foreign key("植物id") references "植物"("词条id")
);

CREATE TABLE "食肉植物分布区域" (
"植物id" int,
"区域" text,
"种类数" int,
foreign key("植物id") references "植物"("词条id")
);

CREATE TABLE "植物繁殖" (
"植物id" int,
"方式" text,
foreign key("植物id") references "植物"("词条id")
);

insert into "植物" ("词条id", "学名", "花期", "花期时长", "果期") values ("item_animal_food_7_51", "郁金香", "4", "10", "6")

insert into "植物" ("词条id", "学名", "花期", "花期时长", "果期") values ("item_animal_food_7_52", "百合", "6月", "90天", "8月")

insert into "植物" ("词条id", "学名", "花期", "花期时长", "果期") values ("item_animal_food_7_53", "白藤", "6月", "90天", "8月")

insert into "植物" ("词条id", "学名", "花期", "花期时长", "果期") values ("item_animal_food_7_54", "凤梨", "6月", "10", "6")

insert into "植物" ("词条id", "学名", "花期", "花期时长", "果期") values ("item_animal_food_7_55", "茉莉花", "6月", "10", "6")

insert into "药用植物" ("植物id", "用途说明", "毒性", "种植方式") values ("item_animal_food_7_52", "用于目赤肿痛", "有毒", "野生")

insert into "药用植物" ("植物id", "用途说明", "毒性", "种植方式") values ("item_animal_food_7_54", "清肝泻火", "无毒", "人工种植")

insert into "药用植物" ("植物id", "用途说明", "毒性", "种植方式") values ("item_animal_food_7_51", "补气养胃", "无毒", "野生")

insert into "药用植物" ("植物id", "用途说明", "毒性", "种植方式") values ("item_animal_food_7_51", "用于急慢性胃炎", "无毒", "人工种植")

insert into "药用植物" ("植物id", "用途说明", "毒性", "种植方式") values ("item_animal_food_7_55", "净化空气", "无毒", "野生")

insert into "植物分布城市" ("植物id", "城市", "保护级别") values ("item_animal_food_7_54", "爪哇", "一级")

insert into "植物分布城市" ("植物id", "城市", "保护级别") values ("item_animal_food_7_52", "苏门答腊", "二级")

insert into "植物分布城市" ("植物id", "城市", "保护级别") values ("item_animal_food_7_51", "湖南", "无")

insert into "植物分布城市" ("植物id", "城市", "保护级别") values ("item_animal_food_7_51", "四川", "无")

insert into "植物分布城市" ("植物id", "城市", "保护级别") values ("item_animal_food_7_53", "江苏", "一级")

insert into "食肉植物分布区域" ("植物id", "区域", "种类数") values ("item_animal_food_7_52", "东南亚", "2")

insert into "食肉植物分布区域" ("植物id", "区域", "种类数") values ("item_animal_food_7_52", "澳大利亚", "130")

insert into "食肉植物分布区域" ("植物id", "区域", "种类数") values ("item_animal_food_7_53", "北美洲", "130")

insert into "食肉植物分布区域" ("植物id", "区域", "种类数") values ("item_animal_food_7_53", "美国南卡罗来纳州", "130")

insert into "食肉植物分布区域" ("植物id", "区域", "种类数") values ("item_animal_food_7_55", "东南亚", "2")

insert into "植物繁殖" ("植物id", "方式") values ("item_animal_food_7_53", "播种")

insert into "植物繁殖" ("植物id", "方式") values ("item_animal_food_7_51", "扦插")

insert into "植物繁殖" ("植物id", "方式") values ("item_animal_food_7_54", "压条")

insert into "植物繁殖" ("植物id", "方式") values ("item_animal_food_7_55", "嫁接")

insert into "植物繁殖" ("植物id", "方式") values ("item_animal_food_7_51", "分株")

