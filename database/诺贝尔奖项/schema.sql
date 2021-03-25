PRAGMA foreign_keys = ON;

CREATE TABLE "诺贝尔奖项" (
"词条id" int,
"名称" text,
"领域" text,
"第一次颁奖时间" time,
"获奖者最大年龄" int,
"获奖者最小年龄" int,
"获奖者平均年龄" int,
primary key ("词条id")
);

CREATE TABLE "高校" (
"词条id" int,
"名称" text,
"所属国家" text,
"世界排名" int,
"独立科研机构数量" int,
"重点学科数量" int,
primary key ("词条id")
);

CREATE TABLE "高校获奖名单" (
"高校id" int,
"奖项id" int,
"人数" int,
"排名" int,
foreign key("高校id") references "高校"("词条id"),
foreign key("奖项id") references "诺贝尔奖项"("词条id")
);

CREATE TABLE "各国获奖名单" (
"国家" int,
"奖项id" int,
"人数" int,
foreign key("奖项id") references "诺贝尔奖项"("词条id")
);

CREATE TABLE "科学家" (
"词条id" int,
"姓名" text,
"性别" text,
"国籍" text,
"出生日期" time,
"职业" text,
primary key ("词条id")
);

CREATE TABLE "毕业院校" (
"科学家id" int,
"高校id" int,
"获得学位" text,
foreign key("科学家id") references "科学家"("词条id"),
foreign key("高校id") references "高校"("词条id")
);

CREATE TABLE "诺贝尔奖科学家名单" (
"年份" time,
"奖项id" int,
"科学家id" int,
"理由" text,
foreign key("科学家id") references "科学家"("词条id"),
foreign key("奖项id") references "诺贝尔奖项"("词条id")
);

insert into "诺贝尔奖项" ("词条id", "名称", "领域", "第一次颁奖时间", "获奖者最大年龄", "获奖者最小年龄", "获奖者平均年龄") values ("item_prize_7_66", "诺贝尔化学奖", "化学", "1900年", "77", "25", "50")

insert into "诺贝尔奖项" ("词条id", "名称", "领域", "第一次颁奖时间", "获奖者最大年龄", "获奖者最小年龄", "获奖者平均年龄") values ("item_prize_7_67", "诺贝尔物理学奖", "物理", "1900年", "87", "42", "65")

insert into "诺贝尔奖项" ("词条id", "名称", "领域", "第一次颁奖时间", "获奖者最大年龄", "获奖者最小年龄", "获奖者平均年龄") values ("item_prize_7_68", "诺贝尔生理学或医学奖", "生理及医学", "1900年", "77", "25", "50")

insert into "诺贝尔奖项" ("词条id", "名称", "领域", "第一次颁奖时间", "获奖者最大年龄", "获奖者最小年龄", "获奖者平均年龄") values ("item_prize_7_69", "诺贝尔文学奖", "文学", "1900年", "77", "25", "65")

insert into "诺贝尔奖项" ("词条id", "名称", "领域", "第一次颁奖时间", "获奖者最大年龄", "获奖者最小年龄", "获奖者平均年龄") values ("item_prize_7_70", "诺贝尔和平奖", "政治", "1900年", "87", "42", "50")

insert into "高校" ("词条id", "名称", "所属国家", "世界排名", "独立科研机构数量", "重点学科数量") values ("item_prize_7_71", "斯坦福大学", "美国", "1", "0", "5")

insert into "高校" ("词条id", "名称", "所属国家", "世界排名", "独立科研机构数量", "重点学科数量") values ("item_prize_7_72", "哈佛大学", "日本", "150", "12", "50")

insert into "高校" ("词条id", "名称", "所属国家", "世界排名", "独立科研机构数量", "重点学科数量") values ("item_prize_7_73", "东京大学", "英国", "1", "12", "50")

insert into "高校" ("词条id", "名称", "所属国家", "世界排名", "独立科研机构数量", "重点学科数量") values ("item_prize_7_74", "剑桥大学", "新加坡", "150", "0", "50")

insert into "高校" ("词条id", "名称", "所属国家", "世界排名", "独立科研机构数量", "重点学科数量") values ("item_prize_7_75", "新加坡南洋理工", "印度", "150", "0", "5")

insert into "高校获奖名单" ("高校id", "奖项id", "人数", "排名") values ("item_prize_7_71", "item_prize_7_69", "1", "1")

insert into "高校获奖名单" ("高校id", "奖项id", "人数", "排名") values ("item_prize_7_72", "item_prize_7_66", "81", "100")

insert into "高校获奖名单" ("高校id", "奖项id", "人数", "排名") values ("item_prize_7_73", "item_prize_7_70", "81", "1")

insert into "高校获奖名单" ("高校id", "奖项id", "人数", "排名") values ("item_prize_7_75", "item_prize_7_66", "1", "1")

insert into "高校获奖名单" ("高校id", "奖项id", "人数", "排名") values ("item_prize_7_72", "item_prize_7_70", "81", "1")

insert into "各国获奖名单" ("国家", "奖项id", "人数") values ("美国", "item_prize_7_66", "1")

insert into "各国获奖名单" ("国家", "奖项id", "人数") values ("英国", "item_prize_7_69", "120")

insert into "各国获奖名单" ("国家", "奖项id", "人数") values ("德国", "item_prize_7_66", "120")

insert into "各国获奖名单" ("国家", "奖项id", "人数") values ("法国", "item_prize_7_66", "1")

insert into "各国获奖名单" ("国家", "奖项id", "人数") values ("瑞典", "item_prize_7_68", "1")

insert into "科学家" ("词条id", "姓名", "性别", "国籍", "出生日期", "职业") values ("item_prize_7_76", "托马斯·林达尔", "男", "美国", "1938年", "化学家")

insert into "科学家" ("词条id", "姓名", "性别", "国籍", "出生日期", "职业") values ("item_prize_7_77", "彼得·汉德克", "女", "英国", "1950年", "物理学家")

insert into "科学家" ("词条id", "姓名", "性别", "国籍", "出生日期", "职业") values ("item_prize_7_78", "莫言", "女", "德国", "1950年", "医学家")

insert into "科学家" ("词条id", "姓名", "性别", "国籍", "出生日期", "职业") values ("item_prize_7_79", "威廉·C·坎贝尔", "女", "法国", "1938年", "小说家")

insert into "科学家" ("词条id", "姓名", "性别", "国籍", "出生日期", "职业") values ("item_prize_7_80", "屠呦呦", "男", "瑞典", "1950年", "戏剧家")

insert into "毕业院校" ("科学家id", "高校id", "获得学位") values ("item_prize_7_76", "item_prize_7_73", "学士")

insert into "毕业院校" ("科学家id", "高校id", "获得学位") values ("item_prize_7_80", "item_prize_7_72", "硕士")

insert into "毕业院校" ("科学家id", "高校id", "获得学位") values ("item_prize_7_78", "item_prize_7_71", "博士")

insert into "毕业院校" ("科学家id", "高校id", "获得学位") values ("item_prize_7_77", "item_prize_7_72", "学士")

insert into "毕业院校" ("科学家id", "高校id", "获得学位") values ("item_prize_7_79", "item_prize_7_74", "博士")

insert into "诺贝尔奖科学家名单" ("年份", "奖项id", "科学家id", "理由") values ("2013", "item_prize_7_70", "item_prize_7_76", "对于物理宇宙学方面的理论发现")

insert into "诺贝尔奖科学家名单" ("年份", "奖项id", "科学家id", "理由") values ("2017", "item_prize_7_67", "item_prize_7_77", "对锂离子电池方面的研究贡献")

insert into "诺贝尔奖科学家名单" ("年份", "奖项id", "科学家id", "理由") values ("2014", "item_prize_7_68", "item_prize_7_76", "让人们理解了细胞在分子水平上感受氧气的基本原理")

insert into "诺贝尔奖科学家名单" ("年份", "奖项id", "科学家id", "理由") values ("1998", "item_prize_7_69", "item_prize_7_79", "探索了人类体验的外延和特性")

insert into "诺贝尔奖科学家名单" ("年份", "奖项id", "科学家id", "理由") values ("1987", "item_prize_7_67", "item_prize_7_79", "在解决与邻国厄立特里亚边境冲突中的决定性作用")

