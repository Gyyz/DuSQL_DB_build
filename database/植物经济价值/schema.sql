PRAGMA foreign_keys = ON;

CREATE TABLE "植物" (
"词条id" int,
"学名" text,
"观赏价值" binary,
"药用价值" binary,
"实用价值" binary,
primary key ("词条id")
);

CREATE TABLE "最贵的植物" (
"植物id" int,
"单株价值" int,
"培养时间" int,
"数量" int,
primary key ("植物id"),
foreign key("植物id") references "植物"("词条id")
);

CREATE TABLE "盆栽植物营收" (
"植物id" int,
"年份" time,
"种植面积" int,
"销售数量" int,
"销售金额" int,
"出口金额" int,
foreign key("植物id") references "植物"("词条id")
);

CREATE TABLE "中国沙漠" (
"词条id" text,
"地区" time,
"沙漠面积" int,
"沙化面积" int,
primary key ("词条id")
);

CREATE TABLE "沙漠植物" (
"植物id" int,
"沙漠id" int,
"种植面积" int,
foreign key("植物id") references "植物"("词条id"),
foreign key("沙漠id") references "中国沙漠"("词条id")
);

insert into "植物" ("词条id", "学名", "观赏价值", "药用价值", "实用价值") values ("item_animal_food_4_21", "风信子", "有", "有", "有")

insert into "植物" ("词条id", "学名", "观赏价值", "药用价值", "实用价值") values ("item_animal_food_4_22", "桂花", "无", "无", "无")

insert into "植物" ("词条id", "学名", "观赏价值", "药用价值", "实用价值") values ("item_animal_food_4_23", "杜鹃花", "无", "无", "无")

insert into "植物" ("词条id", "学名", "观赏价值", "药用价值", "实用价值") values ("item_animal_food_4_24", "龙舌兰", "有", "有", "无")

insert into "植物" ("词条id", "学名", "观赏价值", "药用价值", "实用价值") values ("item_animal_food_4_25", "合欢", "无", "无", "无")

insert into "最贵的植物" ("植物id", "单株价值", "培养时间", "数量") values ("item_animal_food_4_24", "120万", "8年", "100")

insert into "最贵的植物" ("植物id", "单株价值", "培养时间", "数量") values ("item_animal_food_4_24", "62万", "5年", "200")

insert into "最贵的植物" ("植物id", "单株价值", "培养时间", "数量") values ("item_animal_food_4_22", "35000", "15年", "10000")

insert into "最贵的植物" ("植物id", "单株价值", "培养时间", "数量") values ("item_animal_food_4_22", "3万", "1年", "100000")

insert into "最贵的植物" ("植物id", "单株价值", "培养时间", "数量") values ("item_animal_food_4_21", "10000", "1年", "100000")

insert into "盆栽植物营收" ("植物id", "年份", "种植面积", "销售数量", "销售金额", "出口金额") values ("item_animal_food_4_25", "2014", "7.4亿公顷", "43亿盆", "180亿", "0.75亿")

insert into "盆栽植物营收" ("植物id", "年份", "种植面积", "销售数量", "销售金额", "出口金额") values ("item_animal_food_4_22", "2018", "10.6亿公顷", "71亿盆", "345亿", "1.33亿")

insert into "盆栽植物营收" ("植物id", "年份", "种植面积", "销售数量", "销售金额", "出口金额") values ("item_animal_food_4_23", "2014", "7.4亿公顷", "71亿盆", "180亿", "1.33亿")

insert into "盆栽植物营收" ("植物id", "年份", "种植面积", "销售数量", "销售金额", "出口金额") values ("item_animal_food_4_23", "2018", "7.4亿公顷", "71亿盆", "345亿", "0.75亿")

insert into "盆栽植物营收" ("植物id", "年份", "种植面积", "销售数量", "销售金额", "出口金额") values ("item_animal_food_4_25", "2018", "7.4亿公顷", "43亿盆", "345亿", "0.75亿")

insert into "中国沙漠" ("词条id", "地区", "沙漠面积", "沙化面积") values ("item_animal_food_4_31", "塔克拉玛干沙漠", "50万平方公里", "35.73万平方公里")

insert into "中国沙漠" ("词条id", "地区", "沙漠面积", "沙化面积") values ("item_animal_food_4_32", " 古尔班通古特沙漠", "2万平方公里", "0.91万平方公里")

insert into "中国沙漠" ("词条id", "地区", "沙漠面积", "沙化面积") values ("item_animal_food_4_33", "巴丹吉林沙漠", "50万平方公里", "35.73万平方公里")

insert into "中国沙漠" ("词条id", "地区", "沙漠面积", "沙化面积") values ("item_animal_food_4_34", "腾格里沙漠", "2万平方公里", "35.73万平方公里")

insert into "中国沙漠" ("词条id", "地区", "沙漠面积", "沙化面积") values ("item_animal_food_4_35", "库木塔格沙漠", "2万平方公里", "35.73万平方公里")

insert into "沙漠植物" ("植物id", "沙漠id", "种植面积") values ("item_animal_food_4_21", "item_animal_food_4_32", "1万平方公里")

insert into "沙漠植物" ("植物id", "沙漠id", "种植面积") values ("item_animal_food_4_22", "item_animal_food_4_35", "10万平方公里")

insert into "沙漠植物" ("植物id", "沙漠id", "种植面积") values ("item_animal_food_4_21", "item_animal_food_4_33", "10万平方公里")

insert into "沙漠植物" ("植物id", "沙漠id", "种植面积") values ("item_animal_food_4_22", "item_animal_food_4_33", "10万平方公里")

insert into "沙漠植物" ("植物id", "沙漠id", "种植面积") values ("item_animal_food_4_21", "item_animal_food_4_34", "10万平方公里")

