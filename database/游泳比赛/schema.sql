PRAGMA foreign_keys = ON;

CREATE TABLE "游泳泳姿" (
"词条id" int,
"名称" text,
"发明时间" time,
"加入奥运会时间" time,
primary key ("词条id")
);

CREATE TABLE "各泳姿参赛项目" (
"泳姿id" int,
"50米" binary,
"100米" binary,
"200米" binary,
"400米" binary,
"800米" binary,
"1500米" binary,
"5000米" binary,
"10000米" binary,
"赛事" text,
foreign key("泳姿id") references "游泳泳姿"("词条id")
);

CREATE TABLE "泳坛名将" (
"词条id" int,
"姓名" text,
"性别" text,
"国籍" text,
"身高" int,
"体重" int,
"专业特点id" int,
primary key ("词条id"),
foreign key("专业特点id") references "游泳泳姿"("词条id")
);

CREATE TABLE "赛事记录" (
"泳姿id" int,
"长度" int,
"赛事类型" text,
"运动员id" int,
"用时" int,
"破记录年份" time,
foreign key("泳姿id") references "游泳泳姿"("词条id"),
foreign key("运动员id") references "泳坛名将"("词条id")
);

insert into "游泳泳姿" ("词条id", "名称", "发明时间", "加入奥运会时间") values ("item_sports.2_12_111", "自由泳", "1850", "1896")

insert into "游泳泳姿" ("词条id", "名称", "发明时间", "加入奥运会时间") values ("item_sports.2_12_112", "仰泳", "1900", "1912")

insert into "游泳泳姿" ("词条id", "名称", "发明时间", "加入奥运会时间") values ("item_sports.2_12_113", "蛙泳", "1837", "1936")

insert into "游泳泳姿" ("词条id", "名称", "发明时间", "加入奥运会时间") values ("item_sports.2_12_114", "蝶泳", "1926", "1952")

insert into "游泳泳姿" ("词条id", "名称", "发明时间", "加入奥运会时间") values ("item_sports.2_12_115", "自由泳", "1837", "1896")

insert into "各泳姿参赛项目" ("泳姿id", "50米", "100米", "200米", "400米", "800米", "1500米", "5000米", "10000米", "赛事") values ("item_sports.2_12_113", "有", "有", "有", "有", "有", "有", "有", "有", "世锦赛")

insert into "各泳姿参赛项目" ("泳姿id", "50米", "100米", "200米", "400米", "800米", "1500米", "5000米", "10000米", "赛事") values ("item_sports.2_12_112", "无", "无", "无", "无", "无", "无", "无", "无", "奥运会")

insert into "各泳姿参赛项目" ("泳姿id", "50米", "100米", "200米", "400米", "800米", "1500米", "5000米", "10000米", "赛事") values ("item_sports.2_12_112", "无", "无", "有", "有", "有", "无", "无", "有", "世锦赛")

insert into "各泳姿参赛项目" ("泳姿id", "50米", "100米", "200米", "400米", "800米", "1500米", "5000米", "10000米", "赛事") values ("item_sports.2_12_113", "无", "无", "无", "有", "有", "有", "有", "无", "奥运会")

insert into "各泳姿参赛项目" ("泳姿id", "50米", "100米", "200米", "400米", "800米", "1500米", "5000米", "10000米", "赛事") values ("item_sports.2_12_114", "无", "无", "无", "有", "有", "有", "有", "有", "奥运会")

insert into "泳坛名将" ("词条id", "姓名", "性别", "国籍", "身高", "体重", "专业特点id") values ("item_sports.2_12_116", "孙杨", "男", "中国", "180", "70", "item_sports.2_12_112")

insert into "泳坛名将" ("词条id", "姓名", "性别", "国籍", "身高", "体重", "专业特点id") values ("item_sports.2_12_117", "张琳", "男", "中国", "196cm", "92KG", "item_sports.2_12_113")

insert into "泳坛名将" ("词条id", "姓名", "性别", "国籍", "身高", "体重", "专业特点id") values ("item_sports.2_12_118", "菲尔普斯", "男", "美国", "180", "70", "item_sports.2_12_113")

insert into "泳坛名将" ("词条id", "姓名", "性别", "国籍", "身高", "体重", "专业特点id") values ("item_sports.2_12_119", "朴泰桓", "男", "韩国", "196cm", "70", "item_sports.2_12_111")

insert into "泳坛名将" ("词条id", "姓名", "性别", "国籍", "身高", "体重", "专业特点id") values ("item_sports.2_12_120", "叶诗文", "女", "中国", "180", "92KG", "item_sports.2_12_111")

insert into "赛事记录" ("泳姿id", "长度", "赛事类型", "运动员id", "用时", "破记录年份") values ("item_sports.2_12_111", "50", "自由泳", "item_sports.2_12_120", " 20.91", "2009")

insert into "赛事记录" ("泳姿id", "长度", "赛事类型", "运动员id", "用时", "破记录年份") values ("item_sports.2_12_111", "100", "自由泳", "item_sports.2_12_119", "47.05", "2008")

insert into "赛事记录" ("泳姿id", "长度", "赛事类型", "运动员id", "用时", "破记录年份") values ("item_sports.2_12_111", "200", "自由泳", "item_sports.2_12_120", "3.40.07", "2009")

insert into "赛事记录" ("泳姿id", "长度", "赛事类型", "运动员id", "用时", "破记录年份") values ("item_sports.2_12_114", "400", "自由泳", "item_sports.2_12_120", " 7.32.12", "2009")

insert into "赛事记录" ("泳姿id", "长度", "赛事类型", "运动员id", "用时", "破记录年份") values ("item_sports.2_12_111", "800", "自由泳", "item_sports.2_12_116", " 8.04.79", "2009")

