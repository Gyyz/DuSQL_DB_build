PRAGMA foreign_keys = ON;

CREATE TABLE "电影" (
"词条id" int,
"影名" text,
"语言" text,
"类型" text,
"豆瓣评分" int,
"评价人数" int,
"5星占比" int,
primary key ("词条id")
);

CREATE TABLE "一周口碑榜" (
"电影id" int,
"名次" int,
"名次变化" int,
primary key ("电影id"),
foreign key("电影id") references "电影"("词条id")
);

CREATE TABLE "top10票房榜" (
"电影id" int,
"上映日期" time,
"总票房" int,
"制作预算" int,
primary key ("电影id"),
foreign key("电影id") references "电影"("词条id")
);

CREATE TABLE "top100电影" (
"电影id" int,
"名次" int,
"点赞次数" int,
primary key ("电影id"),
foreign key("电影id") references "电影"("词条id")
);

insert into "电影" ("词条id", "影名", "语言", "类型", "豆瓣评分", "评价人数", "5星占比") values ("item_entertainment_5_41", "好莱坞往事", "英语", "悬疑", "3.4", "5000人", "40%")

insert into "电影" ("词条id", "影名", "语言", "类型", "豆瓣评分", "评价人数", "5星占比") values ("item_entertainment_5_42", "两只老虎", "汉语", "喜剧", "9.3", "500万", "80%")

insert into "电影" ("词条id", "影名", "语言", "类型", "豆瓣评分", "评价人数", "5星占比") values ("item_entertainment_5_43", "天气之子", "日语", "爱情", "9.3", "500万", "80%")

insert into "电影" ("词条id", "影名", "语言", "类型", "豆瓣评分", "评价人数", "5星占比") values ("item_entertainment_5_44", "釜山行", "韩语", "都市情感", "9.3", "500万", "80%")

insert into "电影" ("词条id", "影名", "语言", "类型", "豆瓣评分", "评价人数", "5星占比") values ("item_entertainment_5_45", "决战慕尼黑", "俄语", "校园励志", "3.4", "5000人", "80%")

insert into "一周口碑榜" ("电影id", "名次", "名次变化") values ("item_entertainment_5_44", "1", "-3")

insert into "一周口碑榜" ("电影id", "名次", "名次变化") values ("item_entertainment_5_43", "100", "+5")

insert into "一周口碑榜" ("电影id", "名次", "名次变化") values ("item_entertainment_5_43", "1", "+5")

insert into "一周口碑榜" ("电影id", "名次", "名次变化") values ("item_entertainment_5_41", "1", "+5")

insert into "一周口碑榜" ("电影id", "名次", "名次变化") values ("item_entertainment_5_45", "100", "-3")

insert into "top10票房榜" ("电影id", "上映日期", "总票房", "制作预算") values ("item_entertainment_5_45", "2019年1月1日", "1000万", "500万")

insert into "top10票房榜" ("电影id", "上映日期", "总票房", "制作预算") values ("item_entertainment_5_43", "2019年11月20日", "10亿", "5000万")

insert into "top10票房榜" ("电影id", "上映日期", "总票房", "制作预算") values ("item_entertainment_5_43", "2019年11月20日", "10亿", "5000万")

insert into "top10票房榜" ("电影id", "上映日期", "总票房", "制作预算") values ("item_entertainment_5_42", "2019年11月20日", "1000万", "5000万")

insert into "top10票房榜" ("电影id", "上映日期", "总票房", "制作预算") values ("item_entertainment_5_42", "2019年1月1日", "1000万", "5000万")

insert into "top100电影" ("电影id", "名次", "点赞次数") values ("item_entertainment_5_43", "1", "10万")

insert into "top100电影" ("电影id", "名次", "点赞次数") values ("item_entertainment_5_41", "100", "1亿")

insert into "top100电影" ("电影id", "名次", "点赞次数") values ("item_entertainment_5_41", "1", "1亿")

insert into "top100电影" ("电影id", "名次", "点赞次数") values ("item_entertainment_5_42", "100", "1亿")

insert into "top100电影" ("电影id", "名次", "点赞次数") values ("item_entertainment_5_41", "100", "10万")

