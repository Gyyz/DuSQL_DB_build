PRAGMA foreign_keys = ON;

CREATE TABLE "频道收视" (
"词条id" int,
"频道名称" text,
"直播关注度" int,
"市场份额" int,
"排名" int,
primary key ("词条id")
);

CREATE TABLE "节目收视" (
"节目名称" text,
"频道id" int,
"播出时间" time,
"直播关注度" int,
"市场份额" int,
"排名" int,
foreign key("频道id") references "频道收视"("词条id")
);

CREATE TABLE "综艺节目植入榜" (
"词条id" int,
"节目名称" text,
"播出频道id" int,
"总时长" int,
"频次" int,
"点播关注度" int,
primary key ("词条id"),
foreign key("播出频道id") references "频道收视"("词条id")
);

insert into "频道收视" ("词条id", "频道名称", "直播关注度", "市场份额", "排名") values ("item_entertainment_6_61", "中央1台", "0.07%", "0.6%", "1")

insert into "频道收视" ("词条id", "频道名称", "直播关注度", "市场份额", "排名") values ("item_entertainment_6_62", "湖南卫视", "0.6%", "7.3%", "50")

insert into "频道收视" ("词条id", "频道名称", "直播关注度", "市场份额", "排名") values ("item_entertainment_6_63", "东方卫视", "0.6%", "7.3%", "1")

insert into "频道收视" ("词条id", "频道名称", "直播关注度", "市场份额", "排名") values ("item_entertainment_6_64", "江苏卫视", "0.07%", "0.6%", "1")

insert into "频道收视" ("词条id", "频道名称", "直播关注度", "市场份额", "排名") values ("item_entertainment_6_65", "浙江卫视", "0.07%", "0.6%", "1")

insert into "节目收视" ("节目名称", "频道id", "播出时间", "直播关注度", "市场份额", "排名") values ("天气预报", "item_entertainment_6_64", "19:31-19:40", "1.1%", "5.8%", "1")

insert into "节目收视" ("节目名称", "频道id", "播出时间", "直播关注度", "市场份额", "排名") values ("新闻联播", "item_entertainment_6_63", "19:00-19:30", "2.9%", "14.5%", "50")

insert into "节目收视" ("节目名称", "频道id", "播出时间", "直播关注度", "市场份额", "排名") values ("中国男子篮球职业联赛", "item_entertainment_6_61", "19:23-21:44", "2.9%", "5.8%", "50")

insert into "节目收视" ("节目名称", "频道id", "播出时间", "直播关注度", "市场份额", "排名") values ("乱世郎中", "item_entertainment_6_65", "18:19-20:04", "1.1%", "5.8%", "50")

insert into "节目收视" ("节目名称", "频道id", "播出时间", "直播关注度", "市场份额", "排名") values ("娘亲大舅", "item_entertainment_6_61", "18:33-19:29", "1.1%", "5.8%", "1")

insert into "综艺节目植入榜" ("词条id", "节目名称", "播出频道id", "总时长", "频次", "点播关注度") values ("item_entertainment_6_66", "跨界歌王第四季", "item_entertainment_6_61", "7000秒", "600", "0.5%")

insert into "综艺节目植入榜" ("词条id", "节目名称", "播出频道id", "总时长", "频次", "点播关注度") values ("item_entertainment_6_67", "我们恋爱吧", "item_entertainment_6_64", "34590秒", "1700次", "1.2%")

insert into "综艺节目植入榜" ("词条id", "节目名称", "播出频道id", "总时长", "频次", "点播关注度") values ("item_entertainment_6_68", "非诚勿扰", "item_entertainment_6_65", "34590秒", "600", "0.5%")

insert into "综艺节目植入榜" ("词条id", "节目名称", "播出频道id", "总时长", "频次", "点播关注度") values ("item_entertainment_6_69", "中国梦之声我们的歌", "item_entertainment_6_62", "34590秒", "1700次", "1.2%")

insert into "综艺节目植入榜" ("词条id", "节目名称", "播出频道id", "总时长", "频次", "点播关注度") values ("item_entertainment_6_70", "蒙面唱将猜猜猜第四季", "item_entertainment_6_62", "34590秒", "600", "1.2%")

