PRAGMA foreign_keys = ON;

CREATE TABLE "动物" (
"词条id" int,
"学名" text,
"属性" text,
primary key ("词条id")
);

CREATE TABLE "最聪明的动物" (
"动物id" int,
"排名" int,
"理由" text,
primary key ("动物id"),
foreign key("动物id") references "动物"("词条id")
);

CREATE TABLE "最毒的动物" (
"动物id" int,
"称号" text,
"毒性排名" int,
"攻击力排名" int,
"中毒后死亡时间" int,
primary key ("动物id"),
foreign key("动物id") references "动物"("词条id")
);

CREATE TABLE "最大的动物" (
"动物id" int,
"排名" int,
"体重" int,
"说明" text,
primary key ("动物id"),
foreign key("动物id") references "动物"("词条id")
);

CREATE TABLE "飞得最高的动物" (
"动物id" int,
"排名" int,
"飞行高度" int,
primary key ("动物id"),
foreign key("动物id") references "动物"("词条id")
);

CREATE TABLE "速度最快的动物" (
"动物id" int,
"排名" int,
"速度" int,
primary key ("动物id"),
foreign key("动物id") references "动物"("词条id")
);

insert into "动物" ("词条id", "学名", "属性") values ("item_animal_food_10_81", "大象", "哺乳动物")

insert into "动物" ("词条id", "学名", "属性") values ("item_animal_food_10_82", "猴子", "爬行动物")

insert into "动物" ("词条id", "学名", "属性") values ("item_animal_food_10_83", "蛇", "飞行动物")

insert into "动物" ("词条id", "学名", "属性") values ("item_animal_food_10_84", "青蛙", "海洋动物")

insert into "动物" ("词条id", "学名", "属性") values ("item_animal_food_10_85", "蓝鲸", "爬行动物")

insert into "最聪明的动物" ("动物id", "排名", "理由") values ("item_animal_food_10_83", "1", "人类近亲")

insert into "最聪明的动物" ("动物id", "排名", "理由") values ("item_animal_food_10_81", "10", "有创造力")

insert into "最聪明的动物" ("动物id", "排名", "理由") values ("item_animal_food_10_85", "1", "拥有自我意识")

insert into "最聪明的动物" ("动物id", "排名", "理由") values ("item_animal_food_10_81", "1", "心灵手巧")

insert into "最聪明的动物" ("动物id", "排名", "理由") values ("item_animal_food_10_84", "10", "骗术高手")

insert into "最毒的动物" ("动物id", "称号", "毒性排名", "攻击力排名", "中毒后死亡时间") values ("item_animal_food_10_82", "夺命仙子", "1", "1", "10分钟")

insert into "最毒的动物" ("动物id", "称号", "毒性排名", "攻击力排名", "中毒后死亡时间") values ("item_animal_food_10_85", "海里瘟神", "10", "10", "1小时")

insert into "最毒的动物" ("动物id", "称号", "毒性排名", "攻击力排名", "中毒后死亡时间") values ("item_animal_food_10_81", "毒你没商量", "10", "10", "1小时")

insert into "最毒的动物" ("动物id", "称号", "毒性排名", "攻击力排名", "中毒后死亡时间") values ("item_animal_food_10_85", "海底忍者", "1", "10", "10分钟")

insert into "最毒的动物" ("动物id", "称号", "毒性排名", "攻击力排名", "中毒后死亡时间") values ("item_animal_food_10_82", "沙漠毒尾", "10", "10", "1小时")

insert into "最大的动物" ("动物id", "排名", "体重", "说明") values ("item_animal_food_10_83", "1", "170吨", "最大的动物")

insert into "最大的动物" ("动物id", "排名", "体重", "说明") values ("item_animal_food_10_82", "2", "8吨", "最大的陆地动物")

insert into "最大的动物" ("动物id", "排名", "体重", "说明") values ("item_animal_food_10_85", "5", "800公斤", "最大的陆地食肉动物")

insert into "最大的动物" ("动物id", "排名", "体重", "说明") values ("item_animal_food_10_83", "8", "770千克", "最大的爬虫类")

insert into "最大的动物" ("动物id", "排名", "体重", "说明") values ("item_animal_food_10_85", "10", "500千克", "最高的陆地动物")

insert into "飞得最高的动物" ("动物id", "排名", "飞行高度") values ("item_animal_food_10_82", "1", "4600米")

insert into "飞得最高的动物" ("动物id", "排名", "飞行高度") values ("item_animal_food_10_82", "10", "4900米")

insert into "飞得最高的动物" ("动物id", "排名", "飞行高度") values ("item_animal_food_10_83", "1", "11000米")

insert into "飞得最高的动物" ("动物id", "排名", "飞行高度") values ("item_animal_food_10_84", "1", "10000米")

insert into "飞得最高的动物" ("动物id", "排名", "飞行高度") values ("item_animal_food_10_84", "1", "8800米")

insert into "速度最快的动物" ("动物id", "排名", "速度") values ("item_animal_food_10_84", "1", "45英里/小时")

insert into "速度最快的动物" ("动物id", "排名", "速度") values ("item_animal_food_10_82", "10", "200英里/小时")

insert into "速度最快的动物" ("动物id", "排名", "速度") values ("item_animal_food_10_82", "10", "200英里/小时")

insert into "速度最快的动物" ("动物id", "排名", "速度") values ("item_animal_food_10_81", "1", "45英里/小时")

insert into "速度最快的动物" ("动物id", "排名", "速度") values ("item_animal_food_10_82", "10", "45英里/小时")

