PRAGMA foreign_keys = ON;

CREATE TABLE "运动项目" (
"词条id" int,
"名称" text,
"起源国家" text,
"比赛形式" text,
"比赛人数" int,
"加入奥运会年份" time,
primary key ("词条id")
);

CREATE TABLE "项目流行国家" (
"项目id" int,
"国家" text,
"所获金牌总数" int,
"所获奖牌总数" int,
foreign key("项目id") references "运动项目"("词条id")
);

CREATE TABLE "运动项目奖牌数" (
"项目id" int,
"赛事类型" text,
"小项目总数" int,
"奖牌总数" int,
foreign key("项目id") references "运动项目"("词条id")
);

insert into "运动项目" ("词条id", "名称", "起源国家", "比赛形式", "比赛人数", "加入奥运会年份") values ("item_sports.2_11_106", "篮球", "美国", "团体", "1-10", "1900")

insert into "运动项目" ("词条id", "名称", "起源国家", "比赛形式", "比赛人数", "加入奥运会年份") values ("item_sports.2_11_107", "排球", "英国", "团体", "1-10", "1991")

insert into "运动项目" ("词条id", "名称", "起源国家", "比赛形式", "比赛人数", "加入奥运会年份") values ("item_sports.2_11_108", "拳击", "英国", "个人", "1", "1992")

insert into "运动项目" ("词条id", "名称", "起源国家", "比赛形式", "比赛人数", "加入奥运会年份") values ("item_sports.2_11_109", "游泳", "英国", "个人", "1", "1993")

insert into "运动项目" ("词条id", "名称", "起源国家", "比赛形式", "比赛人数", "加入奥运会年份") values ("item_sports.2_11_110", "跳水", "英国", "个人", "1", "1996")

insert into "项目流行国家" ("项目id", "国家", "所获金牌总数", "所获奖牌总数") values ("item_sports.2_11_107", "英国", "1", "1")

insert into "项目流行国家" ("项目id", "国家", "所获金牌总数", "所获奖牌总数") values ("item_sports.2_11_109", "美国", "100", "300")

insert into "项目流行国家" ("项目id", "国家", "所获金牌总数", "所获奖牌总数") values ("item_sports.2_11_110", "澳大利亚", "100", "300")

insert into "项目流行国家" ("项目id", "国家", "所获金牌总数", "所获奖牌总数") values ("item_sports.2_11_110", "日本", "1", "300")

insert into "项目流行国家" ("项目id", "国家", "所获金牌总数", "所获奖牌总数") values ("item_sports.2_11_108", "韩国", "1", "1")

insert into "运动项目奖牌数" ("项目id", "赛事类型", "小项目总数", "奖牌总数") values ("item_sports.2_11_110", "奥运会", "1", "3")

insert into "运动项目奖牌数" ("项目id", "赛事类型", "小项目总数", "奖牌总数") values ("item_sports.2_11_108", "世锦赛", "20", "111")

insert into "运动项目奖牌数" ("项目id", "赛事类型", "小项目总数", "奖牌总数") values ("item_sports.2_11_107", "亚运会", "20", "111")

insert into "运动项目奖牌数" ("项目id", "赛事类型", "小项目总数", "奖牌总数") values ("item_sports.2_11_107", "亚运会", "20", "3")

insert into "运动项目奖牌数" ("项目id", "赛事类型", "小项目总数", "奖牌总数") values ("item_sports.2_11_109", "奥运会", "1", "3")

