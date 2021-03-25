PRAGMA foreign_keys = ON;

CREATE TABLE "公司" (
"词条id" int,
"名称" text,
"成立时间" time,
"负责人" text,
"排名" int,
primary key ("词条id")
);

CREATE TABLE "电影" (
"词条id" int,
"影片名" text,
"上映时间" time,
"票房" int,
primary key ("词条id")
);

CREATE TABLE "影视公司拍摄的电影" (
"公司id" int,
"电影id" int,
"投资比例" int,
foreign key("电影id") references "电影"("词条id"),
foreign key("公司id") references "公司"("词条id")
);

insert into "公司" ("词条id", "名称", "成立时间", "负责人", "排名") values ("item_enterprise_4_26", "华谊兄弟", "2013", "王中磊", "1")

insert into "公司" ("词条id", "名称", "成立时间", "负责人", "排名") values ("item_enterprise_4_27", "万达", "2018", "曾茂军", "2")

insert into "公司" ("词条id", "名称", "成立时间", "负责人", "排名") values ("item_enterprise_4_28", "博纳", "2015", "于冬", "3")

insert into "公司" ("词条id", "名称", "成立时间", "负责人", "排名") values ("item_enterprise_4_29", "中影集团", "2012", "刘培康", "4")

insert into "公司" ("词条id", "名称", "成立时间", "负责人", "排名") values ("item_enterprise_4_30", "北京文化", "2017", "宋歌", "5")

insert into "电影" ("词条id", "影片名", "上映时间", "票房") values ("item_enterprise_4_31", "战狼2", "2010", "5000万")

insert into "电影" ("词条id", "影片名", "上映时间", "票房") values ("item_enterprise_4_32", "西红柿首富", "2017", "10亿")

insert into "电影" ("词条id", "影片名", "上映时间", "票房") values ("item_enterprise_4_33", "致青春", "2010", "10亿")

insert into "电影" ("词条id", "影片名", "上映时间", "票房") values ("item_enterprise_4_34", "羞羞的铁拳", "2017", "5000万")

insert into "电影" ("词条id", "影片名", "上映时间", "票房") values ("item_enterprise_4_35", "沉默的证人", "2010", "10亿")

insert into "影视公司拍摄的电影" ("公司id", "电影id", "投资比例") values ("item_enterprise_4_29", "item_enterprise_4_35", "5%")

insert into "影视公司拍摄的电影" ("公司id", "电影id", "投资比例") values ("item_enterprise_4_28", "item_enterprise_4_32", "75%")

insert into "影视公司拍摄的电影" ("公司id", "电影id", "投资比例") values ("item_enterprise_4_26", "item_enterprise_4_35", "5%")

insert into "影视公司拍摄的电影" ("公司id", "电影id", "投资比例") values ("item_enterprise_4_29", "item_enterprise_4_34", "75%")

insert into "影视公司拍摄的电影" ("公司id", "电影id", "投资比例") values ("item_enterprise_4_27", "item_enterprise_4_35", "5%")

