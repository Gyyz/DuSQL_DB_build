PRAGMA foreign_keys = ON;

CREATE TABLE "代言明星" (
"词条id" int,
"姓名" text,
"性别" text,
"年龄" int,
"所属国家" text,
"职业" text,
"财富排名" int,
primary key ("词条id")
);

CREATE TABLE "智能手机品牌" (
"词条id" int,
"名称" text,
"所属国家" text,
"世界500强排名" int,
"出货量" int,
"市场份额" int,
primary key ("词条id")
);

CREATE TABLE "手机代言明星" (
"明星id" int,
"品牌id" int,
"开始年份" time,
"代言年数" int,
"代言费" int,
"代言型号数量" int,
foreign key("明星id") references "代言明星"("词条id"),
foreign key("品牌id") references "智能手机品牌"("词条id")
);

insert into "代言明星" ("词条id", "姓名", "性别", "年龄", "所属国家", "职业", "财富排名") values ("item_product_5_26", "李易峰", "男", "24", "中国", "演员", "1")

insert into "代言明星" ("词条id", "姓名", "性别", "年龄", "所属国家", "职业", "财富排名") values ("item_product_5_27", "杨幂", "女", "40岁", "韩国", "歌手", "500")

insert into "代言明星" ("词条id", "姓名", "性别", "年龄", "所属国家", "职业", "财富排名") values ("item_product_5_28", " 杨洋", "男", "24", "马来西亚", "运动员", "1")

insert into "代言明星" ("词条id", "姓名", "性别", "年龄", "所属国家", "职业", "财富排名") values ("item_product_5_29", "梅西", "男", "40岁", "葡萄牙", "歌手", "500")

insert into "代言明星" ("词条id", "姓名", "性别", "年龄", "所属国家", "职业", "财富排名") values ("item_product_5_30", "C罗", "男", "40岁", "美国", "歌手", "1")

insert into "智能手机品牌" ("词条id", "名称", "所属国家", "世界500强排名", "出货量", "市场份额") values ("item_product_5_31", "华为", "中国", "1", "2950万", "10%")

insert into "智能手机品牌" ("词条id", "名称", "所属国家", "世界500强排名", "出货量", "市场份额") values ("item_product_5_32", "小米", "韩国", "500", "7550万", "23%")

insert into "智能手机品牌" ("词条id", "名称", "所属国家", "世界500强排名", "出货量", "市场份额") values ("item_product_5_33", "oppo", "日本", "1", "7550万", "10%")

insert into "智能手机品牌" ("词条id", "名称", "所属国家", "世界500强排名", "出货量", "市场份额") values ("item_product_5_34", "三星", "美国", "1", "7550万", "23%")

insert into "智能手机品牌" ("词条id", "名称", "所属国家", "世界500强排名", "出货量", "市场份额") values ("item_product_5_35", "苹果", "德国", "1", "2950万", "10%")

insert into "手机代言明星" ("明星id", "品牌id", "开始年份", "代言年数", "代言费", "代言型号数量") values ("item_product_5_26", "item_product_5_33", "2012", "1", "500万", "1")

insert into "手机代言明星" ("明星id", "品牌id", "开始年份", "代言年数", "代言费", "代言型号数量") values ("item_product_5_30", "item_product_5_34", "2018", "3年", "2000万", "3")

insert into "手机代言明星" ("明星id", "品牌id", "开始年份", "代言年数", "代言费", "代言型号数量") values ("item_product_5_27", "item_product_5_31", "2012", "3年", "500万", "3")

insert into "手机代言明星" ("明星id", "品牌id", "开始年份", "代言年数", "代言费", "代言型号数量") values ("item_product_5_30", "item_product_5_32", "2018", "1", "500万", "3")

insert into "手机代言明星" ("明星id", "品牌id", "开始年份", "代言年数", "代言费", "代言型号数量") values ("item_product_5_28", "item_product_5_31", "2018", "3年", "2000万", "3")

