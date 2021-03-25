PRAGMA foreign_keys = ON;

CREATE TABLE "图书" (
"词条id" int,
"书名" text,
"作者" text,
"评分" int,
"总排名" int,
primary key ("词条id")
);

CREATE TABLE "五星榜单" (
"图书id" int,
"评价人数" int,
primary key ("图书id"),
foreign key("图书id") references "图书"("词条id")
);

CREATE TABLE "本月特价书籍" (
"图书id" int,
"现价格" int,
"原价格" int,
primary key ("图书id"),
foreign key("图书id") references "图书"("词条id")
);

CREATE TABLE "人气榜单" (
"图书id" int,
"购买人数" int,
"收藏人数" int,
primary key ("图书id"),
foreign key("图书id") references "图书"("词条id")
);

CREATE TABLE "必读榜单" (
"图书id" int,
"推荐人数" int,
primary key ("图书id"),
foreign key("图书id") references "图书"("词条id")
);

insert into "图书" ("词条id", "书名", "作者", "评分", "总排名") values ("item_book.2_8_81", "82年出生的金智英", "姚鼎", "5", "1")

insert into "图书" ("词条id", "书名", "作者", "评分", "总排名") values ("item_book.2_8_82", "亲密关系", "赵楠竹", "6", "100")

insert into "图书" ("词条id", "书名", "作者", "评分", "总排名") values ("item_book.2_8_83", "金融武侠小说全集", "王卫平", "7", "150")

insert into "图书" ("词条id", "书名", "作者", "评分", "总排名") values ("item_book.2_8_84", "古文辞类", "金庸", "8", "200")

insert into "图书" ("词条id", "书名", "作者", "评分", "总排名") values ("item_book.2_8_85", "人间失格", "琼瑶", "9", "500")

insert into "五星榜单" ("图书id", "评价人数") values ("item_book.2_8_85", "2")

insert into "五星榜单" ("图书id", "评价人数") values ("item_book.2_8_83", "150000")

insert into "五星榜单" ("图书id", "评价人数") values ("item_book.2_8_81", "230000")

insert into "五星榜单" ("图书id", "评价人数") values ("item_book.2_8_81", "500000")

insert into "五星榜单" ("图书id", "评价人数") values ("item_book.2_8_81", "1000000")

insert into "本月特价书籍" ("图书id", "现价格", "原价格") values ("item_book.2_8_81", "20", "80")

insert into "本月特价书籍" ("图书id", "现价格", "原价格") values ("item_book.2_8_82", "22", "90")

insert into "本月特价书籍" ("图书id", "现价格", "原价格") values ("item_book.2_8_83", "24", "99")

insert into "本月特价书籍" ("图书id", "现价格", "原价格") values ("item_book.2_8_82", "35", "100")

insert into "本月特价书籍" ("图书id", "现价格", "原价格") values ("item_book.2_8_84", "50", "150")

insert into "人气榜单" ("图书id", "购买人数", "收藏人数") values ("item_book.2_8_84", "100000", "100000")

insert into "人气榜单" ("图书id", "购买人数", "收藏人数") values ("item_book.2_8_83", "150000", "150000")

insert into "人气榜单" ("图书id", "购买人数", "收藏人数") values ("item_book.2_8_85", "160000", "450000")

insert into "人气榜单" ("图书id", "购买人数", "收藏人数") values ("item_book.2_8_81", "400000", "490000")

insert into "人气榜单" ("图书id", "购买人数", "收藏人数") values ("item_book.2_8_84", "500000", "500000")

insert into "必读榜单" ("图书id", "推荐人数") values ("item_book.2_8_82", "1000")

insert into "必读榜单" ("图书id", "推荐人数") values ("item_book.2_8_84", "2000")

insert into "必读榜单" ("图书id", "推荐人数") values ("item_book.2_8_83", "2400")

insert into "必读榜单" ("图书id", "推荐人数") values ("item_book.2_8_85", "4000")

insert into "必读榜单" ("图书id", "推荐人数") values ("item_book.2_8_82", "5000")

