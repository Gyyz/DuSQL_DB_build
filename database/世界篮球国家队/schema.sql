PRAGMA foreign_keys = ON;

CREATE TABLE "篮球运动队" (
"词条id" int,
"队名" text,
"所属国家" text,
"成立时间" time,
"主教练" text,
"奥运会冠军数量" int,
"世锦赛冠军数量" int,
"世界排名" int,
primary key ("词条id")
);

CREATE TABLE "奥运会冠亚军记录" (
"年份" time,
"奥运会名称" text,
"冠军队id" int,
"亚军队id" int,
"季军队id" int,
foreign key("冠军队id") references "篮球运动队"("词条id"),
foreign key("亚军队id") references "篮球运动队"("词条id"),
foreign key("季军队id") references "篮球运动队"("词条id")
);

CREATE TABLE "中国队奥运会成绩" (
"年份" time,
"奥运会名称" text,
"名次" int,
"主帅" text
);

CREATE TABLE "中国队交手记录" (
"对手队id" int,
"赢的次数" int,
"输的次数" int,
primary key ("对手队id"),
foreign key("对手队id") references "篮球运动队"("词条id")
);

insert into "篮球运动队" ("词条id", "队名", "所属国家", "成立时间", "主教练", "奥运会冠军数量", "世锦赛冠军数量", "世界排名") values ("item_sports.2_7_71", "美国男篮国家队", "美国", "1999", "扬纳斯基", "9", "1", "1")

insert into "篮球运动队" ("词条id", "队名", "所属国家", "成立时间", "主教练", "奥运会冠军数量", "世锦赛冠军数量", "世界排名") values ("item_sports.2_7_72", "西班牙男篮国家队", "西班牙", "2000", "邓华德", "8", "2", "2")

insert into "篮球运动队" ("词条id", "队名", "所属国家", "成立时间", "主教练", "奥运会冠军数量", "世锦赛冠军数量", "世界排名") values ("item_sports.2_7_73", "法国男篮国家队", "法国", "1987", "德尔-哈里斯", "7", "3", "3")

insert into "篮球运动队" ("词条id", "队名", "所属国家", "成立时间", "主教练", "奥运会冠军数量", "世锦赛冠军数量", "世界排名") values ("item_sports.2_7_74", "塞尔维亚男篮国家队", "塞尔维亚", "1967", "尤纳斯", "6", "4", "4")

insert into "篮球运动队" ("词条id", "队名", "所属国家", "成立时间", "主教练", "奥运会冠军数量", "世锦赛冠军数量", "世界排名") values ("item_sports.2_7_75", "阿根廷男篮国家队", "阿根廷", "1988", "李楠", "5", "5", "5")

insert into "奥运会冠亚军记录" ("年份", "奥运会名称", "冠军队id", "亚军队id", "季军队id") values ("2000", "2000年悉尼奥运会", "item_sports.2_7_74", "item_sports.2_7_73", "item_sports.2_7_75")

insert into "奥运会冠亚军记录" ("年份", "奥运会名称", "冠军队id", "亚军队id", "季军队id") values ("2004", "2004年雅典奥运会", "item_sports.2_7_72", "item_sports.2_7_72", "item_sports.2_7_74")

insert into "奥运会冠亚军记录" ("年份", "奥运会名称", "冠军队id", "亚军队id", "季军队id") values ("2008", "2008年北京奥运会", "item_sports.2_7_73", "item_sports.2_7_75", "item_sports.2_7_72")

insert into "奥运会冠亚军记录" ("年份", "奥运会名称", "冠军队id", "亚军队id", "季军队id") values ("2012", "2012年伦敦奥运会", "item_sports.2_7_75", "item_sports.2_7_73", "item_sports.2_7_71")

insert into "奥运会冠亚军记录" ("年份", "奥运会名称", "冠军队id", "亚军队id", "季军队id") values ("2016", "2016年巴西奥运会", "item_sports.2_7_73", "item_sports.2_7_72", "item_sports.2_7_72")

insert into "中国队奥运会成绩" ("年份", "奥运会名称", "名次", "主帅") values ("2000", "2000年悉尼奥运会", "10", "鲍勃·邓华德")

insert into "中国队奥运会成绩" ("年份", "奥运会名称", "名次", "主帅") values ("2004", "2004年雅典奥运会", "8", "尤纳斯·卡兹劳斯卡斯")

insert into "中国队奥运会成绩" ("年份", "奥运会名称", "名次", "主帅") values ("2008", "2008年北京奥运会", "8", "德尔·哈里斯")

insert into "中国队奥运会成绩" ("年份", "奥运会名称", "名次", "主帅") values ("2012", "2012年伦敦奥运会", "12", "宫鲁鸣")

insert into "中国队奥运会成绩" ("年份", "奥运会名称", "名次", "主帅") values ("2016", "2016年巴西奥运会", "12", "蒋兴权")

insert into "中国队交手记录" ("对手队id", "赢的次数", "输的次数") values ("item_sports.2_7_71", "0", "3")

insert into "中国队交手记录" ("对手队id", "赢的次数", "输的次数") values ("item_sports.2_7_73", "0", "4")

insert into "中国队交手记录" ("对手队id", "赢的次数", "输的次数") values ("item_sports.2_7_75", "1", "5")

insert into "中国队交手记录" ("对手队id", "赢的次数", "输的次数") values ("item_sports.2_7_75", "2", "6")

insert into "中国队交手记录" ("对手队id", "赢的次数", "输的次数") values ("item_sports.2_7_75", "3", "1")

