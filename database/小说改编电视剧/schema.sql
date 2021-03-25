PRAGMA foreign_keys = ON;

CREATE TABLE "电视剧" (
"词条id" int,
"剧名" text,
"首播时间" time,
"集数" int,
primary key ("词条id")
);

CREATE TABLE "小说" (
"词条id" int,
"小说名" text,
"作者" text,
"字数" int,
"状态" text,
primary key ("词条id")
);

CREATE TABLE "改编的电视剧" (
"小说id" int,
"电视剧id" int,
"评分" int,
foreign key("电视剧id") references "电视剧"("词条id"),
foreign key("小说id") references "小说"("词条id")
);

insert into "电视剧" ("词条id", "剧名", "首播时间", "集数") values ("item_entertainment_17_201", "87版红楼梦", "1987年", "20集")

insert into "电视剧" ("词条id", "剧名", "首播时间", "集数") values ("item_entertainment_17_202", "98年央视版水浒传", "1998年", "50集")

insert into "电视剧" ("词条id", "剧名", "首播时间", "集数") values ("item_entertainment_17_203", "94年央视版三国演义", "1987年", "50集")

insert into "电视剧" ("词条id", "剧名", "首播时间", "集数") values ("item_entertainment_17_204", "98年还珠格格", "1987年", "20集")

insert into "电视剧" ("词条id", "剧名", "首播时间", "集数") values ("item_entertainment_17_205", "98年台湾版神雕侠侣", "1998年", "50集")

insert into "小说" ("词条id", "小说名", "作者", "字数", "状态") values ("item_entertainment_17_206", "红楼梦", "曹雪芹", "10万", "完结")

insert into "小说" ("词条id", "小说名", "作者", "字数", "状态") values ("item_entertainment_17_207", "三国演义", "罗贯中", "100万", "更新")

insert into "小说" ("词条id", "小说名", "作者", "字数", "状态") values ("item_entertainment_17_208", "还珠格格", "琼瑶", "10万", "更新")

insert into "小说" ("词条id", "小说名", "作者", "字数", "状态") values ("item_entertainment_17_209", "神雕侠侣", "金庸", "10万", "更新")

insert into "小说" ("词条id", "小说名", "作者", "字数", "状态") values ("item_entertainment_17_210", "陆小凤传奇", "古龙", "10万", "完结")

insert into "改编的电视剧" ("小说id", "电视剧id", "评分") values ("item_entertainment_17_209", "item_entertainment_17_202", "7")

insert into "改编的电视剧" ("小说id", "电视剧id", "评分") values ("item_entertainment_17_206", "item_entertainment_17_201", "8.5")

insert into "改编的电视剧" ("小说id", "电视剧id", "评分") values ("item_entertainment_17_207", "item_entertainment_17_203", "8.5")

insert into "改编的电视剧" ("小说id", "电视剧id", "评分") values ("item_entertainment_17_209", "item_entertainment_17_204", "8.5")

insert into "改编的电视剧" ("小说id", "电视剧id", "评分") values ("item_entertainment_17_206", "item_entertainment_17_205", "7")

