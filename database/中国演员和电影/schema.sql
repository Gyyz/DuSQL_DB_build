PRAGMA foreign_keys = ON;

CREATE TABLE "演职员" (
"词条id" int,
"姓名" text,
"身高" int,
"体重" int,
"出生地" text,
"出生日期" time,
"毕业院校" text,
"职业" text,
primary key ("词条id")
);

CREATE TABLE "电影" (
"词条id" int,
"电影名称" text,
"制片地区" text,
"制片成本" int,
"片长" int,
"导演" int,
"上映时间" time,
"票房" int,
"类型" text,
primary key ("词条id")
);

CREATE TABLE "演员和电影" (
"演员id" int,
"电影id" int,
"饰演角色" text,
"片酬" int,
foreign key("电影id") references "电影"("词条id"),
foreign key("演员id") references "演职员"("词条id")
);

CREATE TABLE "电影平台" (
"电影id" int,
"播放平台" text,
"播放量" int,
"评分" int,
foreign key("电影id") references "电影"("词条id")
);

insert into "演职员" ("词条id", "姓名", "身高", "体重", "出生地", "出生日期", "毕业院校", "职业") values ("item_entertainment_2_16", "陈道明", "165厘米", "45kg", "天津", "1960年8月8日", "中国电影学院", "演员")

insert into "演职员" ("词条id", "姓名", "身高", "体重", "出生地", "出生日期", "毕业院校", "职业") values ("item_entertainment_2_17", "陈凯歌", "180厘米", "70kg", "北京", "1978年4月1日", "中央戏剧学院", "导演")

insert into "演职员" ("词条id", "姓名", "身高", "体重", "出生地", "出生日期", "毕业院校", "职业") values ("item_entertainment_2_18", "葛优", "180厘米", "70kg", "四川省成都市", "1978年4月1日", "上海戏剧学院", "导演")

insert into "演职员" ("词条id", "姓名", "身高", "体重", "出生地", "出生日期", "毕业院校", "职业") values ("item_entertainment_2_19", "巩俐", "180厘米", "45kg", "重庆市", "1960年8月8日", "中国传媒大学", "导演")

insert into "演职员" ("词条id", "姓名", "身高", "体重", "出生地", "出生日期", "毕业院校", "职业") values ("item_entertainment_2_20", "章子怡", "180厘米", "70kg", "新疆省乌鲁木齐市", "1960年8月8日", "南京艺术学院", "演员")

insert into "电影" ("词条id", "电影名称", "制片地区", "制片成本", "片长", "导演", "上映时间", "票房", "类型") values ("item_entertainment_2_21", "烈日灼心", "中国", "500万", "90分", "曹保平", "2015年5月1日", "500万", "喜剧")

insert into "电影" ("词条id", "电影名称", "制片地区", "制片成本", "片长", "导演", "上映时间", "票房", "类型") values ("item_entertainment_2_22", "速度与激情6", "美国", "3亿元", "130分", "林超贤", "2019年10月1日", "10亿", "爱情")

insert into "电影" ("词条id", "电影名称", "制片地区", "制片成本", "片长", "导演", "上映时间", "票房", "类型") values ("item_entertainment_2_23", "釜山行", "韩国", "3亿元", "130分", "罗伯·科恩", "2015年5月1日", "10亿", "励志")

insert into "电影" ("词条id", "电影名称", "制片地区", "制片成本", "片长", "导演", "上映时间", "票房", "类型") values ("item_entertainment_2_24", "何以为家", "利比亚", "3亿元", "90分", "延相昊", "2015年5月1日", "10亿", "悬疑")

insert into "电影" ("词条id", "电影名称", "制片地区", "制片成本", "片长", "导演", "上映时间", "票房", "类型") values ("item_entertainment_2_25", "摔跤吧爸爸", "印度", "3亿元", "130分", "尼特什·提瓦瑞", "2019年10月1日", "10亿", "动作")

insert into "演员和电影" ("演员id", "电影id", "饰演角色", "片酬") values ("item_entertainment_2_17", "item_entertainment_2_23", "冷锋", "3000万")

insert into "演员和电影" ("演员id", "电影id", "饰演角色", "片酬") values ("item_entertainment_2_18", "item_entertainment_2_21", "徐浪", "3500万")

insert into "演员和电影" ("演员id", "电影id", "饰演角色", "片酬") values ("item_entertainment_2_20", "item_entertainment_2_25", "叶问", "4000万")

insert into "演员和电影" ("演员id", "电影id", "饰演角色", "片酬") values ("item_entertainment_2_19", "item_entertainment_2_22", "耿浩", "4500万")

insert into "演员和电影" ("演员id", "电影id", "饰演角色", "片酬") values ("item_entertainment_2_17", "item_entertainment_2_21", " 辛小丰", "7000万")

insert into "电影平台" ("电影id", "播放平台", "播放量", "评分") values ("item_entertainment_2_24", "爱奇艺", "1万", "1")

insert into "电影平台" ("电影id", "播放平台", "播放量", "评分") values ("item_entertainment_2_21", "优酷", "10万", "10")

insert into "电影平台" ("电影id", "播放平台", "播放量", "评分") values ("item_entertainment_2_25", "腾讯", "1万", "10")

insert into "电影平台" ("电影id", "播放平台", "播放量", "评分") values ("item_entertainment_2_23", "爱奇艺", "10万", "10")

insert into "电影平台" ("电影id", "播放平台", "播放量", "评分") values ("item_entertainment_2_22", "爱奇艺", "1万", "1")

