PRAGMA foreign_keys = ON;

CREATE TABLE "电影" (
"词条id" int,
"名称" text,
"片长" int,
"类型" text,
"拍摄国家" text,
"排名" int,
"影评数" int,
"评分" int,
primary key ("词条id")
);

CREATE TABLE "影院" (
"词条id" int,
"名称" text,
"地址" text,
"会员费" int,
"影厅数" int,
"评分" int,
primary key ("词条id")
);

CREATE TABLE "电影上映" (
"电影id" int,
"影院id" int,
"播放日期" time,
"播放时间" time,
"票价" int,
"会员票价" int,
"余票" int,
foreign key("电影id") references "电影"("词条id"),
foreign key("影院id") references "影院"("词条id")
);

insert into "电影" ("词条id", "名称", "片长", "类型", "拍摄国家", "排名", "影评数", "评分") values ("item_entertainment_10_106", "利刃出鞘", "90分", "情感", "美国", "1", "990", "6.7")

insert into "电影" ("词条id", "名称", "片长", "类型", "拍摄国家", "排名", "影评数", "评分") values ("item_entertainment_10_107", "印度制造", "150分", "爱情", "印度", "20", "5800", "8.9")

insert into "电影" ("词条id", "名称", "片长", "类型", "拍摄国家", "排名", "影评数", "评分") values ("item_entertainment_10_108", "两只老虎", "90分", "喜剧", "中国", "20", "990", "6.7")

insert into "电影" ("词条id", "名称", "片长", "类型", "拍摄国家", "排名", "影评数", "评分") values ("item_entertainment_10_109", "决战慕尼黑", "150分", "悬疑", "俄罗斯", "20", "990", "6.7")

insert into "电影" ("词条id", "名称", "片长", "类型", "拍摄国家", "排名", "影评数", "评分") values ("item_entertainment_10_110", "天气之子", "90分", "恐怖", "日本", "1", "990", "6.7")

insert into "影院" ("词条id", "名称", "地址", "会员费", "影厅数", "评分") values ("item_entertainment_10_111", "北京沃美影院", "育之东路30号院华联商厦4层", "30", "8", "3.5")

insert into "影院" ("词条id", "名称", "地址", "会员费", "影厅数", "评分") values ("item_entertainment_10_112", "星美国际影院", "西大直街111号", "60元", "15", "4.9")

insert into "影院" ("词条id", "名称", "地址", "会员费", "影厅数", "评分") values ("item_entertainment_10_113", "中影永旺店", "北清路1号永旺国际商城", "60元", "8", "4.9")

insert into "影院" ("词条id", "名称", "地址", "会员费", "影厅数", "评分") values ("item_entertainment_10_114", "保利国际影城龙旗店", "黄平路19号院3号楼龙旗购物中心", "60元", "8", "3.5")

insert into "影院" ("词条id", "名称", "地址", "会员费", "影厅数", "评分") values ("item_entertainment_10_115", "万达影城龙德广场店", "立汤路186号龙德广场五层", "60元", "15", "4.9")

insert into "电影上映" ("电影id", "影院id", "播放日期", "播放时间", "票价", "会员票价", "余票") values ("item_entertainment_10_106", "item_entertainment_10_115", "11月20日", "9:40", "32.9", "27.9", "0")

insert into "电影上映" ("电影id", "影院id", "播放日期", "播放时间", "票价", "会员票价", "余票") values ("item_entertainment_10_106", "item_entertainment_10_115", "11月30日", "10:20", "54.9", "45.9", "30")

insert into "电影上映" ("电影id", "影院id", "播放日期", "播放时间", "票价", "会员票价", "余票") values ("item_entertainment_10_106", "item_entertainment_10_114", "11月20日", "12:30", "54.9", "27.9", "30")

insert into "电影上映" ("电影id", "影院id", "播放日期", "播放时间", "票价", "会员票价", "余票") values ("item_entertainment_10_107", "item_entertainment_10_114", "11月20日", "14:40", "32.9", "27.9", "30")

insert into "电影上映" ("电影id", "影院id", "播放日期", "播放时间", "票价", "会员票价", "余票") values ("item_entertainment_10_106", "item_entertainment_10_115", "11月30日", "15:50", "54.9", "27.9", "30")

