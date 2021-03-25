PRAGMA foreign_keys = ON;

CREATE TABLE "奢侈品牌" (
"词条id" int,
"名称" text,
"国家" text,
"熟识度" int,
"购买力排名" int,
primary key ("词条id")
);

CREATE TABLE "奢侈品消费国家" (
"奢侈品id" int,
"国家" text,
"年份" time,
"消费额" int,
"消费额占比" int,
foreign key("奢侈品id") references "奢侈品牌"("词条id")
);

CREATE TABLE "奢侈品购买人群" (
"奢侈品id" int,
"年龄段" text,
"购买人数" int,
"人数占比" int,
"消费额" int,
"消费额占比" int,
foreign key("奢侈品id") references "奢侈品牌"("词条id")
);

CREATE TABLE "奢侈品渠道" (
"奢侈品id" int,
"了解渠道" text,
"人数占比" int,
foreign key("奢侈品id") references "奢侈品牌"("词条id")
);

CREATE TABLE "奢侈品用户在意维度分布" (
"年龄段" text,
"看中维度" text,
"人数占比" int
);

insert into "奢侈品牌" ("词条id", "名称", "国家", "熟识度", "购买力排名") values ("item_product_2_6", "香奈儿", "法国", "40%", "1")

insert into "奢侈品牌" ("词条id", "名称", "国家", "熟识度", "购买力排名") values ("item_product_2_7", "巴宝莉", "英国", "90%", "20")

insert into "奢侈品牌" ("词条id", "名称", "国家", "熟识度", "购买力排名") values ("item_product_2_8", "路易威登", "加拿大", "90%", "20")

insert into "奢侈品牌" ("词条id", "名称", "国家", "熟识度", "购买力排名") values ("item_product_2_9", "加拿大鹅", "美国", "90%", "20")

insert into "奢侈品牌" ("词条id", "名称", "国家", "熟识度", "购买力排名") values ("item_product_2_10", "布克兄弟", "澳大利亚", "90%", "1")

insert into "奢侈品消费国家" ("奢侈品id", "国家", "年份", "消费额", "消费额占比") values ("item_product_2_6", "中国", "2014年", "34亿", "5%")

insert into "奢侈品消费国家" ("奢侈品id", "国家", "年份", "消费额", "消费额占比") values ("item_product_2_7", "美国", "2018年", "1227亿", "40%")

insert into "奢侈品消费国家" ("奢侈品id", "国家", "年份", "消费额", "消费额占比") values ("item_product_2_10", "日本", "2018年", "1227亿", "40%")

insert into "奢侈品消费国家" ("奢侈品id", "国家", "年份", "消费额", "消费额占比") values ("item_product_2_10", "韩国", "2018年", "34亿", "5%")

insert into "奢侈品消费国家" ("奢侈品id", "国家", "年份", "消费额", "消费额占比") values ("item_product_2_7", "法国", "2018年", "34亿", "40%")

insert into "奢侈品购买人群" ("奢侈品id", "年龄段", "购买人数", "人数占比", "消费额", "消费额占比") values ("item_product_2_10", "70后", "100万", "20%", "100亿", "22%")

insert into "奢侈品购买人群" ("奢侈品id", "年龄段", "购买人数", "人数占比", "消费额", "消费额占比") values ("item_product_2_9", "80后", "300万人", "43%", "185亿", "56%")

insert into "奢侈品购买人群" ("奢侈品id", "年龄段", "购买人数", "人数占比", "消费额", "消费额占比") values ("item_product_2_10", "90后", "100万", "43%", "185亿", "22%")

insert into "奢侈品购买人群" ("奢侈品id", "年龄段", "购买人数", "人数占比", "消费额", "消费额占比") values ("item_product_2_7", "90后", "100万", "20%", "185亿", "56%")

insert into "奢侈品购买人群" ("奢侈品id", "年龄段", "购买人数", "人数占比", "消费额", "消费额占比") values ("item_product_2_7", "90后", "300万人", "20%", "185亿", "22%")

insert into "奢侈品渠道" ("奢侈品id", "了解渠道", "人数占比") values ("item_product_2_7", "名人或赞助商", "39%")

insert into "奢侈品渠道" ("奢侈品id", "了解渠道", "人数占比") values ("item_product_2_7", "数字化广告", "99%")

insert into "奢侈品渠道" ("奢侈品id", "了解渠道", "人数占比") values ("item_product_2_6", "媒体宣传", "39%")

insert into "奢侈品渠道" ("奢侈品id", "了解渠道", "人数占比") values ("item_product_2_7", "电商推荐", "99%")

insert into "奢侈品渠道" ("奢侈品id", "了解渠道", "人数占比") values ("item_product_2_10", "产品口碑", "39%")

insert into "奢侈品用户在意维度分布" ("年龄段", "看中维度", "人数占比") values ("70后", "品牌", "68%~94%")

insert into "奢侈品用户在意维度分布" ("年龄段", "看中维度", "人数占比") values ("80后", "设计款式", "2%~11%")

insert into "奢侈品用户在意维度分布" ("年龄段", "看中维度", "人数占比") values ("90后", "面料材质", "1%~6%")

insert into "奢侈品用户在意维度分布" ("年龄段", "看中维度", "人数占比") values ("70后", "生产工艺", "1%~8%")

insert into "奢侈品用户在意维度分布" ("年龄段", "看中维度", "人数占比") values ("80后", "价格", "1%~7%")

