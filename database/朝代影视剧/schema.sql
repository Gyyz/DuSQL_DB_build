PRAGMA foreign_keys = ON;

CREATE TABLE "帝王" (
"词条id" int,
"姓名" text,
"朝代" text,
"在位年数" int,
primary key ("词条id")
);

CREATE TABLE "电影" (
"词条id" int,
"电影名称" text,
"上映时间" time,
"帝王id" int,
primary key ("词条id"),
foreign key("帝王id") references "帝王"("词条id")
);

CREATE TABLE "电视剧" (
"词条id" int,
"剧名" text,
"首播时间" time,
"剧集" int,
"帝王id" int,
primary key ("词条id"),
foreign key("帝王id") references "帝王"("词条id")
);

insert into "帝王" ("词条id", "姓名", "朝代", "在位年数") values ("item_entertainment_1_1", "爱新觉罗·皇太极", "清朝", "17年")

insert into "帝王" ("词条id", "姓名", "朝代", "在位年数") values ("item_entertainment_1_2", "爱新觉罗·福临", "清朝", "18年")

insert into "帝王" ("词条id", "姓名", "朝代", "在位年数") values ("item_entertainment_1_3", "爱新觉罗·玄烨", "清朝", "61年")

insert into "帝王" ("词条id", "姓名", "朝代", "在位年数") values ("item_entertainment_1_4", "朱元璋", "明朝", "30年")

insert into "帝王" ("词条id", "姓名", "朝代", "在位年数") values ("item_entertainment_1_5", "李世民", "唐朝", "23年")

insert into "电影" ("词条id", "电影名称", "上映时间", "帝王id") values ("item_entertainment_1_6", "末代皇帝", "1985年", "item_entertainment_1_2")

insert into "电影" ("词条id", "电影名称", "上映时间", "帝王id") values ("item_entertainment_1_7", "杨贵妃", "1990年", "item_entertainment_1_2")

insert into "电影" ("词条id", "电影名称", "上映时间", "帝王id") values ("item_entertainment_1_8", "大明劫", "1985年", "item_entertainment_1_1")

insert into "电影" ("词条id", "电影名称", "上映时间", "帝王id") values ("item_entertainment_1_9", "赵氏孤儿", "1990年", "item_entertainment_1_1")

insert into "电影" ("词条id", "电影名称", "上映时间", "帝王id") values ("item_entertainment_1_10", "赤壁之战", "1990年", "item_entertainment_1_3")

insert into "电视剧" ("词条id", "剧名", "首播时间", "剧集", "帝王id") values ("item_entertainment_1_11", "康熙王朝", "2000年", "50", "item_entertainment_1_2")

insert into "电视剧" ("词条id", "剧名", "首播时间", "剧集", "帝王id") values ("item_entertainment_1_12", "汉武大帝", "2008年", "70集", "item_entertainment_1_5")

insert into "电视剧" ("词条id", "剧名", "首播时间", "剧集", "帝王id") values ("item_entertainment_1_13", "雍正王朝", "2008年", "50", "item_entertainment_1_4")

insert into "电视剧" ("词条id", "剧名", "首播时间", "剧集", "帝王id") values ("item_entertainment_1_14", "大秦帝国", "2000年", "50", "item_entertainment_1_2")

insert into "电视剧" ("词条id", "剧名", "首播时间", "剧集", "帝王id") values ("item_entertainment_1_15", "开创盛世", "2000年", "70集", "item_entertainment_1_3")

