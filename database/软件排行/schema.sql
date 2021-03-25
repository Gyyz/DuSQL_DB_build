PRAGMA foreign_keys = ON;

CREATE TABLE "应用商店" (
"词条id" int,
"名称" text,
"应用软件数" int,
"累计下载次数" int,
primary key ("词条id")
);

CREATE TABLE "应用商店支持国家" (
"应用商店id" int,
"国家" text,
"用户是否可以购买应用程序" binary,
"开发人员是否可以出售应用程序" binary,
foreign key("应用商店id") references "应用商店"("词条id")
);

CREATE TABLE "软件" (
"词条id" int,
"名称" text,
"用途" text,
primary key ("词条id")
);

CREATE TABLE "软件下载量" (
"软件id" int,
"应用商店id" int,
"下载量" int,
"评价人数" int,
"好评数" int,
foreign key("软件id") references "软件"("词条id"),
foreign key("应用商店id") references "应用商店"("词条id")
);

insert into "应用商店" ("词条id", "名称", "应用软件数", "累计下载次数") values ("item_software_2_16", "Google play", "1000000", "10亿")

insert into "应用商店" ("词条id", "名称", "应用软件数", "累计下载次数") values ("item_software_2_17", "酷安", "2700000", "250亿")

insert into "应用商店" ("词条id", "名称", "应用软件数", "累计下载次数") values ("item_software_2_18", "豌豆荚", "2700000", "250亿")

insert into "应用商店" ("词条id", "名称", "应用软件数", "累计下载次数") values ("item_software_2_19", "小米应用商店", "1000000", "10亿")

insert into "应用商店" ("词条id", "名称", "应用软件数", "累计下载次数") values ("item_software_2_20", "苹果store", "1000000", "10亿")

insert into "应用商店支持国家" ("应用商店id", "国家", "用户是否可以购买应用程序", "开发人员是否可以出售应用程序") values ("item_software_2_16", "阿根廷", "是", "是")

insert into "应用商店支持国家" ("应用商店id", "国家", "用户是否可以购买应用程序", "开发人员是否可以出售应用程序") values ("item_software_2_20", " 澳大利亚", "否", "否")

insert into "应用商店支持国家" ("应用商店id", "国家", "用户是否可以购买应用程序", "开发人员是否可以出售应用程序") values ("item_software_2_19", "加拿大", "是", "是")

insert into "应用商店支持国家" ("应用商店id", "国家", "用户是否可以购买应用程序", "开发人员是否可以出售应用程序") values ("item_software_2_17", "巴西", "是", "是")

insert into "应用商店支持国家" ("应用商店id", "国家", "用户是否可以购买应用程序", "开发人员是否可以出售应用程序") values ("item_software_2_17", "朝鲜", "否", "是")

insert into "软件" ("词条id", "名称", "用途") values ("item_software_2_21", "搜狗输入法", "输入法")

insert into "软件" ("词条id", "名称", "用途") values ("item_software_2_22", "高德地图", "地图")

insert into "软件" ("词条id", "名称", "用途") values ("item_software_2_23", "滴滴打车", "打车")

insert into "软件" ("词条id", "名称", "用途") values ("item_software_2_24", "小红书", "美妆")

insert into "软件" ("词条id", "名称", "用途") values ("item_software_2_25", "拼多多", "购物")

insert into "软件下载量" ("软件id", "应用商店id", "下载量", "评价人数", "好评数") values ("item_software_2_22", "item_software_2_17", "10万", "10万", "8万")

insert into "软件下载量" ("软件id", "应用商店id", "下载量", "评价人数", "好评数") values ("item_software_2_23", "item_software_2_16", "1500万", "1000万", "900万")

insert into "软件下载量" ("软件id", "应用商店id", "下载量", "评价人数", "好评数") values ("item_software_2_23", "item_software_2_18", "10万", "1000万", "8万")

insert into "软件下载量" ("软件id", "应用商店id", "下载量", "评价人数", "好评数") values ("item_software_2_23", "item_software_2_20", "10万", "10万", "8万")

insert into "软件下载量" ("软件id", "应用商店id", "下载量", "评价人数", "好评数") values ("item_software_2_23", "item_software_2_20", "1500万", "1000万", "8万")

