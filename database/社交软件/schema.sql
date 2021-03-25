PRAGMA foreign_keys = ON;

CREATE TABLE "公司" (
"词条id" int,
"名称" text,
"成立时间" time,
"位于城市" text,
primary key ("词条id")
);

CREATE TABLE "社交APP" (
"词条id" int,
"app名称" text,
"软件大小" int,
"注册用户量" int,
"日活跃用户量" time,
"母公司id" text,
primary key ("词条id"),
foreign key("母公司id") references "公司"("词条id")
);

CREATE TABLE "功能" (
"词条id" int,
"名称" text,
"简介" text,
primary key ("词条id")
);

CREATE TABLE "APP支持的功能" (
"功能id" int,
"appid" int,
"是否主要功能" binary,
foreign key("功能id") references "功能"("词条id")
);

insert into "公司" ("词条id", "名称", "成立时间", "位于城市") values ("item_software_8_86", "新浪", "1998", "北京")

insert into "公司" ("词条id", "名称", "成立时间", "位于城市") values ("item_software_8_87", "腾讯", "2015年", "深圳")

insert into "公司" ("词条id", "名称", "成立时间", "位于城市") values ("item_software_8_88", "今日头条", "1998", "杭州")

insert into "公司" ("词条id", "名称", "成立时间", "位于城市") values ("item_software_8_89", "阿里巴巴", "1998", "苏州")

insert into "公司" ("词条id", "名称", "成立时间", "位于城市") values ("item_software_8_90", "北京陌陌科技有限公司", "1998", "成都")

insert into "社交APP" ("词条id", "app名称", "软件大小", "注册用户量", "日活跃用户量", "母公司id") values ("item_software_8_91", "微信", "30M", "100万", "10万", "item_software_8_87")

insert into "社交APP" ("词条id", "app名称", "软件大小", "注册用户量", "日活跃用户量", "母公司id") values ("item_software_8_92", "微博", "90M", "10亿", "3亿", "item_software_8_89")

insert into "社交APP" ("词条id", "app名称", "软件大小", "注册用户量", "日活跃用户量", "母公司id") values ("item_software_8_93", "多闪", "90M", "100万", "3亿", "item_software_8_89")

insert into "社交APP" ("词条id", "app名称", "软件大小", "注册用户量", "日活跃用户量", "母公司id") values ("item_software_8_94", "聊天宝", "90M", "100万", "3亿", "item_software_8_89")

insert into "社交APP" ("词条id", "app名称", "软件大小", "注册用户量", "日活跃用户量", "母公司id") values ("item_software_8_95", "陌陌", "30M", "10亿", "10万", "item_software_8_87")

insert into "功能" ("词条id", "名称", "简介") values ("item_software_8_96", "视频", "播放电视剧等视频资源")

insert into "功能" ("词条id", "名称", "简介") values ("item_software_8_97", "聊天", "用于朋友")

insert into "功能" ("词条id", "名称", "简介") values ("item_software_8_98", "新闻资讯", "陌生人间聊天")

insert into "功能" ("词条id", "名称", "简介") values ("item_software_8_99", "购物", "获取最新新闻")

insert into "功能" ("词条id", "名称", "简介") values ("item_software_8_100", "支付", "轻松购物")

insert into "APP支持的功能" ("功能id", "appid", "是否主要功能") values ("item_software_8_98", "", "item_software_8_95")

insert into "APP支持的功能" ("功能id", "appid", "是否主要功能") values ("item_software_8_100", "", "item_software_8_93")

insert into "APP支持的功能" ("功能id", "appid", "是否主要功能") values ("item_software_8_99", "", "item_software_8_95")

insert into "APP支持的功能" ("功能id", "appid", "是否主要功能") values ("item_software_8_97", "", "item_software_8_93")

insert into "APP支持的功能" ("功能id", "appid", "是否主要功能") values ("item_software_8_100", "", "item_software_8_95")

