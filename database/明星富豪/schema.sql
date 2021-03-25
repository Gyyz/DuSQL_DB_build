PRAGMA foreign_keys = ON;

CREATE TABLE "明星" (
"词条id" int,
"姓名" text,
"国籍" text,
"性别" text,
"职业" text,
"年龄" int,
"薪酬" int,
"票房" int,
primary key ("词条id")
);

CREATE TABLE "2018年财富排名" (
"明星id" int,
"排名" int,
"资产" int,
primary key ("明星id"),
foreign key("明星id") references "明星"("词条id")
);

CREATE TABLE "2017年财富排名" (
"明星id" int,
"排名" int,
"资产" int,
primary key ("明星id"),
foreign key("明星id") references "明星"("词条id")
);

insert into "明星" ("词条id", "姓名", "国籍", "性别", "职业", "年龄", "薪酬", "票房") values ("item_entertainment_18_211", "吴京", "中国", "男", "演员", "25", "3000万", "1亿")

insert into "明星" ("词条id", "姓名", "国籍", "性别", "职业", "年龄", "薪酬", "票房") values ("item_entertainment_18_212", "黄渤", "美国", "女", "导演", "45岁", "8000万", "10亿")

insert into "明星" ("词条id", "姓名", "国籍", "性别", "职业", "年龄", "薪酬", "票房") values ("item_entertainment_18_213", "胡歌", "新加坡", "男", "歌手", "25", "3000万", "10亿")

insert into "明星" ("词条id", "姓名", "国籍", "性别", "职业", "年龄", "薪酬", "票房") values ("item_entertainment_18_214", "范冰冰", "韩国", "女", "主持人", "45岁", "8000万", "1亿")

insert into "明星" ("词条id", "姓名", "国籍", "性别", "职业", "年龄", "薪酬", "票房") values ("item_entertainment_18_215", "赵丽颖", "日本", "女", "运动员", "25", "8000万", "1亿")

insert into "2018年财富排名" ("明星id", "排名", "资产") values ("item_entertainment_18_212", "1", "1亿")

insert into "2018年财富排名" ("明星id", "排名", "资产") values ("item_entertainment_18_213", "100", "10亿")

insert into "2018年财富排名" ("明星id", "排名", "资产") values ("item_entertainment_18_215", "1", "10亿")

insert into "2018年财富排名" ("明星id", "排名", "资产") values ("item_entertainment_18_211", "100", "1亿")

insert into "2018年财富排名" ("明星id", "排名", "资产") values ("item_entertainment_18_211", "1", "1亿")

insert into "2017年财富排名" ("明星id", "排名", "资产") values ("item_entertainment_18_213", "1", "1亿")

insert into "2017年财富排名" ("明星id", "排名", "资产") values ("item_entertainment_18_214", "100", "10亿")

insert into "2017年财富排名" ("明星id", "排名", "资产") values ("item_entertainment_18_214", "100", "1亿")

insert into "2017年财富排名" ("明星id", "排名", "资产") values ("item_entertainment_18_214", "1", "10亿")

insert into "2017年财富排名" ("明星id", "排名", "资产") values ("item_entertainment_18_215", "1", "1亿")

