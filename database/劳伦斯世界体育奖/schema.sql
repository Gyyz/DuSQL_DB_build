PRAGMA foreign_keys = ON;

CREATE TABLE "运动员" (
"词条id" int,
"姓名" text,
"性别" text,
"国籍" text,
"体育项目" text,
primary key ("词条id")
);

CREATE TABLE "劳伦斯提名名单" (
"年份" time,
"提名人id" int,
"提名奖项" text,
"提名理由" text,
foreign key("提名人id") references "运动员"("词条id")
);

CREATE TABLE "劳伦斯获奖名单" (
"年份" time,
"奖项" text,
"获奖人id" int,
foreign key("获奖人id") references "运动员"("词条id")
);

CREATE TABLE "劳伦斯获奖国家名单" (
"国家" text,
"获奖人性别" text,
"获奖人数" int,
"所占比例" int
);

insert into "运动员" ("词条id", "姓名", "性别", "国籍", "体育项目") values ("item_prize_2_16", "泰格-伍兹", "男", "美国", "高尔夫")

insert into "运动员" ("词条id", "姓名", "性别", "国籍", "体育项目") values ("item_prize_2_17", "凯西-弗里曼", "女", "澳大利亚", "田径")

insert into "运动员" ("词条id", "姓名", "性别", "国籍", "体育项目") values ("item_prize_2_18", "罗杰·费德勒", "男", "法国", "足球")

insert into "运动员" ("词条id", "姓名", "性别", "国籍", "体育项目") values ("item_prize_2_19", "刘易斯·汉密尔顿", "男", "俄罗斯", "网球")

insert into "运动员" ("词条id", "姓名", "性别", "国籍", "体育项目") values ("item_prize_2_20", "加尔比妮·穆古拉扎", "男", "肯尼亚", "排球")

insert into "劳伦斯提名名单" ("年份", "提名人id", "提名奖项", "提名理由") values ("2001", "item_prize_2_20", "最佳男运动员", "三次800米世界冠军")

insert into "劳伦斯提名名单" ("年份", "提名人id", "提名奖项", "提名理由") values ("2019年", "item_prize_2_20", " 最佳女运动员", " 获得四大满贯公开赛澳网冠军")

insert into "劳伦斯提名名单" ("年份", "提名人id", "提名奖项", "提名理由") values ("2019年", "item_prize_2_20", "最佳团队", "16次获得世锦赛冠军")

insert into "劳伦斯提名名单" ("年份", "提名人id", "提名奖项", "提名理由") values ("2019年", "item_prize_2_17", "最佳复出", "19岁横扫泳坛")

insert into "劳伦斯提名名单" ("年份", "提名人id", "提名奖项", "提名理由") values ("2001", "item_prize_2_16", "最佳突破", "世界杯滑雪锦标赛总冠军")

insert into "劳伦斯获奖名单" ("年份", "奖项", "获奖人id") values ("2001", "最佳女运动员", "item_prize_2_16")

insert into "劳伦斯获奖名单" ("年份", "奖项", "获奖人id") values ("2019年", "最佳团队", "item_prize_2_18")

insert into "劳伦斯获奖名单" ("年份", "奖项", "获奖人id") values ("2001", "最佳复出", "item_prize_2_16")

insert into "劳伦斯获奖名单" ("年份", "奖项", "获奖人id") values ("2001", "最佳突破", "item_prize_2_16")

insert into "劳伦斯获奖名单" ("年份", "奖项", "获奖人id") values ("2001", "最佳残疾运动员", "item_prize_2_19")

insert into "劳伦斯获奖国家名单" ("国家", "获奖人性别", "获奖人数", "所占比例") values ("美国", "男", "3", "10")

insert into "劳伦斯获奖国家名单" ("国家", "获奖人性别", "获奖人数", "所占比例") values ("瑞士", "女", "15", "30%")

insert into "劳伦斯获奖国家名单" ("国家", "获奖人性别", "获奖人数", "所占比例") values ("捷克", "女", "15", "10")

insert into "劳伦斯获奖国家名单" ("国家", "获奖人性别", "获奖人数", "所占比例") values ("法国", "男", "3", "10")

insert into "劳伦斯获奖国家名单" ("国家", "获奖人性别", "获奖人数", "所占比例") values ("德国", "男", "15", "30%")

