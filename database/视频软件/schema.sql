PRAGMA foreign_keys = ON;

CREATE TABLE "视频平台" (
"词条id" int,
"平台名称" text,
"有无插件" binary,
"客户端大小" int,
"会费" int,
"好评率" int,
primary key ("词条id")
);

CREATE TABLE "各视频平台自制剧" (
"词条id" int,
"名称" text,
"平台id" int,
"播出年份" time,
"类型" text,
"观看量" int,
"评分" int,
primary key ("词条id"),
foreign key("平台id") references "视频平台"("词条id")
);

CREATE TABLE "体育赛事" (
"词条id" int,
"名称" text,
"所属项目" text,
primary key ("词条id")
);

CREATE TABLE "赛事转播" (
"赛事id" int,
"平台id" int,
"转播费" int,
foreign key("赛事id") references "体育赛事"("词条id"),
foreign key("平台id") references "视频平台"("词条id")
);

insert into "视频平台" ("词条id", "平台名称", "有无插件", "客户端大小", "会费", "好评率") values ("item_software_1_1", "爱奇艺", "有", "30.8M", "150", "59%")

insert into "视频平台" ("词条id", "平台名称", "有无插件", "客户端大小", "会费", "好评率") values ("item_software_1_2", "优酷", "无", "60.8M", "199元", "85%")

insert into "视频平台" ("词条id", "平台名称", "有无插件", "客户端大小", "会费", "好评率") values ("item_software_1_3", "腾讯视频", "无", "60.8M", "199元", "59%")

insert into "视频平台" ("词条id", "平台名称", "有无插件", "客户端大小", "会费", "好评率") values ("item_software_1_4", "哔哩哔哩", "有", "60.8M", "150", "59%")

insert into "视频平台" ("词条id", "平台名称", "有无插件", "客户端大小", "会费", "好评率") values ("item_software_1_5", "芒果视频", "有", "60.8M", "150", "59%")

insert into "各视频平台自制剧" ("词条id", "名称", "平台id", "播出年份", "类型", "观看量", "评分") values ("item_software_1_6", "奇葩说", "item_software_1_4", "2014", "网剧", "10000", "5.5")

insert into "各视频平台自制剧" ("词条id", "名称", "平台id", "播出年份", "类型", "观看量", "评分") values ("item_software_1_7", "创造101", "item_software_1_3", "2018", "网络电影", "500000", "9.1")

insert into "各视频平台自制剧" ("词条id", "名称", "平台id", "播出年份", "类型", "观看量", "评分") values ("item_software_1_8", "不做家务的男人", "item_software_1_2", "2018", "网综", "10000", "5.5")

insert into "各视频平台自制剧" ("词条id", "名称", "平台id", "播出年份", "类型", "观看量", "评分") values ("item_software_1_9", "心灵法医", "item_software_1_3", "2018", "网综", "500000", "5.5")

insert into "各视频平台自制剧" ("词条id", "名称", "平台id", "播出年份", "类型", "观看量", "评分") values ("item_software_1_10", "飞翔少年", "item_software_1_4", "2018", "网络电影", "10000", "5.5")

insert into "体育赛事" ("词条id", "名称", "所属项目") values ("item_software_1_11", "2019-2020赛季CBA比赛", "篮球")

insert into "体育赛事" ("词条id", "名称", "所属项目") values ("item_software_1_12", "2019-2020中国女排比赛", "足球")

insert into "体育赛事" ("词条id", "名称", "所属项目") values ("item_software_1_13", "2019总统杯", "网球")

insert into "体育赛事" ("词条id", "名称", "所属项目") values ("item_software_1_14", "2019-2020NBA篮球比赛", "高尔夫")

insert into "体育赛事" ("词条id", "名称", "所属项目") values ("item_software_1_15", "2019年女排大奖赛", "体操")

insert into "赛事转播" ("赛事id", "平台id", "转播费") values ("item_software_1_12", "item_software_1_5", "1000万")

insert into "赛事转播" ("赛事id", "平台id", "转播费") values ("item_software_1_11", "item_software_1_3", "1亿")

insert into "赛事转播" ("赛事id", "平台id", "转播费") values ("item_software_1_12", "item_software_1_4", "1000万")

insert into "赛事转播" ("赛事id", "平台id", "转播费") values ("item_software_1_13", "item_software_1_4", "1亿")

insert into "赛事转播" ("赛事id", "平台id", "转播费") values ("item_software_1_15", "item_software_1_4", "1000万")

