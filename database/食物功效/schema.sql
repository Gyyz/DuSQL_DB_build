PRAGMA foreign_keys = ON;

CREATE TABLE "食物" (
"词条id" int,
"名称" text,
"功效" text,
primary key ("词条id")
);

CREATE TABLE "相克食物" (
"食物id" int,
"相克食物id" int,
"原因" text,
"是否致命" binary,
foreign key("相克食物id") references "食物"("词条id"),
foreign key("食物id") references "食物"("词条id")
);

CREATE TABLE "互补食物" (
"食物id" int,
"互补食物id" int,
"同食益处" text,
"推荐做法" text,
foreign key("食物id") references "食物"("词条id"),
foreign key("互补食物id") references "食物"("词条id")
);

insert into "食物" ("词条id", "名称", "功效") values ("item_animal_food_3_16", "丝瓜", "泻火解毒")

insert into "食物" ("词条id", "名称", "功效") values ("item_animal_food_3_17", "苦瓜", "清热生津")

insert into "食物" ("词条id", "名称", "功效") values ("item_animal_food_3_18", "番茄", "益肾补肺")

insert into "食物" ("词条id", "名称", "功效") values ("item_animal_food_3_19", "辣椒", "清热化痰")

insert into "食物" ("词条id", "名称", "功效") values ("item_animal_food_3_20", "山药", "发热驱寒")

insert into "相克食物" ("食物id", "相克食物id", "原因", "是否致命") values ("item_animal_food_3_16", "item_animal_food_3_17", "导致便秘", "是")

insert into "相克食物" ("食物id", "相克食物id", "原因", "是否致命") values ("item_animal_food_3_17", "item_animal_food_3_20", "导致气滞", "否")

insert into "相克食物" ("食物id", "相克食物id", "原因", "是否致命") values ("item_animal_food_3_19", "item_animal_food_3_20", "导致腹胀", "否")

insert into "相克食物" ("食物id", "相克食物id", "原因", "是否致命") values ("item_animal_food_3_16", "item_animal_food_3_20", "同属凉性易伤肠胃", "否")

insert into "相克食物" ("食物id", "相克食物id", "原因", "是否致命") values ("item_animal_food_3_18", "item_animal_food_3_18", "降低营养元素吸收", "否")

insert into "互补食物" ("食物id", "互补食物id", "同食益处", "推荐做法") values ("item_animal_food_3_17", "item_animal_food_3_17", "预防多种骨病", "煲汤")

insert into "互补食物" ("食物id", "互补食物id", "同食益处", "推荐做法") values ("item_animal_food_3_18", "item_animal_food_3_17", "防止贫血", "炒菜")

insert into "互补食物" ("食物id", "互补食物id", "同食益处", "推荐做法") values ("item_animal_food_3_20", "item_animal_food_3_17", "滋养脾胃", "炖菜")

insert into "互补食物" ("食物id", "互补食物id", "同食益处", "推荐做法") values ("item_animal_food_3_16", "item_animal_food_3_19", "补血养身", "炖菜")

insert into "互补食物" ("食物id", "互补食物id", "同食益处", "推荐做法") values ("item_animal_food_3_18", "item_animal_food_3_19", "补阴养肺", "烧菜")

