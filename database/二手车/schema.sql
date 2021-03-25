PRAGMA foreign_keys = ON;

CREATE TABLE "车型" (
"词条id" int,
"名称" text,
"上牌时间" time,
"上牌地" text,
"里程数" int,
"排量" int,
"过户记录" int,
"所属公司" text,
primary key ("词条id")
);

CREATE TABLE "车型平台售卖" (
"车型id" int,
"平台" text,
"售价" int,
"服务费比例" int,
foreign key("车型id") references "车型"("词条id")
);

insert into "车型" ("词条id", "名称", "上牌时间", "上牌地", "里程数", "排量", "过户记录", "所属公司") values ("item_product_3_11", "艾力绅至尊版", "2010年", "北京", "1万", "2.4L", "0", "宝马集团")

insert into "车型" ("词条id", "名称", "上牌时间", "上牌地", "里程数", "排量", "过户记录", "所属公司") values ("item_product_3_12", "艾力绅至尊版", "2017年", "上海", "10万公里", "4.8L", "2次", "奔驰公司")

insert into "车型" ("词条id", "名称", "上牌时间", "上牌地", "里程数", "排量", "过户记录", "所属公司") values ("item_product_3_13", "艾力绅至尊版", "2017年", "天津", "10万公里", "4.8L", "2次", "广田公司")

insert into "车型" ("词条id", "名称", "上牌时间", "上牌地", "里程数", "排量", "过户记录", "所属公司") values ("item_product_3_14", "艾力绅至尊版", "2010年", "西安", "1万", "2.4L", "2次", "本田公司")

insert into "车型" ("词条id", "名称", "上牌时间", "上牌地", "里程数", "排量", "过户记录", "所属公司") values ("item_product_3_15", "艾力绅至尊版", "2010年", "武汉", "1万", "4.8L", "0", "一汽大众公司")

insert into "车型平台售卖" ("车型id", "平台", "售价", "服务费比例") values ("item_product_3_11", "瓜子二手车", "1万", "5%")

insert into "车型平台售卖" ("车型id", "平台", "售价", "服务费比例") values ("item_product_3_11", "优信二手车", "10万", "10%")

insert into "车型平台售卖" ("车型id", "平台", "售价", "服务费比例") values ("item_product_3_11", "人人车", "10万", "10%")

insert into "车型平台售卖" ("车型id", "平台", "售价", "服务费比例") values ("item_product_3_11", "二手车之家", "1万", "10%")

insert into "车型平台售卖" ("车型id", "平台", "售价", "服务费比例") values ("item_product_3_11", "淘车无忧", "1万", "5%")

