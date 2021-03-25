PRAGMA foreign_keys = ON;

CREATE TABLE "经纪公司" (
"词条id" int,
"公司名称" text,
"成立时间" time,
"注册资本" int,
primary key ("词条id")
);

CREATE TABLE "明星" (
"词条id" int,
"姓名" text,
"所属经纪公司id" int,
"加入时间" time,
"解约时间" time,
primary key ("词条id"),
foreign key("所属经纪公司id") references "经纪公司"("词条id")
);

CREATE TABLE "经纪人" (
"词条id" int,
"姓名" text,
"出生地" text,
"出生日期" time,
primary key ("词条id")
);

CREATE TABLE "明星与经纪人" (
"明星id" int,
"经纪人id" int,
"合作年数" int,
foreign key("明星id") references "明星"("词条id"),
foreign key("经纪人id") references "经纪人"("词条id")
);

insert into "经纪公司" ("词条id", "公司名称", "成立时间", "注册资本") values ("item_entertainment_20_231", "嘉行天下", "2001年", "100万")

insert into "经纪公司" ("词条id", "公司名称", "成立时间", "注册资本") values ("item_entertainment_20_232", "拾捌经纪文化有限公司", "2010年", "1000万")

insert into "经纪公司" ("词条id", "公司名称", "成立时间", "注册资本") values ("item_entertainment_20_233", "喜天影视", "2001年", "1000万")

insert into "经纪公司" ("词条id", "公司名称", "成立时间", "注册资本") values ("item_entertainment_20_234", "英航娱乐", "2010年", "100万")

insert into "经纪公司" ("词条id", "公司名称", "成立时间", "注册资本") values ("item_entertainment_20_235", "华谊兄弟", "2001年", "100万")

insert into "明星" ("词条id", "姓名", "所属经纪公司id", "加入时间", "解约时间") values ("item_entertainment_20_236", "杨幂", "item_entertainment_20_235", "2010年", "2010年~2018年")

insert into "明星" ("词条id", "姓名", "所属经纪公司id", "加入时间", "解约时间") values ("item_entertainment_20_237", "白百合", "item_entertainment_20_233", "2015年", "至今")

insert into "明星" ("词条id", "姓名", "所属经纪公司id", "加入时间", "解约时间") values ("item_entertainment_20_238", "张天爱", "item_entertainment_20_235", "2015年", "至今")

insert into "明星" ("词条id", "姓名", "所属经纪公司id", "加入时间", "解约时间") values ("item_entertainment_20_239", "吴秀波", "item_entertainment_20_231", "2010年", "2010年~2018年")

insert into "明星" ("词条id", "姓名", "所属经纪公司id", "加入时间", "解约时间") values ("item_entertainment_20_240", "陈伟霆", "item_entertainment_20_231", "2010年", "2010年~2018年")

insert into "经纪人" ("词条id", "姓名", "出生地", "出生日期") values ("item_entertainment_20_241", "曾嘉", "北京", "1960年1月1日")

insert into "经纪人" ("词条id", "姓名", "出生地", "出生日期") values ("item_entertainment_20_242", "王京花", "山西省太原市", "1975年5月1日")

insert into "经纪人" ("词条id", "姓名", "出生地", "出生日期") values ("item_entertainment_20_243", "周宴西", "陕西省西安市", "1975年5月1日")

insert into "经纪人" ("词条id", "姓名", "出生地", "出生日期") values ("item_entertainment_20_244", "霍希汶", "浙江省杭州市", "1960年1月1日")

insert into "经纪人" ("词条id", "姓名", "出生地", "出生日期") values ("item_entertainment_20_245", "刘韬", "天津市", "1975年5月1日")

insert into "明星与经纪人" ("明星id", "经纪人id", "合作年数") values ("item_entertainment_20_236", "item_entertainment_20_243", "1")

insert into "明星与经纪人" ("明星id", "经纪人id", "合作年数") values ("item_entertainment_20_238", "item_entertainment_20_244", "10年")

insert into "明星与经纪人" ("明星id", "经纪人id", "合作年数") values ("item_entertainment_20_237", "item_entertainment_20_244", "10年")

insert into "明星与经纪人" ("明星id", "经纪人id", "合作年数") values ("item_entertainment_20_236", "item_entertainment_20_243", "10年")

insert into "明星与经纪人" ("明星id", "经纪人id", "合作年数") values ("item_entertainment_20_240", "item_entertainment_20_241", "10年")

