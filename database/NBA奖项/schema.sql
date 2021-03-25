PRAGMA foreign_keys = ON;

CREATE TABLE "篮球运动员" (
"词条id" int,
"中文名" text,
"参加选秀年" time,
"是否状元" binary,
"获得球队" text,
"毕业院校" text,
primary key ("词条id")
);

CREATE TABLE "MVP记录" (
"赛季" int,
"球员id" int,
"国籍" text,
"所属球队" text,
foreign key("球员id") references "篮球运动员"("词条id")
);

CREATE TABLE "球队" (
"词条id" int,
"中文队名" text,
"赛区" text,
"所属联盟" text,
"夺冠次数" int,
primary key ("词条id")
);

CREATE TABLE "NBA总冠军" (
"赛季" int,
"球队id" int,
"总教练" text,
foreign key("球队id") references "球队"("词条id")
);

insert into "篮球运动员" ("词条id", "中文名", "参加选秀年", "是否状元", "获得球队", "毕业院校") values ("item_sports.2_2_1", "库里", "1950", "是", "凯尔特人", "肯塔基大学")

insert into "篮球运动员" ("词条id", "中文名", "参加选秀年", "是否状元", "获得球队", "毕业院校") values ("item_sports.2_2_2", "詹姆斯", "1952", "否", "勇士", "北卡大学")

insert into "篮球运动员" ("词条id", "中文名", "参加选秀年", "是否状元", "获得球队", "毕业院校") values ("item_sports.2_2_3", "乔丹", "1952", "是", "湖人", "杜克大学")

insert into "篮球运动员" ("词条id", "中文名", "参加选秀年", "是否状元", "获得球队", "毕业院校") values ("item_sports.2_2_4", "科比", "1953", "否", "活塞", "德克萨斯大学")

insert into "篮球运动员" ("词条id", "中文名", "参加选秀年", "是否状元", "获得球队", "毕业院校") values ("item_sports.2_2_5", "杜兰特", "1954", "否", "快船", "堪萨斯大学")

insert into "MVP记录" ("赛季", "球员id", "国籍", "所属球队") values ("2005-06赛季", "item_sports.2_2_1", "美国", "湖人")

insert into "MVP记录" ("赛季", "球员id", "国籍", "所属球队") values ("2007-08赛季", "item_sports.2_2_4", "加拿大", "凯尔特人")

insert into "MVP记录" ("赛季", "球员id", "国籍", "所属球队") values ("2010-2011赛季", "item_sports.2_2_5", "德国", "公牛队")

insert into "MVP记录" ("赛季", "球员id", "国籍", "所属球队") values ("2011-2012赛季", "item_sports.2_2_1", "加拿大", "勇士队")

insert into "MVP记录" ("赛季", "球员id", "国籍", "所属球队") values ("2017-2018赛季", "item_sports.2_2_1", "加拿大", "骑士队")

insert into "球队" ("词条id", "中文队名", "赛区", "所属联盟", "夺冠次数") values ("item_sports.2_2_6", "亚特兰大老鹰队", "西南赛区", "东部", "1")

insert into "球队" ("词条id", "中文队名", "赛区", "所属联盟", "夺冠次数") values ("item_sports.2_2_7", "波士顿凯尔特人队", "西北赛区", "西部", "2")

insert into "球队" ("词条id", "中文队名", "赛区", "所属联盟", "夺冠次数") values ("item_sports.2_2_8", "芝加哥公牛队", "太平洋赛区", "东部", "3")

insert into "球队" ("词条id", "中文队名", "赛区", "所属联盟", "夺冠次数") values ("item_sports.2_2_9", "达拉斯独行侠队", "大西洋赛区", "西部", "4")

insert into "球队" ("词条id", "中文队名", "赛区", "所属联盟", "夺冠次数") values ("item_sports.2_2_10", "丹佛掘金队", "东南赛区", "东部", "5")

insert into "NBA总冠军" ("赛季", "球队id", "总教练") values ("2005-06赛季", "item_sports.2_2_8", "菲尔·杰克逊")

insert into "NBA总冠军" ("赛季", "球队id", "总教练") values ("2007-08赛季", "item_sports.2_2_7", "布拉德·史蒂文斯")

insert into "NBA总冠军" ("赛季", "球队id", "总教练") values ("2010-2011赛季", "item_sports.2_2_7", "迈克尔乔丹")

insert into "NBA总冠军" ("赛季", "球队id", "总教练") values ("2011-2012赛季", "item_sports.2_2_8", "迈克尔乔丹")

insert into "NBA总冠军" ("赛季", "球队id", "总教练") values ("2017-2018赛季", "item_sports.2_2_9", "迈克尔乔丹")

