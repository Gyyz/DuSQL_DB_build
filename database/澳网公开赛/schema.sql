PRAGMA foreign_keys = ON;

CREATE TABLE "网球运动员" (
"词条id" int,
"姓名" text,
"性别" text,
"国籍" text,
"专业特点" text,
primary key ("词条id")
);

CREATE TABLE "网球赛事单打冠军排名" (
"运动员id" int,
"赛事" text,
"夺冠次数" int,
"夺冠年份" text,
foreign key("运动员id") references "网球运动员"("词条id")
);

CREATE TABLE "网球赛事历届单打冠军" (
"年份" time,
"赛事" text,
"性别" text,
"冠军id" int,
"亚军id" int,
"决赛比分" int,
foreign key("亚军id") references "网球运动员"("词条id"),
foreign key("冠军id") references "网球运动员"("词条id")
);

CREATE TABLE "网球比赛记录" (
"记录项目" text,
"保持者id" int,
"说明" text,
foreign key("保持者id") references "网球运动员"("词条id")
);

insert into "网球运动员" ("词条id", "姓名", "性别", "国籍", "专业特点") values ("item_sports.2_15_131", " 诺瓦克·德约科维奇", "男", " 塞尔维亚", "右手持拍")

insert into "网球运动员" ("词条id", "姓名", "性别", "国籍", "专业特点") values ("item_sports.2_15_132", "拉菲尔·纳达尔", "女", "西班牙", "左手持拍")

insert into "网球运动员" ("词条id", "姓名", "性别", "国籍", "专业特点") values ("item_sports.2_15_133", "罗杰·费德勒", "男", "瑞士", "单手反拍")

insert into "网球运动员" ("词条id", "姓名", "性别", "国籍", "专业特点") values ("item_sports.2_15_134", "安迪·穆雷", "男", "英国", "双手反拍")

insert into "网球运动员" ("词条id", "姓名", "性别", "国籍", "专业特点") values ("item_sports.2_15_135", "斯坦尼斯拉斯·瓦林卡", "男", "美国", "左手持拍")

insert into "网球赛事单打冠军排名" ("运动员id", "赛事", "夺冠次数", "夺冠年份") values ("item_sports.2_15_133", "澳网", "2", "2010")

insert into "网球赛事单打冠军排名" ("运动员id", "赛事", "夺冠次数", "夺冠年份") values ("item_sports.2_15_135", "温网", "3", "2011")

insert into "网球赛事单打冠军排名" ("运动员id", "赛事", "夺冠次数", "夺冠年份") values ("item_sports.2_15_135", "美网", "4", "2014")

insert into "网球赛事单打冠军排名" ("运动员id", "赛事", "夺冠次数", "夺冠年份") values ("item_sports.2_15_132", "温网", "5", "2016")

insert into "网球赛事单打冠军排名" ("运动员id", "赛事", "夺冠次数", "夺冠年份") values ("item_sports.2_15_133", "澳网", "7", "2018")

insert into "网球赛事历届单打冠军" ("年份", "赛事", "性别", "冠军id", "亚军id", "决赛比分") values ("2017", "澳网", "男", "item_sports.2_15_133", "item_sports.2_15_134", "3:0")

insert into "网球赛事历届单打冠军" ("年份", "赛事", "性别", "冠军id", "亚军id", "决赛比分") values ("2016", "温网", "女", "item_sports.2_15_132", "item_sports.2_15_135", "3:1")

insert into "网球赛事历届单打冠军" ("年份", "赛事", "性别", "冠军id", "亚军id", "决赛比分") values ("2014", "美网", "男", "item_sports.2_15_135", "item_sports.2_15_134", "3:2")

insert into "网球赛事历届单打冠军" ("年份", "赛事", "性别", "冠军id", "亚军id", "决赛比分") values ("2015", "美网", "男", "item_sports.2_15_133", "item_sports.2_15_132", "3:2")

insert into "网球赛事历届单打冠军" ("年份", "赛事", "性别", "冠军id", "亚军id", "决赛比分") values ("2019", "温网", "男", "item_sports.2_15_134", "item_sports.2_15_132", "3:2")

insert into "网球比赛记录" ("记录项目", "保持者id", "说明") values ("总夺冠次数最多的球员", "item_sports.2_15_134", "总蝉联冠军最多的球员")

insert into "网球比赛记录" ("记录项目", "保持者id", "说明") values ("总蝉联冠军最多的球员", "item_sports.2_15_132", "最年轻球员")

insert into "网球比赛记录" ("记录项目", "保持者id", "说明") values ("最年轻的单打冠军", "item_sports.2_15_131", "最年老球员")

insert into "网球比赛记录" ("记录项目", "保持者id", "说明") values ("最年轻的双打冠军", "item_sports.2_15_131", "最年老球员")

insert into "网球比赛记录" ("记录项目", "保持者id", "说明") values ("最年老的单打冠军", "item_sports.2_15_132", "最年老球员")

