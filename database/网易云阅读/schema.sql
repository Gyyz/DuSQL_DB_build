PRAGMA foreign_keys = ON;

CREATE TABLE "作者" (
"词条id" int,
"姓名" text,
"年龄" int,
"出版作品数" int,
"网络作品数" int,
primary key ("词条id")
);

CREATE TABLE "出版图书" (
"词条id" int,
"书名" text,
"作者id" int,
"评分" int,
"评价人数" int,
"字数" int,
"点击数" int,
"类型" text,
primary key ("词条id"),
foreign key("作者id") references "作者"("词条id")
);

CREATE TABLE "网络小说" (
"词条id" int,
"书名" text,
"作者id" int,
"评分" int,
"类型" text,
"状态" text,
"价格" int,
primary key ("词条id"),
foreign key("作者id") references "作者"("词条id")
);

CREATE TABLE "畅销榜" (
"网络小说id" int,
"周排名" int,
"月排名" int,
"总排名" int,
foreign key("网络小说id") references "网络小说"("词条id")
);

CREATE TABLE "收藏榜" (
"网络小说id" int,
"周排名" int,
"月排名" int,
"总排名" int,
foreign key("网络小说id") references "网络小说"("词条id")
);

insert into "作者" ("词条id", "姓名", "年龄", "出版作品数", "网络作品数") values ("item_book.2_12_141", "匪我思存", "24", "10", "0")

insert into "作者" ("词条id", "姓名", "年龄", "出版作品数", "网络作品数") values ("item_book.2_12_142", "唐七公子", "30", "15", "10")

insert into "作者" ("词条id", "姓名", "年龄", "出版作品数", "网络作品数") values ("item_book.2_12_143", "吱吱", "35", "4", "20")

insert into "作者" ("词条id", "姓名", "年龄", "出版作品数", "网络作品数") values ("item_book.2_12_144", "梁夜白", "40", "16", "15")

insert into "作者" ("词条id", "姓名", "年龄", "出版作品数", "网络作品数") values ("item_book.2_12_145", "林绾绾", "50", "20", "30")

insert into "出版图书" ("词条id", "书名", "作者id", "评分", "评价人数", "字数", "点击数", "类型") values ("item_book.2_12_146", "人类简史", "item_book.2_12_142", "5", "13万", "1万", "1000万", "小说")

insert into "出版图书" ("词条id", "书名", "作者id", "评分", "评价人数", "字数", "点击数", "类型") values ("item_book.2_12_147", "三体", "item_book.2_12_143", "6", "11万", "10.9万", "1500万", "人文社科")

insert into "出版图书" ("词条id", "书名", "作者id", "评分", "评价人数", "字数", "点击数", "类型") values ("item_book.2_12_148", "熊镇", "item_book.2_12_141", "7", "11.5万", "20.4万", "500万", "经济管理")

insert into "出版图书" ("词条id", "书名", "作者id", "评分", "评价人数", "字数", "点击数", "类型") values ("item_book.2_12_149", "激荡三十年", "item_book.2_12_145", "8", "12万", "22.3万", "400万", "科技书籍")

insert into "出版图书" ("词条id", "书名", "作者id", "评分", "评价人数", "字数", "点击数", "类型") values ("item_book.2_12_150", "贫穷的本质", "item_book.2_12_145", "10", "10万", "26.3万", "450万", "科技书籍")

insert into "网络小说" ("词条id", "书名", "作者id", "评分", "类型", "状态", "价格") values ("item_book.2_12_151", "三生三世十里桃花", "item_book.2_12_143", "3", "现言", "完结", "0")

insert into "网络小说" ("词条id", "书名", "作者id", "评分", "类型", "状态", "价格") values ("item_book.2_12_152", "爱情的开关", "item_book.2_12_143", "4", "古言", "更新中", "7")

insert into "网络小说" ("词条id", "书名", "作者id", "评分", "类型", "状态", "价格") values ("item_book.2_12_153", "医妃权倾天下", "item_book.2_12_143", "6.7", "同人", "更新中", "8")

insert into "网络小说" ("词条id", "书名", "作者id", "评分", "类型", "状态", "价格") values ("item_book.2_12_154", "重生之锦绣皇后", "item_book.2_12_145", "7.8", "种田", "完结", "9")

insert into "网络小说" ("词条id", "书名", "作者id", "评分", "类型", "状态", "价格") values ("item_book.2_12_155", "蓝桥几顾", "item_book.2_12_144", "7.9", "穿越", "更新中", "10")

insert into "畅销榜" ("网络小说id", "周排名", "月排名", "总排名") values ("item_book.2_12_152", "1", "1", "1")

insert into "畅销榜" ("网络小说id", "周排名", "月排名", "总排名") values ("item_book.2_12_154", "15", "15", "14")

insert into "畅销榜" ("网络小说id", "周排名", "月排名", "总排名") values ("item_book.2_12_154", "16", "17", "17")

insert into "畅销榜" ("网络小说id", "周排名", "月排名", "总排名") values ("item_book.2_12_153", "17", "18", "18")

insert into "畅销榜" ("网络小说id", "周排名", "月排名", "总排名") values ("item_book.2_12_155", "20", "19", "20")

insert into "收藏榜" ("网络小说id", "周排名", "月排名", "总排名") values ("item_book.2_12_152", "1", "1", "1")

insert into "收藏榜" ("网络小说id", "周排名", "月排名", "总排名") values ("item_book.2_12_152", "15", "2", "10")

insert into "收藏榜" ("网络小说id", "周排名", "月排名", "总排名") values ("item_book.2_12_152", "14", "5", "9")

insert into "收藏榜" ("网络小说id", "周排名", "月排名", "总排名") values ("item_book.2_12_153", "16", "10", "8")

insert into "收藏榜" ("网络小说id", "周排名", "月排名", "总排名") values ("item_book.2_12_154", "20", "20", "20")

