PRAGMA foreign_keys = ON;

CREATE TABLE "动物" (
"词条id" int,
"中文学名" text,
"食性" text,
"是否是人类朋友" binary,
"理由" text,
primary key ("词条id")
);

CREATE TABLE "动物的天敌" (
"动物id" int,
"天敌id" int,
"克星原因" text,
foreign key("动物id") references "动物"("词条id"),
foreign key("天敌id") references "动物"("词条id")
);

CREATE TABLE "动物朋友" (
"动物id" int,
"朋友id" int,
foreign key("动物id") references "动物"("词条id"),
foreign key("朋友id") references "动物"("词条id")
);

insert into "动物" ("词条id", "中文学名", "食性", "是否是人类朋友", "理由") values ("item_animal_food_6_46", "狗", "食肉", "是", "人类忠实的朋友")

insert into "动物" ("词条id", "中文学名", "食性", "是否是人类朋友", "理由") values ("item_animal_food_6_47", "牛", "食草", "否", "帮助人类生产")

insert into "动物" ("词条id", "中文学名", "食性", "是否是人类朋友", "理由") values ("item_animal_food_6_48", "蜻蜓", "杂食性", "是", "捕食对人类有害的昆虫")

insert into "动物" ("词条id", "中文学名", "食性", "是否是人类朋友", "理由") values ("item_animal_food_6_49", "青蛙", "食草", "否", "人类忠实的朋友")

insert into "动物" ("词条id", "中文学名", "食性", "是否是人类朋友", "理由") values ("item_animal_food_6_50", "燕子", "食草", "否", "捕食对人类有害的昆虫")

insert into "动物的天敌" ("动物id", "天敌id", "克星原因") values ("item_animal_food_6_46", "item_animal_food_6_48", "怕其叮咬")

insert into "动物的天敌" ("动物id", "天敌id", "克星原因") values ("item_animal_food_6_46", "item_animal_food_6_50", "被吃")

insert into "动物的天敌" ("动物id", "天敌id", "克星原因") values ("item_animal_food_6_49", "item_animal_food_6_46", "被吃")

insert into "动物的天敌" ("动物id", "天敌id", "克星原因") values ("item_animal_food_6_47", "item_animal_food_6_46", "被吃")

insert into "动物的天敌" ("动物id", "天敌id", "克星原因") values ("item_animal_food_6_46", "item_animal_food_6_47", "被吃")

insert into "动物朋友" ("动物id", "朋友id") values ("item_animal_food_6_46", "item_animal_food_6_46")

insert into "动物朋友" ("动物id", "朋友id") values ("item_animal_food_6_47", "item_animal_food_6_50")

insert into "动物朋友" ("动物id", "朋友id") values ("item_animal_food_6_49", "item_animal_food_6_48")

insert into "动物朋友" ("动物id", "朋友id") values ("item_animal_food_6_50", "item_animal_food_6_48")

insert into "动物朋友" ("动物id", "朋友id") values ("item_animal_food_6_48", "item_animal_food_6_46")

