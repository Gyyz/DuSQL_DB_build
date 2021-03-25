PRAGMA foreign_keys = ON;

CREATE TABLE "公司" (
"词条id" int,
"名称" text,
"主要产品" text,
"广告投入成本" int,
"广告投入成本占比" int,
primary key ("词条id")
);

CREATE TABLE "广告平台" (
"词条id" int,
"名称" text,
"广告收入" int,
"广告收入占比" int,
primary key ("词条id")
);

CREATE TABLE "公司在平台投入广告" (
"公司id" int,
"平台id" int,
"购买关键词数量" int,
"点击率" int,
"转换率" int,
foreign key("平台id") references "广告平台"("词条id"),
foreign key("公司id") references "公司"("词条id")
);

insert into "公司" ("词条id", "名称", "主要产品", "广告投入成本", "广告投入成本占比") values ("item_product_12_111", "Oppo", "智能手机", "1000万", "10%")

insert into "公司" ("词条id", "名称", "主要产品", "广告投入成本", "广告投入成本占比") values ("item_product_12_112", "苹果MacBook", "笔记本电脑", "1亿", "50%")

insert into "公司" ("词条id", "名称", "主要产品", "广告投入成本", "广告投入成本占比") values ("item_product_12_113", "拼多多", "电子商务", "1000万", "10%")

insert into "公司" ("词条id", "名称", "主要产品", "广告投入成本", "广告投入成本占比") values ("item_product_12_114", "安慕希", "食品饮料", "1000万", "10%")

insert into "公司" ("词条id", "名称", "主要产品", "广告投入成本", "广告投入成本占比") values ("item_product_12_115", "阿迪达斯", "运动服饰", "1亿", "10%")

insert into "广告平台" ("词条id", "名称", "广告收入", "广告收入占比") values ("item_product_12_116", "百度", "10亿", "20%")

insert into "广告平台" ("词条id", "名称", "广告收入", "广告收入占比") values ("item_product_12_117", "腾讯", "100亿", "80%")

insert into "广告平台" ("词条id", "名称", "广告收入", "广告收入占比") values ("item_product_12_118", "今日头条", "100亿", "80%")

insert into "广告平台" ("词条id", "名称", "广告收入", "广告收入占比") values ("item_product_12_119", "中央电视台", "10亿", "20%")

insert into "广告平台" ("词条id", "名称", "广告收入", "广告收入占比") values ("item_product_12_120", "湖南电视台", "10亿", "20%")

insert into "公司在平台投入广告" ("公司id", "平台id", "购买关键词数量", "点击率", "转换率") values ("item_product_12_113", "item_product_12_119", "10", "2%", "20%")

insert into "公司在平台投入广告" ("公司id", "平台id", "购买关键词数量", "点击率", "转换率") values ("item_product_12_114", "item_product_12_120", "100", "10%", "40%")

insert into "公司在平台投入广告" ("公司id", "平台id", "购买关键词数量", "点击率", "转换率") values ("item_product_12_115", "item_product_12_120", "100", "2%", "20%")

insert into "公司在平台投入广告" ("公司id", "平台id", "购买关键词数量", "点击率", "转换率") values ("item_product_12_111", "item_product_12_118", "10", "2%", "40%")

insert into "公司在平台投入广告" ("公司id", "平台id", "购买关键词数量", "点击率", "转换率") values ("item_product_12_113", "item_product_12_118", "100", "2%", "40%")

