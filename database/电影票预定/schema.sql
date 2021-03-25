PRAGMA foreign_keys = ON;

CREATE TABLE "影院" (
"词条id" int,
"名称" text,
"地址" text,
"与当前距离" int,
"用户评分" int,
primary key ("词条id")
);

CREATE TABLE "电影" (
"词条id" int,
"名称" text,
"拍摄国家" text,
"类型" text,
"片长" int,
"豆瓣评分" int,
primary key ("词条id")
);

CREATE TABLE "影院上映电影" (
"电影id" int,
"影院id" int,
"上映时间" time,
"票价" int,
"余票数量" int,
foreign key("影院id") references "影院"("词条id"),
foreign key("电影id") references "电影"("词条id")
);

insert into "影院" ("词条id", "名称", "地址", "与当前距离", "用户评分") values ("item_task_dialogue_5_26", "沃美国际影城", "回龙观育之东路30号院", "1.6km", "3.8")

insert into "影院" ("词条id", "名称", "地址", "与当前距离", "用户评分") values ("item_task_dialogue_5_27", "华联影城", "回龙观西大直街111号", "3.2km", "4.7")

insert into "影院" ("词条id", "名称", "地址", "与当前距离", "用户评分") values ("item_task_dialogue_5_28", "中影国际影城", "北清路1号永旺国际影城", "1.6km", "4.7")

insert into "影院" ("词条id", "名称", "地址", "与当前距离", "用户评分") values ("item_task_dialogue_5_29", "保利国际影城", "黄平路19号院3号楼", "3.2km", "4.7")

insert into "影院" ("词条id", "名称", "地址", "与当前距离", "用户评分") values ("item_task_dialogue_5_30", "莱纳龙域影城", "龙域中街1号院1号楼", "3.2km", "3.8")

insert into "电影" ("词条id", "名称", "拍摄国家", "类型", "片长", "豆瓣评分") values ("item_task_dialogue_5_31", "海上钢琴师", "美国", "动画片", "90分", "6.0")

insert into "电影" ("词条id", "名称", "拍摄国家", "类型", "片长", "豆瓣评分") values ("item_task_dialogue_5_32", "两只老虎", "中国", "悬疑", "130分", "8.5")

insert into "电影" ("词条id", "名称", "拍摄国家", "类型", "片长", "豆瓣评分") values ("item_task_dialogue_5_33", "摔跤吧爸爸", "印度", "科幻", "90分", "6.0")

insert into "电影" ("词条id", "名称", "拍摄国家", "类型", "片长", "豆瓣评分") values ("item_task_dialogue_5_34", "天气之子", "日本", "剧情", "90分", "8.5")

insert into "电影" ("词条id", "名称", "拍摄国家", "类型", "片长", "豆瓣评分") values ("item_task_dialogue_5_35", "绝杀慕尼黑", "俄罗斯", "战争", "90分", "8.5")

insert into "影院上映电影" ("电影id", "影院id", "上映时间", "票价", "余票数量") values ("item_task_dialogue_5_35", "item_task_dialogue_5_29", "9:40", "32.9", "0")

insert into "影院上映电影" ("电影id", "影院id", "上映时间", "票价", "余票数量") values ("item_task_dialogue_5_33", "item_task_dialogue_5_29", "10:20", "54.9", "30")

insert into "影院上映电影" ("电影id", "影院id", "上映时间", "票价", "余票数量") values ("item_task_dialogue_5_31", "item_task_dialogue_5_30", "11:50", "54.9", "0")

insert into "影院上映电影" ("电影id", "影院id", "上映时间", "票价", "余票数量") values ("item_task_dialogue_5_35", "item_task_dialogue_5_27", "1:30", "54.9", "30")

insert into "影院上映电影" ("电影id", "影院id", "上映时间", "票价", "余票数量") values ("item_task_dialogue_5_33", "item_task_dialogue_5_28", "2:40", "54.9", "30")

