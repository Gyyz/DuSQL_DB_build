PRAGMA foreign_keys = ON;

CREATE TABLE "平台" (
"词条id" int,
"名称" text,
"成立时间" time,
"年营业额" int,
"是否自营" binary,
"会员费" int,
primary key ("词条id")
);

CREATE TABLE "图书" (
"词条id" int,
"书名" text,
"作者" text,
"类型" text,
primary key ("词条id")
);

CREATE TABLE "图书与平台" (
"书名id" int,
"平台id" int,
"售价" int,
"购买人数" int,
"评分" int,
"评分人数" int,
"加入购物车人数" int,
"收藏人数" int,
"缺货" binary,
foreign key("书名id") references "图书"("词条id"),
foreign key("平台id") references "平台"("词条id")
);

CREATE TABLE "电子书" (
"书名id" int,
"平台id" int,
"电子书售价" int,
"会员价格" int,
"购买人数" int,
foreign key("书名id") references "图书"("词条id"),
foreign key("平台id") references "平台"("词条id")
);

insert into "平台" ("词条id", "名称", "成立时间", "年营业额", "是否自营", "会员费") values ("item_book.2_2_11", "亚马逊", "1995-09-07", "10亿", "是", "128元")

insert into "平台" ("词条id", "名称", "成立时间", "年营业额", "是否自营", "会员费") values ("item_book.2_2_12", "京东", "1998-04-06", "14亿", "否", "140元")

insert into "平台" ("词条id", "名称", "成立时间", "年营业额", "是否自营", "会员费") values ("item_book.2_2_13", "当当", "2000-09-06", "20亿", "否", "150元")

insert into "平台" ("词条id", "名称", "成立时间", "年营业额", "是否自营", "会员费") values ("item_book.2_2_14", "天猫", "2014-03-22", "1000亿", "是", "155元")

insert into "平台" ("词条id", "名称", "成立时间", "年营业额", "是否自营", "会员费") values ("item_book.2_2_15", "拼多多", "2015-07-15", "71778亿", "是", "198元")

insert into "图书" ("词条id", "书名", "作者", "类型") values ("item_book.2_2_16", "平凡的世界", "路遥", "小说")

insert into "图书" ("词条id", "书名", "作者", "类型") values ("item_book.2_2_17", "巴菲特的估值逻辑", "芦叶飞", "经管")

insert into "图书" ("词条id", "书名", "作者", "类型") values ("item_book.2_2_18", "半小时世界漫画史", "李碧龙", "社科")

insert into "图书" ("词条id", "书名", "作者", "类型") values ("item_book.2_2_19", "大众心理研究学", "李楠集", "科技")

insert into "图书" ("词条id", "书名", "作者", "类型") values ("item_book.2_2_20", "中华帝国的衰落", "度阴山", "少儿")

insert into "图书与平台" ("书名id", "平台id", "售价", "购买人数", "评分", "评分人数", "加入购物车人数", "收藏人数", "缺货") values ("item_book.2_2_19", "item_book.2_2_14", "20元", "100", "5", "1000", "1000", "1000", "是")

insert into "图书与平台" ("书名id", "平台id", "售价", "购买人数", "评分", "评分人数", "加入购物车人数", "收藏人数", "缺货") values ("item_book.2_2_16", "item_book.2_2_15", "50元", "50000", "6", "120000", "50000", "23000", "否")

insert into "图书与平台" ("书名id", "平台id", "售价", "购买人数", "评分", "评分人数", "加入购物车人数", "收藏人数", "缺货") values ("item_book.2_2_16", "item_book.2_2_14", "100元", "7000000", "7", "400000", "540000", "500000", "是")

insert into "图书与平台" ("书名id", "平台id", "售价", "购买人数", "评分", "评分人数", "加入购物车人数", "收藏人数", "缺货") values ("item_book.2_2_19", "item_book.2_2_14", "120元", "7500000", "8", "500000", "230000", "5700000", "是")

insert into "图书与平台" ("书名id", "平台id", "售价", "购买人数", "评分", "评分人数", "加入购物车人数", "收藏人数", "缺货") values ("item_book.2_2_19", "item_book.2_2_12", "200元", "1000000", "9", "1000000", "1000000", "1000000", "否")

insert into "电子书" ("书名id", "平台id", "电子书售价", "会员价格", "购买人数") values ("item_book.2_2_16", "item_book.2_2_12", "2.99元", "0.99元", "100")

insert into "电子书" ("书名id", "平台id", "电子书售价", "会员价格", "购买人数") values ("item_book.2_2_17", "item_book.2_2_15", "10.2元", "4.35元", "50000")

insert into "电子书" ("书名id", "平台id", "电子书售价", "会员价格", "购买人数") values ("item_book.2_2_20", "item_book.2_2_11", "11.33元", "4.74元", "600000")

insert into "电子书" ("书名id", "平台id", "电子书售价", "会员价格", "购买人数") values ("item_book.2_2_20", "item_book.2_2_12", "12.45元", "5.23元", "470000")

insert into "电子书" ("书名id", "平台id", "电子书售价", "会员价格", "购买人数") values ("item_book.2_2_16", "item_book.2_2_13", "19.99元", "5.99元", "1000000")

