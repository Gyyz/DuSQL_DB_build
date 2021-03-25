PRAGMA foreign_keys = ON;

CREATE TABLE "篮球队" (
"词条id" int,
"队名" text,
"所属地区" text,
"成立时间" time,
"主场馆" text,
"容纳人数" int,
"主教练" text,
"赞助商家" text,
primary key ("词条id")
);

CREATE TABLE "篮球运动员" (
"词条id" int,
"姓名" text,
"国籍" text,
"民族" text,
"出生地" text,
"出生日期" time,
"身高" int,
"体重" int,
"所属球队id" int,
"场上位置" text,
primary key ("词条id"),
foreign key("所属球队id") references "篮球队"("词条id")
);

CREATE TABLE "运动员赛事记录" (
"球员id" int,
"赛事" text,
"类别" text,
foreign key("球员id") references "篮球运动员"("词条id")
);

CREATE TABLE "CBA总冠军" (
"赛季" int,
"冠军球队id" int,
"亚军球队id" int,
foreign key("冠军球队id") references "篮球队"("词条id"),
foreign key("亚军球队id") references "篮球队"("词条id")
);

CREATE TABLE "最有价值球员" (
"赛季" int,
"球员id" int,
"球队id" int,
foreign key("球员id") references "篮球运动员"("词条id"),
foreign key("球队id") references "篮球队"("词条id")
);

insert into "篮球队" ("词条id", "队名", "所属地区", "成立时间", "主场馆", "容纳人数", "主教练", "赞助商家") values ("item_sports.2_8_81", "八一富邦火箭俱乐部", "宁波", "2000", "宁波市北仑区体艺中心", "5000", "阿的江", "恒大集团")

insert into "篮球队" ("词条id", "队名", "所属地区", "成立时间", "主场馆", "容纳人数", "主教练", "赞助商家") values ("item_sports.2_8_82", "北京北控篮球俱乐部", "北京", "2001", "深圳龙岗大运中心体育馆", "10000", "杜峰", "哈药集团")

insert into "篮球队" ("词条id", "队名", "所属地区", "成立时间", "主场馆", "容纳人数", "主教练", "赞助商家") values ("item_sports.2_8_83", "北京首钢篮球俱乐部", "北京", "2010", "五棵松篮球馆", "12000", "王治郅", "首钢集团")

insert into "篮球队" ("词条id", "队名", "所属地区", "成立时间", "主场馆", "容纳人数", "主教练", "赞助商家") values ("item_sports.2_8_84", "天津荣钢金狮俱乐部", "天津", "2011", "国信体育馆", "18000", "李秋平", "广汇集团")

insert into "篮球队" ("词条id", "队名", "所属地区", "成立时间", "主场馆", "容纳人数", "主教练", "赞助商家") values ("item_sports.2_8_85", "吉林东北虎俱乐部", "吉林", "2017", "广州天河体育馆", "20000", "朱世龙", "广东宏远集团")

insert into "篮球运动员" ("词条id", "姓名", "国籍", "民族", "出生地", "出生日期", "身高", "体重", "所属球队id", "场上位置") values ("item_sports.2_8_86", "易建联", "中国", "汉族", "上海", "1991.06.07", "180cm", "80kG", "item_sports.2_8_81", "中锋")

insert into "篮球运动员" ("词条id", "姓名", "国籍", "民族", "出生地", "出生日期", "身高", "体重", "所属球队id", "场上位置") values ("item_sports.2_8_87", "苏伟", "美国", "维族", "北京", "1992.07.08", "190cm", "88KG", "item_sports.2_8_85", "控球后卫")

insert into "篮球运动员" ("词条id", "姓名", "国籍", "民族", "出生地", "出生日期", "身高", "体重", "所属球队id", "场上位置") values ("item_sports.2_8_88", "周鹏", "中国", "蒙古族", "广州", "1993.04.25", "200cm", "90KG", "item_sports.2_8_83", "得分后卫")

insert into "篮球运动员" ("词条id", "姓名", "国籍", "民族", "出生地", "出生日期", "身高", "体重", "所属球队id", "场上位置") values ("item_sports.2_8_89", "吴冠希", "中国", "哈萨克族", "深圳", "1989.10.11", "191cm", "100KG", "item_sports.2_8_85", "小前锋")

insert into "篮球运动员" ("词条id", "姓名", "国籍", "民族", "出生地", "出生日期", "身高", "体重", "所属球队id", "场上位置") values ("item_sports.2_8_90", "贺天举", "美国", "蒙古族", "深圳", "1987.07.23", "220cm", "120KG", "item_sports.2_8_84", "大前锋")

insert into "运动员赛事记录" ("球员id", "赛事", "类别") values ("item_sports.2_8_86", "常规赛", "奥运会")

insert into "运动员赛事记录" ("球员id", "赛事", "类别") values ("item_sports.2_8_89", "常规赛", "世锦赛")

insert into "运动员赛事记录" ("球员id", "赛事", "类别") values ("item_sports.2_8_87", "常规赛", "亚锦赛")

insert into "运动员赛事记录" ("球员id", "赛事", "类别") values ("item_sports.2_8_90", "常规赛", "亚运会")

insert into "运动员赛事记录" ("球员id", "赛事", "类别") values ("item_sports.2_8_89", "常规赛", "亚锦赛")

insert into "CBA总冠军" ("赛季", "冠军球队id", "亚军球队id") values ("18-19赛季", "item_sports.2_8_84", "item_sports.2_8_83")

insert into "CBA总冠军" ("赛季", "冠军球队id", "亚军球队id") values ("17-18赛季", "item_sports.2_8_81", "item_sports.2_8_81")

insert into "CBA总冠军" ("赛季", "冠军球队id", "亚军球队id") values ("16-17赛季", "item_sports.2_8_82", "item_sports.2_8_83")

insert into "CBA总冠军" ("赛季", "冠军球队id", "亚军球队id") values ("15-16赛季", "item_sports.2_8_83", "item_sports.2_8_81")

insert into "CBA总冠军" ("赛季", "冠军球队id", "亚军球队id") values ("14-15赛季", "item_sports.2_8_82", "item_sports.2_8_82")

insert into "最有价值球员" ("赛季", "球员id", "球队id") values ("18-19赛季", "item_sports.2_8_86", "item_sports.2_8_82")

insert into "最有价值球员" ("赛季", "球员id", "球队id") values ("17-18赛季", "item_sports.2_8_90", "item_sports.2_8_82")

insert into "最有价值球员" ("赛季", "球员id", "球队id") values ("16-17赛季", "item_sports.2_8_90", "item_sports.2_8_82")

insert into "最有价值球员" ("赛季", "球员id", "球队id") values ("15-16赛季", "item_sports.2_8_89", "item_sports.2_8_83")

insert into "最有价值球员" ("赛季", "球员id", "球队id") values ("14-15赛季", "item_sports.2_8_87", "item_sports.2_8_82")

