PRAGMA foreign_keys = ON;

CREATE TABLE "外文书籍" (
"词条id" int,
"名称" text,
"英文名" text,
"原著作者" text,
"字数" int,
primary key ("词条id")
);

CREATE TABLE "译者" (
"词条id" int,
"姓名" text,
"国籍" text,
"翻译作品数量" int,
primary key ("词条id")
);

CREATE TABLE "出版社" (
"词条id" int,
"名称" text,
"成立时间" time,
"成立地点" text,
primary key ("词条id")
);

CREATE TABLE "书籍出版信息" (
"书籍id" int,
"译者id" int,
"出版社id" int,
"出版册数" int,
"出版时间" time,
foreign key("书籍id") references "外文书籍"("词条id"),
foreign key("出版社id") references "出版社"("词条id"),
foreign key("译者id") references "译者"("词条id")
);

insert into "外文书籍" ("词条id", "名称", "英文名", "原著作者", "字数") values ("item_book.2_7_66", "傲慢与偏见", "Pride and Prejudice", "简奥斯汀", "100000")

insert into "外文书籍" ("词条id", "名称", "英文名", "原著作者", "字数") values ("item_book.2_7_67", "简爱", "Jane Eyre", "夏洛蒂·勃朗特", "400000")

insert into "外文书籍" ("词条id", "名称", "英文名", "原著作者", "字数") values ("item_book.2_7_68", "麦田的守望者", "The Catcher in the Rye", "杰罗姆·大卫·塞林格", "500000")

insert into "外文书籍" ("词条id", "名称", "英文名", "原著作者", "字数") values ("item_book.2_7_69", "呼啸山庄", "Wuthering Heights", "艾米莉·勃朗特", "560000")

insert into "外文书籍" ("词条id", "名称", "英文名", "原著作者", "字数") values ("item_book.2_7_70", "飘", "Gone with the Wind", "玛格丽特·米切尔", "900000")

insert into "译者" ("词条id", "姓名", "国籍", "翻译作品数量") values ("item_book.2_7_71", "王科一", "中国", "5")

insert into "译者" ("词条id", "姓名", "国籍", "翻译作品数量") values ("item_book.2_7_72", "赵琦", "新加坡", "6")

insert into "译者" ("词条id", "姓名", "国籍", "翻译作品数量") values ("item_book.2_7_73", "李娜", "马来西亚", "7")

insert into "译者" ("词条id", "姓名", "国籍", "翻译作品数量") values ("item_book.2_7_74", "赵晓莉", "日本", "8")

insert into "译者" ("词条id", "姓名", "国籍", "翻译作品数量") values ("item_book.2_7_75", "刘峰", "澳大利亚", "15")

insert into "出版社" ("词条id", "名称", "成立时间", "成立地点") values ("item_book.2_7_76", "上海译文出版社", "1987-07-06", "上海")

insert into "出版社" ("词条id", "名称", "成立时间", "成立地点") values ("item_book.2_7_77", "人民文学出版社", "1989-05-24", "北京")

insert into "出版社" ("词条id", "名称", "成立时间", "成立地点") values ("item_book.2_7_78", "译林出版社", "1988-06-24", "青海")

insert into "出版社" ("词条id", "名称", "成立时间", "成立地点") values ("item_book.2_7_79", "青海人民出版社", "1990-10-10", "西安")

insert into "出版社" ("词条id", "名称", "成立时间", "成立地点") values ("item_book.2_7_80", "长江文艺出版社", "1990-06-23", "合肥")

insert into "书籍出版信息" ("书籍id", "译者id", "出版社id", "出版册数", "出版时间") values ("item_book.2_7_66", "item_book.2_7_75", "item_book.2_7_79", "10万", "1980-07-24")

insert into "书籍出版信息" ("书籍id", "译者id", "出版社id", "出版册数", "出版时间") values ("item_book.2_7_67", "item_book.2_7_74", "item_book.2_7_76", "20万", "1981-06-21")

insert into "书籍出版信息" ("书籍id", "译者id", "出版社id", "出版册数", "出版时间") values ("item_book.2_7_70", "item_book.2_7_73", "item_book.2_7_76", "10万", "1990-11-24")

insert into "书籍出版信息" ("书籍id", "译者id", "出版社id", "出版册数", "出版时间") values ("item_book.2_7_70", "item_book.2_7_74", "item_book.2_7_79", "99万", "2000-10-10")

insert into "书籍出版信息" ("书籍id", "译者id", "出版社id", "出版册数", "出版时间") values ("item_book.2_7_69", "item_book.2_7_75", "item_book.2_7_78", "1000万", "2010-04-20")

