PRAGMA foreign_keys = ON;

CREATE TABLE "商家" (
"词条id" int,
"名称" text,
"起送价格" int,
"送达用时" int,
"评分" int,
"月售单数" int,
primary key ("词条id")
);

CREATE TABLE "平台" (
"词条id" int,
"名称" text,
"入驻商家数量" int,
"市场占比" int,
primary key ("词条id")
);

CREATE TABLE "商家平台活动" (
"商家id" int,
"平台id" text,
"优惠活动" text,
"配送费" int,
foreign key("商家id") references "商家"("词条id"),
foreign key("平台id") references "平台"("词条id")
);

insert into "商家" ("词条id", "名称", "起送价格", "送达用时", "评分", "月售单数") values ("item_task_dialogue_3_16", "吉野家", "15元", "30分钟", "3.0", "10")

insert into "商家" ("词条id", "名称", "起送价格", "送达用时", "评分", "月售单数") values ("item_task_dialogue_3_17", "必胜客", "25元", "3小时", "4.9", "1400单")

insert into "商家" ("词条id", "名称", "起送价格", "送达用时", "评分", "月售单数") values ("item_task_dialogue_3_18", "张亮麻辣烫", "25元", "30分钟", "4.9", "1400单")

insert into "商家" ("词条id", "名称", "起送价格", "送达用时", "评分", "月售单数") values ("item_task_dialogue_3_19", "汉堡王", "25元", "30分钟", "4.9", "1400单")

insert into "商家" ("词条id", "名称", "起送价格", "送达用时", "评分", "月售单数") values ("item_task_dialogue_3_20", "德克士", "15元", "30分钟", "3.0", "1400单")

insert into "平台" ("词条id", "名称", "入驻商家数量", "市场占比") values ("item_task_dialogue_3_21", "美团", "100000", "10%")

insert into "平台" ("词条id", "名称", "入驻商家数量", "市场占比") values ("item_task_dialogue_3_22", "饿了吗", "500000", "40%")

insert into "平台" ("词条id", "名称", "入驻商家数量", "市场占比") values ("item_task_dialogue_3_23", "百度外卖", "100000", "40%")

insert into "平台" ("词条id", "名称", "入驻商家数量", "市场占比") values ("item_task_dialogue_3_24", "点我达", "100000", "40%")

insert into "平台" ("词条id", "名称", "入驻商家数量", "市场占比") values ("item_task_dialogue_3_25", "麦乐送", "100000", "10%")

insert into "商家平台活动" ("商家id", "平台id", "优惠活动", "配送费") values ("item_task_dialogue_3_20", "item_task_dialogue_3_21", "25减3", "0")

insert into "商家平台活动" ("商家id", "平台id", "优惠活动", "配送费") values ("item_task_dialogue_3_16", "item_task_dialogue_3_21", "30减8", "9元")

insert into "商家平台活动" ("商家id", "平台id", "优惠活动", "配送费") values ("item_task_dialogue_3_17", "item_task_dialogue_3_25", "新客减5", "9元")

insert into "商家平台活动" ("商家id", "平台id", "优惠活动", "配送费") values ("item_task_dialogue_3_16", "item_task_dialogue_3_25", "50减15", "9元")

insert into "商家平台活动" ("商家id", "平台id", "优惠活动", "配送费") values ("item_task_dialogue_3_19", "item_task_dialogue_3_24", "60减20", "9元")

