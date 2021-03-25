PRAGMA foreign_keys = ON;

CREATE TABLE "重要赛事" (
"词条id" int,
"赛事名称" text,
"人群" text,
"成立时间" time,
"比赛间隔年" int,
"比赛项目数量" int,
primary key ("词条id")
);

CREATE TABLE "冠军国家" (
"国家名称" text,
"赛事id" int,
"冠军数量" int,
foreign key("赛事id") references "重要赛事"("词条id")
);

CREATE TABLE "羽毛球球员" (
"词条id" int,
"中文名" text,
"性别" text,
"国籍" text,
"出生日期" time,
"身高" int,
primary key ("词条id")
);

CREATE TABLE "奥运会冠亚军" (
"奥运会名称" text,
"项目名称" text,
"金牌获得者id" int,
"银牌获得者id" int,
"铜牌获得者id" int,
foreign key("铜牌获得者id") references "羽毛球球员"("词条id"),
foreign key("金牌获得者id") references "羽毛球球员"("词条id"),
foreign key("银牌获得者id") references "羽毛球球员"("词条id")
);

CREATE TABLE "球员夺冠次数" (
"球员id" int,
"赛事id" int,
"冠军次数" int,
"亚军次数" int,
"季军次数" int,
foreign key("赛事id") references "重要赛事"("词条id"),
foreign key("球员id") references "羽毛球球员"("词条id")
);

insert into "重要赛事" ("词条id", "赛事名称", "人群", "成立时间", "比赛间隔年", "比赛项目数量") values ("item_sports.2_3_11", "汤姆斯杯", "男子", "1948", "2", "2")

insert into "重要赛事" ("词条id", "赛事名称", "人群", "成立时间", "比赛间隔年", "比赛项目数量") values ("item_sports.2_3_12", "尤伯杯", "女子", "1956", "2", "2")

insert into "重要赛事" ("词条id", "赛事名称", "人群", "成立时间", "比赛间隔年", "比赛项目数量") values ("item_sports.2_3_13", "世界锦标赛", "所有", "1977", "1", "5")

insert into "重要赛事" ("词条id", "赛事名称", "人群", "成立时间", "比赛间隔年", "比赛项目数量") values ("item_sports.2_3_14", "苏迪曼杯", "所有", "1989", "2", "5")

insert into "重要赛事" ("词条id", "赛事名称", "人群", "成立时间", "比赛间隔年", "比赛项目数量") values ("item_sports.2_3_15", "奥运会比赛", "所有", "1992", "4", "6")

insert into "冠军国家" ("国家名称", "赛事id", "冠军数量") values ("中国", "item_sports.2_3_12", "1")

insert into "冠军国家" ("国家名称", "赛事id", "冠军数量") values ("印尼", "item_sports.2_3_14", "12随机")

insert into "冠军国家" ("国家名称", "赛事id", "冠军数量") values ("马来西亚", "item_sports.2_3_14", "12随机")

insert into "冠军国家" ("国家名称", "赛事id", "冠军数量") values ("日本", "item_sports.2_3_14", "12随机")

insert into "冠军国家" ("国家名称", "赛事id", "冠军数量") values ("印尼", "item_sports.2_3_11", "12随机")

insert into "羽毛球球员" ("词条id", "中文名", "性别", "国籍", "出生日期", "身高") values ("item_sports.2_3_16", "林丹", "男", "韩国", "1975", "160cm")

insert into "羽毛球球员" ("词条id", "中文名", "性别", "国籍", "出生日期", "身高") values ("item_sports.2_3_17", "李万华", "女", "印尼", "1990", "187cm")

insert into "羽毛球球员" ("词条id", "中文名", "性别", "国籍", "出生日期", "身高") values ("item_sports.2_3_18", "李敬元", "女", "丹麦", "1975", "160cm")

insert into "羽毛球球员" ("词条id", "中文名", "性别", "国籍", "出生日期", "身高") values ("item_sports.2_3_19", "鲍春来", "男", "马拉西亚", "1975", "187cm")

insert into "羽毛球球员" ("词条id", "中文名", "性别", "国籍", "出生日期", "身高") values ("item_sports.2_3_20", "蔡彬", "女", "日本", "1975", "187cm")

insert into "奥运会冠亚军" ("奥运会名称", "项目名称", "金牌获得者id", "银牌获得者id", "铜牌获得者id") values ("2000年悉尼奥运会", "男子单打", "item_sports.2_3_16", "item_sports.2_3_18", "item_sports.2_3_17")

insert into "奥运会冠亚军" ("奥运会名称", "项目名称", "金牌获得者id", "银牌获得者id", "铜牌获得者id") values ("2004年雅典奥运会", "女子单打", "item_sports.2_3_16", "item_sports.2_3_17", "item_sports.2_3_19")

insert into "奥运会冠亚军" ("奥运会名称", "项目名称", "金牌获得者id", "银牌获得者id", "铜牌获得者id") values ("2008年北京奥运会", "男子双打", "item_sports.2_3_18", "item_sports.2_3_16", "item_sports.2_3_17")

insert into "奥运会冠亚军" ("奥运会名称", "项目名称", "金牌获得者id", "银牌获得者id", "铜牌获得者id") values ("2012年伦敦奥运会", "女子双打", "item_sports.2_3_18", "item_sports.2_3_20", "item_sports.2_3_20")

insert into "奥运会冠亚军" ("奥运会名称", "项目名称", "金牌获得者id", "银牌获得者id", "铜牌获得者id") values ("2016年里约奥运会", "混合双打", "item_sports.2_3_18", "item_sports.2_3_16", "item_sports.2_3_17")

insert into "球员夺冠次数" ("球员id", "赛事id", "冠军次数", "亚军次数", "季军次数") values ("item_sports.2_3_18", "item_sports.2_3_11", "0", "0", "0")

insert into "球员夺冠次数" ("球员id", "赛事id", "冠军次数", "亚军次数", "季军次数") values ("item_sports.2_3_18", "item_sports.2_3_14", "12", "20", "15")

insert into "球员夺冠次数" ("球员id", "赛事id", "冠军次数", "亚军次数", "季军次数") values ("item_sports.2_3_19", "item_sports.2_3_11", "0", "0", "15")

insert into "球员夺冠次数" ("球员id", "赛事id", "冠军次数", "亚军次数", "季军次数") values ("item_sports.2_3_19", "item_sports.2_3_13", "12", "20", "0")

insert into "球员夺冠次数" ("球员id", "赛事id", "冠军次数", "亚军次数", "季军次数") values ("item_sports.2_3_19", "item_sports.2_3_14", "12", "20", "15")

