PRAGMA foreign_keys = ON;

CREATE TABLE "作者" (
"词条id" int,
"姓名" text,
"国籍" text,
"毕业院校" text,
"民族" text,
primary key ("词条id")
);

CREATE TABLE "文集" (
"词条id" int,
"名称" text,
"作者id" int,
"页数" int,
"定价" int,
"出版社" text,
"出版时间" time,
"开本" text,
primary key ("词条id"),
foreign key("作者id") references "作者"("词条id")
);

insert into "作者" ("词条id", "姓名", "国籍", "毕业院校", "民族") values ("item_book.2_6_56", "鲁迅", "中国", "南京矿路学堂", "汉族")

insert into "作者" ("词条id", "姓名", "国籍", "毕业院校", "民族") values ("item_book.2_6_57", "郭沫若", "中国", "北师学堂", "满族")

insert into "作者" ("词条id", "姓名", "国籍", "毕业院校", "民族") values ("item_book.2_6_58", "冰心", "中国", "燕京大学", "回族")

insert into "作者" ("词条id", "姓名", "国籍", "毕业院校", "民族") values ("item_book.2_6_59", "张恨水", "中国", "九州帝国大学", "土家族")

insert into "作者" ("词条id", "姓名", "国籍", "毕业院校", "民族") values ("item_book.2_6_60", "贾平凹", "中国", "九州帝国大学", "傣族")

insert into "文集" ("词条id", "名称", "作者id", "页数", "定价", "出版社", "出版时间", "开本") values ("item_book.2_6_61", "鲁迅全集", "item_book.2_6_57", "200", "2.8", "人民文学出版社", "1982-07-21", "32开")

insert into "文集" ("词条id", "名称", "作者id", "页数", "定价", "出版社", "出版时间", "开本") values ("item_book.2_6_62", "郭沫若全集", "item_book.2_6_57", "230", "4", "译林出版社", "1983-06-21", "17开")

insert into "文集" ("词条id", "名称", "作者id", "页数", "定价", "出版社", "出版时间", "开本") values ("item_book.2_6_63", "路遥全集", "item_book.2_6_58", "250", "5", "安徽人民出版社", "1989-11-21", "15开")

insert into "文集" ("词条id", "名称", "作者id", "页数", "定价", "出版社", "出版时间", "开本") values ("item_book.2_6_64", "冰心全集", "item_book.2_6_56", "400", "20", "武汉文艺出版社", "1988-07-21", "20开")

insert into "文集" ("词条id", "名称", "作者id", "页数", "定价", "出版社", "出版时间", "开本") values ("item_book.2_6_65", "贾平凹全集", "item_book.2_6_59", "500", "28", "安徽人民出版社", "1990-03-02", "16开")

