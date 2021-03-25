PRAGMA foreign_keys = ON;

CREATE TABLE "汉字" (
"词条id" int,
"汉字" text,
"部首" text,
"笔画" int,
primary key ("词条id")
);

CREATE TABLE "姓氏" (
"姓氏id" int,
"源自姓氏id" int,
"人口" int,
"占比" int,
primary key ("姓氏id"),
foreign key("姓氏id") references "汉字"("词条id"),
foreign key("源自姓氏id") references "汉字"("词条id")
);

CREATE TABLE "姓氏分布区域" (
"姓氏id" int,
"区域" text,
"人口占比" int,
foreign key("姓氏id") references "汉字"("词条id")
);

insert into "汉字" ("词条id", "汉字", "部首", "笔画") values ("item_dynasties_words_10_91", "草", "艹", "1")

insert into "汉字" ("词条id", "汉字", "部首", "笔画") values ("item_dynasties_words_10_92", "招", "扌", "10")

insert into "汉字" ("词条id", "汉字", "部首", "笔画") values ("item_dynasties_words_10_93", "亿", "亻", "12")

insert into "汉字" ("词条id", "汉字", "部首", "笔画") values ("item_dynasties_words_10_94", "铁", "钅", "16")

insert into "汉字" ("词条id", "汉字", "部首", "笔画") values ("item_dynasties_words_10_95", "松", "木", "20")

insert into "姓氏" ("姓氏id", "源自姓氏id", "人口", "占比") values ("item_dynasties_words_10_95", "item_dynasties_words_10_95", "1000", "0.001%")

insert into "姓氏" ("姓氏id", "源自姓氏id", "人口", "占比") values ("item_dynasties_words_10_93", "item_dynasties_words_10_93", "800000", "0.7%")

insert into "姓氏" ("姓氏id", "源自姓氏id", "人口", "占比") values ("item_dynasties_words_10_91", "item_dynasties_words_10_94", "860000", "6.11%")

insert into "姓氏" ("姓氏id", "源自姓氏id", "人口", "占比") values ("item_dynasties_words_10_94", "item_dynasties_words_10_95", "9366000", "6.987%")

insert into "姓氏" ("姓氏id", "源自姓氏id", "人口", "占比") values ("item_dynasties_words_10_95", "item_dynasties_words_10_92", "94660000", "7.1%")

insert into "姓氏分布区域" ("姓氏id", "区域", "人口占比") values ("item_dynasties_words_10_94", "东部", "12%")

insert into "姓氏分布区域" ("姓氏id", "区域", "人口占比") values ("item_dynasties_words_10_94", "西部", "20%")

insert into "姓氏分布区域" ("姓氏id", "区域", "人口占比") values ("item_dynasties_words_10_93", "南部", "24%")

insert into "姓氏分布区域" ("姓氏id", "区域", "人口占比") values ("item_dynasties_words_10_92", "北部", "60%")

insert into "姓氏分布区域" ("姓氏id", "区域", "人口占比") values ("item_dynasties_words_10_95", "中部", "90%")

