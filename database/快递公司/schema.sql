PRAGMA foreign_keys = ON;

CREATE TABLE "快递公司" (
"词条id" int,
"名称" text,
"总部地点" text,
"成立时间" time,
"员工数量" int,
"运输车辆数" int,
"覆盖城市数量" int,
"网点数量" int,
primary key ("词条id")
);

CREATE TABLE "省份" (
"词条id" int,
"名称" text,
"所属区域" text,
primary key ("所属区域")
);

CREATE TABLE "快递费" (
"快递公司id" int,
"区域" text,
"起步价格" int,
"起步公斤数" int,
"每公斤价格" int,
foreign key("区域") references "省份"("所属区域"),
foreign key("快递公司id") references "快递公司"("词条id")
);

CREATE TABLE "包邮范围" (
"快递公司id" int,
"发货区域" text,
"包邮区域" text,
foreign key("包邮区域") references "省份"("所属区域"),
foreign key("快递公司id") references "快递公司"("词条id"),
foreign key("发货区域") references "省份"("所属区域")
);

insert into "快递公司" ("词条id", "名称", "总部地点", "成立时间", "员工数量", "运输车辆数", "覆盖城市数量", "网点数量") values ("item_enterprise_3_16", "圆通", "北京", "1999年", "15000", "1000", "100", "30000")

insert into "快递公司" ("词条id", "名称", "总部地点", "成立时间", "员工数量", "运输车辆数", "覆盖城市数量", "网点数量") values ("item_enterprise_3_17", "顺丰", "杭州", "2010年", "90000", "10000", "500", "50000")

insert into "快递公司" ("词条id", "名称", "总部地点", "成立时间", "员工数量", "运输车辆数", "覆盖城市数量", "网点数量") values ("item_enterprise_3_18", "申通", "上海", "1999年", "90000", "1000", "100", "30000")

insert into "快递公司" ("词条id", "名称", "总部地点", "成立时间", "员工数量", "运输车辆数", "覆盖城市数量", "网点数量") values ("item_enterprise_3_19", "中通", "深圳", "1999年", "15000", "1000", "100", "50000")

insert into "快递公司" ("词条id", "名称", "总部地点", "成立时间", "员工数量", "运输车辆数", "覆盖城市数量", "网点数量") values ("item_enterprise_3_20", "韵达", "深圳", "2010年", "90000", "10000", "500", "30000")

insert into "省份" ("词条id", "名称", "所属区域") values ("item_enterprise_3_21", "北京", "珠三角")

insert into "省份" ("词条id", "名称", "所属区域") values ("item_enterprise_3_22", "上海", "长三角")

insert into "省份" ("词条id", "名称", "所属区域") values ("item_enterprise_3_23", "浙江", "华北")

insert into "省份" ("词条id", "名称", "所属区域") values ("item_enterprise_3_24", "江苏", "东北")

insert into "省份" ("词条id", "名称", "所属区域") values ("item_enterprise_3_25", "江西", "西北")

insert into "快递费" ("快递公司id", "区域", "起步价格", "起步公斤数", "每公斤价格") values ("item_enterprise_3_16", "长三角", "8", "1", "2")

insert into "快递费" ("快递公司id", "区域", "起步价格", "起步公斤数", "每公斤价格") values ("item_enterprise_3_17", "西北", "25", "2kg", "10元")

insert into "快递费" ("快递公司id", "区域", "起步价格", "起步公斤数", "每公斤价格") values ("item_enterprise_3_19", "华北", "25", "2kg", "10元")

insert into "快递费" ("快递公司id", "区域", "起步价格", "起步公斤数", "每公斤价格") values ("item_enterprise_3_16", "珠三角", "8", "1", "10元")

insert into "快递费" ("快递公司id", "区域", "起步价格", "起步公斤数", "每公斤价格") values ("item_enterprise_3_16", "华北", "8", "1", "10元")

insert into "包邮范围" ("快递公司id", "发货区域", "包邮区域") values ("item_enterprise_3_16", "长三角", "珠三角")

insert into "包邮范围" ("快递公司id", "发货区域", "包邮区域") values ("item_enterprise_3_16", "西北", "珠三角")

insert into "包邮范围" ("快递公司id", "发货区域", "包邮区域") values ("item_enterprise_3_18", "长三角", "长三角")

insert into "包邮范围" ("快递公司id", "发货区域", "包邮区域") values ("item_enterprise_3_20", "东北", "长三角")

insert into "包邮范围" ("快递公司id", "发货区域", "包邮区域") values ("item_enterprise_3_18", "东北", "珠三角")

