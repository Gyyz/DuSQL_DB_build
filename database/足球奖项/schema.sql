PRAGMA foreign_keys = ON;

CREATE TABLE "足球运动员" (
"词条id" int,
"中文名" text,
"国籍" text,
"年龄" int,
"俱乐部" text,
primary key ("词条id")
);

CREATE TABLE "世界杯金球奖" (
"年份" time,
"世界杯名称" text,
"金球奖运动员id" int,
"银球奖运动员id" int,
"铜球奖运动员id" int,
foreign key("金球奖运动员id") references "足球运动员"("词条id"),
foreign key("银球奖运动员id") references "足球运动员"("词条id"),
foreign key("铜球奖运动员id") references "足球运动员"("词条id")
);

CREATE TABLE "欧洲杯金球奖" (
"赛季" int,
"运动员id" int,
"国籍" text,
"俱乐部" text,
"进球数" int,
foreign key("运动员id") references "足球运动员"("词条id")
);

CREATE TABLE "FIFA金球奖" (
"年度" time,
"运动员id" int,
"获奖时国籍" text,
"获奖时俱乐部" text,
foreign key("运动员id") references "足球运动员"("词条id")
);

insert into "足球运动员" ("词条id", "中文名", "国籍", "年龄", "俱乐部") values ("item_sports.2_16_136", "何塞·纳萨兹", "乌拉圭", "20", "皇家马德里")

insert into "足球运动员" ("词条id", "中文名", "国籍", "年龄", "俱乐部") values ("item_sports.2_16_137", "朱塞佩·梅阿查", "意大利", "30", "巴塞罗那")

insert into "足球运动员" ("词条id", "中文名", "国籍", "年龄", "俱乐部") values ("item_sports.2_16_138", "莱昂尼达斯", "巴西", "28", "曼联")

insert into "足球运动员" ("词条id", "中文名", "国籍", "年龄", "俱乐部") values ("item_sports.2_16_139", "济济尼奥", "巴西", "27", "AC米兰")

insert into "足球运动员" ("词条id", "中文名", "国籍", "年龄", "俱乐部") values ("item_sports.2_16_140", "费伦茨·普斯卡什", "匈牙利", "26", "尤文图斯")

insert into "世界杯金球奖" ("年份", "世界杯名称", "金球奖运动员id", "银球奖运动员id", "铜球奖运动员id") values ("1982", "西班牙世界杯", "item_sports.2_16_139", "item_sports.2_16_138", "item_sports.2_16_138")

insert into "世界杯金球奖" ("年份", "世界杯名称", "金球奖运动员id", "银球奖运动员id", "铜球奖运动员id") values ("1986", "墨西哥世界杯", "item_sports.2_16_139", "item_sports.2_16_139", "item_sports.2_16_140")

insert into "世界杯金球奖" ("年份", "世界杯名称", "金球奖运动员id", "银球奖运动员id", "铜球奖运动员id") values ("1990", "意大利世界杯", "item_sports.2_16_137", "item_sports.2_16_140", "item_sports.2_16_138")

insert into "世界杯金球奖" ("年份", "世界杯名称", "金球奖运动员id", "银球奖运动员id", "铜球奖运动员id") values ("1994", "美国世界杯", "item_sports.2_16_139", "item_sports.2_16_140", "item_sports.2_16_139")

insert into "世界杯金球奖" ("年份", "世界杯名称", "金球奖运动员id", "银球奖运动员id", "铜球奖运动员id") values ("1998", "法国世界杯", "item_sports.2_16_137", "item_sports.2_16_140", "item_sports.2_16_140")

insert into "欧洲杯金球奖" ("赛季", "运动员id", "国籍", "俱乐部", "进球数") values ("2014", "item_sports.2_16_136", "克罗地亚", "皇家马德里", "10")

insert into "欧洲杯金球奖" ("赛季", "运动员id", "国籍", "俱乐部", "进球数") values ("205", "item_sports.2_16_140", "葡萄牙", "巴塞罗那", "20")

insert into "欧洲杯金球奖" ("赛季", "运动员id", "国籍", "俱乐部", "进球数") values ("2016", "item_sports.2_16_138", "阿根廷", "曼联", "30")

insert into "欧洲杯金球奖" ("赛季", "运动员id", "国籍", "俱乐部", "进球数") values ("2017", "item_sports.2_16_136", "巴西", "AC米兰", "40")

insert into "欧洲杯金球奖" ("赛季", "运动员id", "国籍", "俱乐部", "进球数") values ("2018", "item_sports.2_16_138", "意大利", "尤文图斯", "50")

insert into "FIFA金球奖" ("年度", "运动员id", "获奖时国籍", "获奖时俱乐部") values ("2010", "item_sports.2_16_137", "阿根廷", "巴塞罗那")

insert into "FIFA金球奖" ("年度", "运动员id", "获奖时国籍", "获奖时俱乐部") values ("2011", "item_sports.2_16_138", "阿根廷", "巴塞罗那")

insert into "FIFA金球奖" ("年度", "运动员id", "获奖时国籍", "获奖时俱乐部") values ("2012", "item_sports.2_16_137", "阿根廷", "巴塞罗那")

insert into "FIFA金球奖" ("年度", "运动员id", "获奖时国籍", "获奖时俱乐部") values ("2013", "item_sports.2_16_139", "葡萄牙", "皇家马德里")

insert into "FIFA金球奖" ("年度", "运动员id", "获奖时国籍", "获奖时俱乐部") values ("2014", "item_sports.2_16_139", "葡萄牙", "皇家马德里")

