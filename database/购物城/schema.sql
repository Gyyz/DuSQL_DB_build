PRAGMA foreign_keys = ON;

CREATE TABLE "商场" (
"词条id" int,
"名称" text,
"地址" text,
"开业时间" time,
primary key ("词条id")
);

CREATE TABLE "商家" (
"词条id" int,
"名称" text,
"类型" text,
primary key ("词条id")
);

CREATE TABLE "商家入驻商场" (
"商家id" int,
"商场id" int,
"楼层" int,
"占地面积" int,
foreign key("商场id") references "商场"("词条id"),
foreign key("商家id") references "商家"("词条id")
);

insert into "商场" ("词条id", "名称", "地址", "开业时间") values ("item_mechanism_2_21", "西单大悦城", "北京市西城区", "10:00-22:00")

insert into "商场" ("词条id", "名称", "地址", "开业时间") values ("item_mechanism_2_22", "朝阳大悦城", "北京市朝阳区", "9:30-20:00")

insert into "商场" ("词条id", "名称", "地址", "开业时间") values ("item_mechanism_2_23", "芳草地购物中心", "北京市东城区", "9:30-19:30")

insert into "商场" ("词条id", "名称", "地址", "开业时间") values ("item_mechanism_2_24", "悠堂", "北京市昌平区", "10:00-21:00")

insert into "商场" ("词条id", "名称", "地址", "开业时间") values ("item_mechanism_2_25", "三里屯太古里", "北京市西城区", "9:30-19:30")

insert into "商家" ("词条id", "名称", "类型") values ("item_mechanism_2_26", "呷哺呷哺", "餐饮")

insert into "商家" ("词条id", "名称", "类型") values ("item_mechanism_2_27", "将太无二", "超市")

insert into "商家" ("词条id", "名称", "类型") values ("item_mechanism_2_28", "华联超市", "影院")

insert into "商家" ("词条id", "名称", "类型") values ("item_mechanism_2_29", "沃美影院", "服装")

insert into "商家" ("词条id", "名称", "类型") values ("item_mechanism_2_30", "领姿专卖店", "化妆品")

insert into "商家入驻商场" ("商家id", "商场id", "楼层", "占地面积") values ("item_mechanism_2_30", "item_mechanism_2_24", "1", "50平方米")

insert into "商家入驻商场" ("商家id", "商场id", "楼层", "占地面积") values ("item_mechanism_2_27", "item_mechanism_2_23", "2", "67平方米")

insert into "商家入驻商场" ("商家id", "商场id", "楼层", "占地面积") values ("item_mechanism_2_27", "item_mechanism_2_24", "3", "120平方米")

insert into "商家入驻商场" ("商家id", "商场id", "楼层", "占地面积") values ("item_mechanism_2_28", "item_mechanism_2_22", "2", "250平方米")

insert into "商家入驻商场" ("商家id", "商场id", "楼层", "占地面积") values ("item_mechanism_2_30", "item_mechanism_2_22", "4", "200平方米")

