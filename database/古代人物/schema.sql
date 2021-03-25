PRAGMA foreign_keys = ON;

CREATE TABLE "皇帝" (
"词条id" int,
"姓名" text,
"年号" text,
"所处朝代" text,
"子女数量" int,
"皇后数量" int,
"妃子数量" int,
primary key ("词条id")
);

CREATE TABLE "皇后和妃子" (
"词条id" int,
"谥号" text,
"夫君id" int,
"年龄" int,
"皇子数量" int,
"公主数量" int,
primary key ("词条id"),
foreign key("夫君id") references "皇帝"("词条id")
);

CREATE TABLE "皇帝皇后合葬" (
"皇帝id" int,
"皇后id" int,
"葬地" text,
foreign key("皇帝id") references "皇帝"("词条id"),
foreign key("皇后id") references "皇后和妃子"("词条id")
);

CREATE TABLE "皇帝皇后影视形象" (
"作品" text,
"皇帝id" int,
"皇帝饰演者" text,
"皇后id" int,
"皇后饰演者" text,
foreign key("皇后id") references "皇后和妃子"("词条id"),
foreign key("皇帝id") references "皇帝"("词条id")
);

insert into "皇帝" ("词条id", "姓名", "年号", "所处朝代", "子女数量", "皇后数量", "妃子数量") values ("item_dynasties_words_3_11", "康熙", "康熙", "清朝", "4", "1", "4")

insert into "皇帝" ("词条id", "姓名", "年号", "所处朝代", "子女数量", "皇后数量", "妃子数量") values ("item_dynasties_words_3_12", "乾隆", "乾隆", "宋朝", "20", "3", "10")

insert into "皇帝" ("词条id", "姓名", "年号", "所处朝代", "子女数量", "皇后数量", "妃子数量") values ("item_dynasties_words_3_13", "雍正", "雍正", "明朝", "10", "2", "25")

insert into "皇帝" ("词条id", "姓名", "年号", "所处朝代", "子女数量", "皇后数量", "妃子数量") values ("item_dynasties_words_3_14", "贞观", "贞观", "唐朝", "15", "3", "30")

insert into "皇帝" ("词条id", "姓名", "年号", "所处朝代", "子女数量", "皇后数量", "妃子数量") values ("item_dynasties_words_3_15", "开元", "开元", "元朝", "30", "4", "36")

insert into "皇后和妃子" ("词条id", "谥号", "夫君id", "年龄", "皇子数量", "公主数量") values ("item_dynasties_words_3_16", "孝慈皇后", "item_dynasties_words_3_11", "24岁", "0", "0")

insert into "皇后和妃子" ("词条id", "谥号", "夫君id", "年龄", "皇子数量", "公主数量") values ("item_dynasties_words_3_17", "孝端皇后", "item_dynasties_words_3_12", "26岁", "1", "1")

insert into "皇后和妃子" ("词条id", "谥号", "夫君id", "年龄", "皇子数量", "公主数量") values ("item_dynasties_words_3_18", "孝康皇后", "item_dynasties_words_3_11", "30岁", "1", "2")

insert into "皇后和妃子" ("词条id", "谥号", "夫君id", "年龄", "皇子数量", "公主数量") values ("item_dynasties_words_3_19", "孝献皇后", "item_dynasties_words_3_11", "35岁", "1", "3")

insert into "皇后和妃子" ("词条id", "谥号", "夫君id", "年龄", "皇子数量", "公主数量") values ("item_dynasties_words_3_20", "孝诚皇后", "item_dynasties_words_3_11", "40岁", "2", "3")

insert into "皇帝皇后合葬" ("皇帝id", "皇后id", "葬地") values ("item_dynasties_words_3_14", "item_dynasties_words_3_16", "昭西陵")

insert into "皇帝皇后合葬" ("皇帝id", "皇后id", "葬地") values ("item_dynasties_words_3_11", "item_dynasties_words_3_20", "昭东陵")

insert into "皇帝皇后合葬" ("皇帝id", "皇后id", "葬地") values ("item_dynasties_words_3_13", "item_dynasties_words_3_17", "孝东陵")

insert into "皇帝皇后合葬" ("皇帝id", "皇后id", "葬地") values ("item_dynasties_words_3_12", "item_dynasties_words_3_16", "孝西陵")

insert into "皇帝皇后合葬" ("皇帝id", "皇后id", "葬地") values ("item_dynasties_words_3_14", "item_dynasties_words_3_19", "裕妃园")

insert into "皇帝皇后影视形象" ("作品", "皇帝id", "皇帝饰演者", "皇后id", "皇后饰演者") values ("还珠格格", "item_dynasties_words_3_14", "张国立", "item_dynasties_words_3_20", "娟子")

insert into "皇帝皇后影视形象" ("作品", "皇帝id", "皇帝饰演者", "皇后id", "皇后饰演者") values ("康熙微服私访记", "item_dynasties_words_3_11", "张铁林", "item_dynasties_words_3_18", "李建群")

insert into "皇帝皇后影视形象" ("作品", "皇帝id", "皇帝饰演者", "皇后id", "皇后饰演者") values ("康熙王朝", "item_dynasties_words_3_15", "唐国强", "item_dynasties_words_3_16", "茹萍")

insert into "皇帝皇后影视形象" ("作品", "皇帝id", "皇帝饰演者", "皇后id", "皇后饰演者") values ("雍正王朝", "item_dynasties_words_3_15", "陈道明", "item_dynasties_words_3_20", "宫雪飞")

insert into "皇帝皇后影视形象" ("作品", "皇帝id", "皇帝饰演者", "皇后id", "皇后饰演者") values ("末代皇帝", "item_dynasties_words_3_14", "王刚", "item_dynasties_words_3_16", "斯琴高娃")

