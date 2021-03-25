PRAGMA foreign_keys = ON;

CREATE TABLE "品牌" (
"词条id" int,
"名称" text,
"所属公司" text,
"行业" text,
primary key ("词条id")
);

CREATE TABLE "综艺节目" (
"词条id" int,
"名称" text,
"播出年份" time,
"播出电视台" text,
"收视率" int,
"市场份额" int,
"观众评分" int,
primary key ("词条id")
);

CREATE TABLE "综艺节目赞助商" (
"品牌id" int,
"综艺节目id" int,
"赞助方式" text,
"广告时长" int,
"广告次数" int,
foreign key("综艺节目id") references "综艺节目"("词条id"),
foreign key("品牌id") references "品牌"("词条id")
);

insert into "品牌" ("词条id", "名称", "所属公司", "行业") values ("item_software_3_26", "vivo", "维沃移动通信有限公司", "手机")

insert into "品牌" ("词条id", "名称", "所属公司", "行业") values ("item_software_3_27", "oppo", " OPPO广东移动通信有限公司", "饮料")

insert into "品牌" ("词条id", "名称", "所属公司", "行业") values ("item_software_3_28", "京东商城", "北京京东世纪贸易有限公司", "食品")

insert into "品牌" ("词条id", "名称", "所属公司", "行业") values ("item_software_3_29", "拼多多", "拼多多(上海", "电商")

insert into "品牌" ("词条id", "名称", "所属公司", "行业") values ("item_software_3_30", "小米手机", "北京京东世纪贸易有限公司", "酒水")

insert into "综艺节目" ("词条id", "名称", "播出年份", "播出电视台", "收视率", "市场份额", "观众评分") values ("item_software_3_31", "奔跑吧兄弟", "2015", "浙江卫视", "1.0", "0.11", "6")

insert into "综艺节目" ("词条id", "名称", "播出年份", "播出电视台", "收视率", "市场份额", "观众评分") values ("item_software_3_32", "快乐大本营", "2018", "湖南卫视", "2.1%", "0.9%", "9")

insert into "综艺节目" ("词条id", "名称", "播出年份", "播出电视台", "收视率", "市场份额", "观众评分") values ("item_software_3_33", "我们相爱吧", "2015", "江苏卫视", "1.0", "0.9%", "9")

insert into "综艺节目" ("词条id", "名称", "播出年份", "播出电视台", "收视率", "市场份额", "观众评分") values ("item_software_3_34", "极限挑战", "2015", "东方卫视", "1.0", "0.9%", "6")

insert into "综艺节目" ("词条id", "名称", "播出年份", "播出电视台", "收视率", "市场份额", "观众评分") values ("item_software_3_35", "跨界歌王", "2018", "北京卫视", "2.1%", "0.11", "6")

insert into "综艺节目赞助商" ("品牌id", "综艺节目id", "赞助方式", "广告时长", "广告次数") values ("item_software_3_29", "item_software_3_34", "联合赞助", "10秒", "3")

insert into "综艺节目赞助商" ("品牌id", "综艺节目id", "赞助方式", "广告时长", "广告次数") values ("item_software_3_30", "item_software_3_35", "独家赞助", "60秒", "8")

insert into "综艺节目赞助商" ("品牌id", "综艺节目id", "赞助方式", "广告时长", "广告次数") values ("item_software_3_27", "item_software_3_34", "独家赞助", "60秒", "3")

insert into "综艺节目赞助商" ("品牌id", "综艺节目id", "赞助方式", "广告时长", "广告次数") values ("item_software_3_28", "item_software_3_33", "独家赞助", "10秒", "3")

insert into "综艺节目赞助商" ("品牌id", "综艺节目id", "赞助方式", "广告时长", "广告次数") values ("item_software_3_27", "item_software_3_31", "联合赞助", "10秒", "8")

