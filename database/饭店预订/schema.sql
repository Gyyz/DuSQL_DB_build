PRAGMA foreign_keys = ON;

CREATE TABLE "饭店" (
"词条id" int,
"名称" text,
"地址" text,
"菜系" text,
"口味评分" int,
"环境评分" int,
"服务评分" int,
"人均价格" int,
"包房最低消费" int,
primary key ("词条id")
);

CREATE TABLE "特色菜" (
"饭店id" int,
"菜名" text,
"口味" text,
"月销售量" int,
"必点比例" int,
foreign key("饭店id") references "饭店"("词条id")
);

insert into "饭店" ("词条id", "名称", "地址", "菜系", "口味评分", "环境评分", "服务评分", "人均价格", "包房最低消费") values ("item_task_dialogue_6_36", "素虎净素餐厅", "西北旺路10号院", "川菜", "3.5", "3.5", "3.5", "50", "0")

insert into "饭店" ("词条id", "名称", "地址", "菜系", "口味评分", "环境评分", "服务评分", "人均价格", "包房最低消费") values ("item_task_dialogue_6_37", "十九号海鲜火锅", " 北京大兴区黄村镇滨河坊3号", "湘菜", "4.8", "4.8", "4.8", "300元", "1000元")

insert into "饭店" ("词条id", "名称", "地址", "菜系", "口味评分", "环境评分", "服务评分", "人均价格", "包房最低消费") values ("item_task_dialogue_6_38", "潮满味潮汕砂锅粥", "北京大兴区黄村镇滨河坊5号楼底商", "粤菜", "4.8", "3.5", "4.8", "300元", "1000元")

insert into "饭店" ("词条id", "名称", "地址", "菜系", "口味评分", "环境评分", "服务评分", "人均价格", "包房最低消费") values ("item_task_dialogue_6_39", "巫山碳烤全鱼", "北京大兴区兴丰大街126号", "鲁菜", "3.5", "3.5", "3.5", "300元", "1000元")

insert into "饭店" ("词条id", "名称", "地址", "菜系", "口味评分", "环境评分", "服务评分", "人均价格", "包房最低消费") values ("item_task_dialogue_6_40", "远古时代佳客来", "北京大兴区彩虹新城东门", "火锅", "3.5", "4.8", "3.5", "300元", "0")

insert into "特色菜" ("饭店id", "菜名", "口味", "月销售量", "必点比例") values ("item_task_dialogue_6_36", "宫保鸡丁", "麻辣", "1000", "80%")

insert into "特色菜" ("饭店id", "菜名", "口味", "月销售量", "必点比例") values ("item_task_dialogue_6_36", "蛋黄焗南瓜", "鲜咸", "2000", "95%")

insert into "特色菜" ("饭店id", "菜名", "口味", "月销售量", "必点比例") values ("item_task_dialogue_6_36", "水煮鱼", "酸甜", "2000", "80%")

insert into "特色菜" ("饭店id", "菜名", "口味", "月销售量", "必点比例") values ("item_task_dialogue_6_38", "麻辣兔头", "微辣", "2000", "95%")

insert into "特色菜" ("饭店id", "菜名", "口味", "月销售量", "必点比例") values ("item_task_dialogue_6_36", "拔丝苹果", "清甜", "1000", "95%")

