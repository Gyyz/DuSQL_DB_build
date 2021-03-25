PRAGMA foreign_keys = ON;

CREATE TABLE "品牌" (
"词条id" int,
"品牌名" text,
"成立时间" time,
"经营范围" text,
"年销量" int,
primary key ("词条id")
);

CREATE TABLE "体育明星" (
"词条id" int,
"中文名" text,
"国籍" text,
"创建品牌id" int,
primary key ("词条id"),
foreign key("创建品牌id") references "品牌"("词条id")
);

CREATE TABLE "运动员的代言" (
"明星id" int,
"代言品牌id" int,
"年份" time,
"代言费" int,
foreign key("代言品牌id") references "品牌"("词条id"),
foreign key("明星id") references "体育明星"("词条id")
);

insert into "品牌" ("词条id", "品牌名", "成立时间", "经营范围", "年销量") values ("item_sports.2_18_146", "阿迪", "1949年", "运动服饰", "246.69亿美元")

insert into "品牌" ("词条id", "品牌名", "成立时间", "经营范围", "年销量") values ("item_sports.2_18_147", "耐克", "1972年", "运动鞋", "343.5亿美元")

insert into "品牌" ("词条id", "品牌名", "成立时间", "经营范围", "年销量") values ("item_sports.2_18_148", "李宁", "1990年", "运动鞋", "343.5亿美元")

insert into "品牌" ("词条id", "品牌名", "成立时间", "经营范围", "年销量") values ("item_sports.2_18_149", "puma", "1948年", "运动鞋", "246.69亿美元")

insert into "品牌" ("词条id", "品牌名", "成立时间", "经营范围", "年销量") values ("item_sports.2_18_150", "fifa", "1911年", "运动鞋", "246.69亿美元")

insert into "体育明星" ("词条id", "中文名", "国籍", "创建品牌id") values ("item_sports.2_18_151", "nike", "中国", "item_sports.2_18_149")

insert into "体育明星" ("词条id", "中文名", "国籍", "创建品牌id") values ("item_sports.2_18_152", "乔丹", "美国", "item_sports.2_18_146")

insert into "体育明星" ("词条id", "中文名", "国籍", "创建品牌id") values ("item_sports.2_18_153", "李宁", "西班牙", "item_sports.2_18_149")

insert into "体育明星" ("词条id", "中文名", "国籍", "创建品牌id") values ("item_sports.2_18_154", "贝克汉姆", "葡萄牙", "item_sports.2_18_146")

insert into "体育明星" ("词条id", "中文名", "国籍", "创建品牌id") values ("item_sports.2_18_155", "莎拉波娃", "英国", "item_sports.2_18_149")

insert into "运动员的代言" ("明星id", "代言品牌id", "年份", "代言费") values ("item_sports.2_18_151", "item_sports.2_18_147", "2018", "5")

insert into "运动员的代言" ("明星id", "代言品牌id", "年份", "代言费") values ("item_sports.2_18_155", "item_sports.2_18_147", "2018", "400万美元")

insert into "运动员的代言" ("明星id", "代言品牌id", "年份", "代言费") values ("item_sports.2_18_154", "item_sports.2_18_149", "2018", "5")

insert into "运动员的代言" ("明星id", "代言品牌id", "年份", "代言费") values ("item_sports.2_18_154", "item_sports.2_18_147", "2018", "000万美元")

insert into "运动员的代言" ("明星id", "代言品牌id", "年份", "代言费") values ("item_sports.2_18_154", "item_sports.2_18_150", "2018", "3")

