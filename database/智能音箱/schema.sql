PRAGMA foreign_keys = ON;

CREATE TABLE "公司" (
"词条id" int,
"名称" text,
"所属国家" text,
"智能音箱款数" int,
"排名" int,
primary key ("词条id")
);

CREATE TABLE "音箱产品" (
"词条id" int,
"名称" text,
"所属公司id" int,
"售价" int,
"排名" int,
"上升名次" int,
primary key ("词条id"),
foreign key("所属公司id") references "公司"("词条id")
);

CREATE TABLE "产品销售" (
"产品id" int,
"季度" text,
"销售量" int,
"销售量增长" int,
foreign key("产品id") references "音箱产品"("词条id")
);

insert into "公司" ("词条id", "名称", "所属国家", "智能音箱款数", "排名") values ("item_product_7_46", "百度", "中国", "1", "1")

insert into "公司" ("词条id", "名称", "所属国家", "智能音箱款数", "排名") values ("item_product_7_47", "阿里巴巴集团", "美国", "8", "10")

insert into "公司" ("词条id", "名称", "所属国家", "智能音箱款数", "排名") values ("item_product_7_48", "小米公司", "韩国", "1", "1")

insert into "公司" ("词条id", "名称", "所属国家", "智能音箱款数", "排名") values ("item_product_7_49", "亚马逊集团", "日本", "8", "1")

insert into "公司" ("词条id", "名称", "所属国家", "智能音箱款数", "排名") values ("item_product_7_50", "微软公司", "德国", "1", "1")

insert into "音箱产品" ("词条id", "名称", "所属公司id", "售价", "排名", "上升名次") values ("item_product_7_51", "小爱", "item_product_7_46", "89", "1", "-3")

insert into "音箱产品" ("词条id", "名称", "所属公司id", "售价", "排名", "上升名次") values ("item_product_7_52", "天猫精灵", "item_product_7_47", "599", "20", "+3")

insert into "音箱产品" ("词条id", "名称", "所属公司id", "售价", "排名", "上升名次") values ("item_product_7_53", "小度在家", "item_product_7_47", "89", "20", "+3")

insert into "音箱产品" ("词条id", "名称", "所属公司id", "售价", "排名", "上升名次") values ("item_product_7_54", "小度音箱", "item_product_7_50", "89", "1", "+3")

insert into "音箱产品" ("词条id", "名称", "所属公司id", "售价", "排名", "上升名次") values ("item_product_7_55", "亚马逊echo", "item_product_7_46", "89", "1", "+3")

insert into "产品销售" ("产品id", "季度", "销售量", "销售量增长") values ("item_product_7_51", "1", "1万", "20%")

insert into "产品销售" ("产品id", "季度", "销售量", "销售量增长") values ("item_product_7_54", "4", "300万", "80%")

insert into "产品销售" ("产品id", "季度", "销售量", "销售量增长") values ("item_product_7_55", "1", "300万", "20%")

insert into "产品销售" ("产品id", "季度", "销售量", "销售量增长") values ("item_product_7_54", "1", "300万", "20%")

insert into "产品销售" ("产品id", "季度", "销售量", "销售量增长") values ("item_product_7_52", "4", "1万", "20%")

