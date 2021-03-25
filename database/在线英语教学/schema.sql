PRAGMA foreign_keys = ON;

CREATE TABLE "平台" (
"词条id" int,
"名称" text,
"成立年数" int,
"教师数量" int,
"课程体系分级" int,
primary key ("词条id")
);

CREATE TABLE "青少年课程" (
"平台id" int,
"适合群体" text,
"一节课时间" int,
"课时数" int,
"主题数" int,
"词汇量" int,
foreign key("平台id") references "平台"("词条id")
);

CREATE TABLE "教师" (
"平台id" int,
"外教来自国家" text,
"外教数量" int,
"教师职业占比" int,
foreign key("平台id") references "平台"("词条id")
);

CREATE TABLE "学费" (
"平台id" int,
"课时数" int,
"原价" int,
"折扣" int,
foreign key("平台id") references "平台"("词条id")
);

insert into "平台" ("词条id", "名称", "成立年数", "教师数量", "课程体系分级") values ("item_book.2_5_51", "51talk", "6", "100", "9")

insert into "平台" ("词条id", "名称", "成立年数", "教师数量", "课程体系分级") values ("item_book.2_5_52", " vipkid", "7", "200", "10")

insert into "平台" ("词条id", "名称", "成立年数", "教师数量", "课程体系分级") values ("item_book.2_5_53", " 英孚英语", "8", "300", "11")

insert into "平台" ("词条id", "名称", "成立年数", "教师数量", "课程体系分级") values ("item_book.2_5_54", "华尔街英语", "7", "400", "10")

insert into "平台" ("词条id", "名称", "成立年数", "教师数量", "课程体系分级") values ("item_book.2_5_55", "美联英语", "9", "500", "12")

insert into "青少年课程" ("平台id", "适合群体", "一节课时间", "课时数", "主题数", "词汇量") values ("item_book.2_5_53", "学龄前", "25分钟", "144", "18", "144")

insert into "青少年课程" ("平台id", "适合群体", "一节课时间", "课时数", "主题数", "词汇量") values ("item_book.2_5_51", "小低学员", "30分钟", "148", "20", "150")

insert into "青少年课程" ("平台id", "适合群体", "一节课时间", "课时数", "主题数", "词汇量") values ("item_book.2_5_53", "小高学员", "38分钟", "150", "24", "167")

insert into "青少年课程" ("平台id", "适合群体", "一节课时间", "课时数", "主题数", "词汇量") values ("item_book.2_5_52", "初中", "27分钟", "170", "25", "180")

insert into "青少年课程" ("平台id", "适合群体", "一节课时间", "课时数", "主题数", "词汇量") values ("item_book.2_5_53", "小高学员", "40分钟", "186", "28", "1296")

insert into "教师" ("平台id", "外教来自国家", "外教数量", "教师职业占比") values ("item_book.2_5_53", "美国", "10", "20%")

insert into "教师" ("平台id", "外教来自国家", "外教数量", "教师职业占比") values ("item_book.2_5_52", "加拿大", "50", "23%")

insert into "教师" ("平台id", "外教来自国家", "外教数量", "教师职业占比") values ("item_book.2_5_51", "英国", "60", "35%")

insert into "教师" ("平台id", "外教来自国家", "外教数量", "教师职业占比") values ("item_book.2_5_52", "印度", "70", "30%")

insert into "教师" ("平台id", "外教来自国家", "外教数量", "教师职业占比") values ("item_book.2_5_55", "澳大利亚", "100", "40%")

insert into "学费" ("平台id", "课时数", "原价", "折扣") values ("item_book.2_5_51", "100", "900", "50%")

insert into "学费" ("平台id", "课时数", "原价", "折扣") values ("item_book.2_5_53", " 200", " 1500", " 70%")

insert into "学费" ("平台id", "课时数", "原价", "折扣") values ("item_book.2_5_52", " 500", " 4000", " 80%")

insert into "学费" ("平台id", "课时数", "原价", "折扣") values ("item_book.2_5_52", " 800", " 7000", " 90%")

insert into "学费" ("平台id", "课时数", "原价", "折扣") values ("item_book.2_5_53", " 1000", " 8000", "100%")

