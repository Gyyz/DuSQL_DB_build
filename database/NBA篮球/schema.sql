PRAGMA foreign_keys = ON;

CREATE TABLE "篮球运动员" (
"词条id" int,
"中文名" text,
"国籍" text,
"出生地" text,
"出生日期" time,
"身高" int,
"体重" int,
"毕业院校" text,
"场上位置" text,
primary key ("词条id")
);

CREATE TABLE "比赛场馆" (
"词条id" int,
"名称" text,
"容纳人数" int,
primary key ("词条id")
);

CREATE TABLE "篮球俱乐部" (
"词条id" int,
"中文队名" text,
"所属地区" text,
"成立时间" time,
"主场馆id" int,
"赛区" text,
primary key ("词条id"),
foreign key("主场馆id") references "比赛场馆"("词条id")
);

CREATE TABLE "俱乐部现役球员" (
"球员id" int,
"俱乐部id" int,
"场上位置" text,
"球衣号码" int,
"是否主力" binary,
foreign key("球员id") references "篮球运动员"("词条id"),
foreign key("俱乐部id") references "篮球俱乐部"("词条id")
);

CREATE TABLE "运动员转会" (
"运动员id" int,
"俱乐部id" int,
"加入日期" time,
"服役时间" int,
"号码" int,
"薪资" int,
foreign key("俱乐部id") references "篮球俱乐部"("词条id"),
foreign key("运动员id") references "篮球运动员"("词条id")
);

CREATE TABLE "教练" (
"词条id" int,
"中文名" text,
"国籍" text,
"毕业院校" text,
"执教时长" int,
"年薪" int,
primary key ("词条id")
);

CREATE TABLE "俱乐部教练" (
"教练id" int,
"俱乐部id" int,
"加入日期" time,
"身份" text,
foreign key("教练id") references "教练"("词条id"),
foreign key("俱乐部id") references "篮球俱乐部"("词条id")
);

insert into "篮球运动员" ("词条id", "中文名", "国籍", "出生地", "出生日期", "身高", "体重", "毕业院校", "场上位置") values ("item_sports.2_6_51", "迈克尔·乔丹", "美国", "美国", "1983.10.06", "183cm", "80kg", "北卡罗来纳大学", "控球后卫")

insert into "篮球运动员" ("词条id", "中文名", "国籍", "出生地", "出生日期", "身高", "体重", "毕业院校", "场上位置") values ("item_sports.2_6_52", "勒布朗·詹姆斯", "加拿大", "加拿大", "1979.11.03", "190cm", "85kg", "劳尔梅里恩高中", "得分后卫")

insert into "篮球运动员" ("词条id", "中文名", "国籍", "出生地", "出生日期", "身高", "体重", "毕业院校", "场上位置") values ("item_sports.2_6_53", "科比·布莱恩特", "阿根廷", "阿根廷", "1976.05.24", "191cm", "100kg", "北京体育大学", "小前锋")

insert into "篮球运动员" ("词条id", "中文名", "国籍", "出生地", "出生日期", "身高", "体重", "毕业院校", "场上位置") values ("item_sports.2_6_54", "保罗·皮尔斯", "洛杉矶", "洛杉矶", "1981.02.21", "210cm", "115kg", "北卡罗来纳大学", "大前锋")

insert into "篮球运动员" ("词条id", "中文名", "国籍", "出生地", "出生日期", "身高", "体重", "毕业院校", "场上位置") values ("item_sports.2_6_55", "斯蒂芬·库里", "中国", "上海", "1982.03.04", "216cm", "120kg", "劳尔梅里恩高中", "中锋")

insert into "比赛场馆" ("词条id", "名称", "容纳人数") values ("item_sports.2_6_56", "联合中心", "18000")

insert into "比赛场馆" ("词条id", "名称", "容纳人数") values ("item_sports.2_6_57", "速贷球馆", "19000")

insert into "比赛场馆" ("词条id", "名称", "容纳人数") values ("item_sports.2_6_58", "小凯撒球馆", "20000")

insert into "比赛场馆" ("词条id", "名称", "容纳人数") values ("item_sports.2_6_59", "第一资本球馆", "19500")

insert into "比赛场馆" ("词条id", "名称", "容纳人数") values ("item_sports.2_6_60", "美航球馆", "21000")

insert into "篮球俱乐部" ("词条id", "中文队名", "所属地区", "成立时间", "主场馆id", "赛区") values ("item_sports.2_6_61", "亚特兰大老鹰队", "亚特兰大", "1946", "item_sports.2_6_57", "西南赛区")

insert into "篮球俱乐部" ("词条id", "中文队名", "所属地区", "成立时间", "主场馆id", "赛区") values ("item_sports.2_6_62", "波士顿凯尔特人队", "波士顿", "1970", "item_sports.2_6_60", "西北赛区")

insert into "篮球俱乐部" ("词条id", "中文队名", "所属地区", "成立时间", "主场馆id", "赛区") values ("item_sports.2_6_63", "芝加哥公牛队", "芝加哥", "1988", "item_sports.2_6_57", "太平洋赛区")

insert into "篮球俱乐部" ("词条id", "中文队名", "所属地区", "成立时间", "主场馆id", "赛区") values ("item_sports.2_6_64", "达拉斯独行侠队", "休斯顿", "1989", "item_sports.2_6_60", "大西洋赛区")

insert into "篮球俱乐部" ("词条id", "中文队名", "所属地区", "成立时间", "主场馆id", "赛区") values ("item_sports.2_6_65", "丹佛掘金队", "克利夫兰", "1990", "item_sports.2_6_58", "东南赛区")

insert into "俱乐部现役球员" ("球员id", "俱乐部id", "场上位置", "球衣号码", "是否主力") values ("item_sports.2_6_55", "item_sports.2_6_63", "控球后卫", "1", "是")

insert into "俱乐部现役球员" ("球员id", "俱乐部id", "场上位置", "球衣号码", "是否主力") values ("item_sports.2_6_55", "item_sports.2_6_65", "得分后卫", "5", "是")

insert into "俱乐部现役球员" ("球员id", "俱乐部id", "场上位置", "球衣号码", "是否主力") values ("item_sports.2_6_54", "item_sports.2_6_61", "小前锋", "10", "是")

insert into "俱乐部现役球员" ("球员id", "俱乐部id", "场上位置", "球衣号码", "是否主力") values ("item_sports.2_6_52", "item_sports.2_6_65", "大前锋", "30", "是")

insert into "俱乐部现役球员" ("球员id", "俱乐部id", "场上位置", "球衣号码", "是否主力") values ("item_sports.2_6_55", "item_sports.2_6_61", "后卫", "47", "是")

insert into "运动员转会" ("运动员id", "俱乐部id", "加入日期", "服役时间", "号码", "薪资") values ("item_sports.2_6_54", "item_sports.2_6_65", "1990", "3", "1", "1000万美元")

insert into "运动员转会" ("运动员id", "俱乐部id", "加入日期", "服役时间", "号码", "薪资") values ("item_sports.2_6_53", "item_sports.2_6_63", "2000", "5", "10", "1500万美元")

insert into "运动员转会" ("运动员id", "俱乐部id", "加入日期", "服役时间", "号码", "薪资") values ("item_sports.2_6_53", "item_sports.2_6_63", "2004", "1", "15", "2000万美元")

insert into "运动员转会" ("运动员id", "俱乐部id", "加入日期", "服役时间", "号码", "薪资") values ("item_sports.2_6_54", "item_sports.2_6_65", "2010", "5", "35", "3000万美元")

insert into "运动员转会" ("运动员id", "俱乐部id", "加入日期", "服役时间", "号码", "薪资") values ("item_sports.2_6_55", "item_sports.2_6_63", "2018", "6", "47", "4024万美元")

insert into "教练" ("词条id", "中文名", "国籍", "毕业院校", "执教时长", "年薪") values ("item_sports.2_6_66", "格雷格·波波维奇", "美国", "肯塔基大学", "2年", "100万美元")

insert into "教练" ("词条id", "中文名", "国籍", "毕业院校", "执教时长", "年薪") values ("item_sports.2_6_67", "道格·里弗斯", "加拿大", "北卡大学", "3年", "200万美元")

insert into "教练" ("词条id", "中文名", "国籍", "毕业院校", "执教时长", "年薪") values ("item_sports.2_6_68", "汤姆·锡伯杜", "西班牙", "杜克大学", "5年", "500万美元")

insert into "教练" ("词条id", "中文名", "国籍", "毕业院校", "执教时长", "年薪") values ("item_sports.2_6_69", "里克·卡莱尔", "德国", "德克萨斯大学", "6年", "800万美元")

insert into "教练" ("词条id", "中文名", "国籍", "毕业院校", "执教时长", "年薪") values ("item_sports.2_6_70", "斯科特·布鲁克斯", "土耳其", "堪萨斯大学", "10年", "1100万美元")

insert into "俱乐部教练" ("教练id", "俱乐部id", "加入日期", "身份") values ("item_sports.2_6_67", "item_sports.2_6_61", "2001", "助教")

insert into "俱乐部教练" ("教练id", "俱乐部id", "加入日期", "身份") values ("item_sports.2_6_70", "item_sports.2_6_63", "2002", "主教")

insert into "俱乐部教练" ("教练id", "俱乐部id", "加入日期", "身份") values ("item_sports.2_6_66", "item_sports.2_6_64", "2010", "助教")

insert into "俱乐部教练" ("教练id", "俱乐部id", "加入日期", "身份") values ("item_sports.2_6_68", "item_sports.2_6_63", "2013", "主教")

insert into "俱乐部教练" ("教练id", "俱乐部id", "加入日期", "身份") values ("item_sports.2_6_69", "item_sports.2_6_63", "2009", "助教")

