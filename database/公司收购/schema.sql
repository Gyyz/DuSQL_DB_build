PRAGMA foreign_keys = ON;

CREATE TABLE "公司" (
"词条id" int,
"名称" text,
"总部地点" text,
"成立时间" time,
"员工数量" int,
"市值" int,
primary key ("词条id")
);

CREATE TABLE "收购的公司" (
"公司id" int,
"被收购公司id" int,
"时间" time,
"收购方式" text,
"收购资金" int,
foreign key("被收购公司id") references "公司"("词条id"),
foreign key("公司id") references "公司"("词条id")
);

CREATE TABLE "投资的公司" (
"公司id" int,
"被投资公司id" int,
"时间" time,
"投资资金" int,
"股权占比" int,
foreign key("公司id") references "公司"("词条id"),
foreign key("被投资公司id") references "公司"("词条id")
);

CREATE TABLE "并购的公司" (
"主公司id" int,
"并购公司id" int,
"主公司股权占比" int,
"并购公司股权占比" int,
foreign key("并购公司id") references "公司"("词条id"),
foreign key("主公司id") references "公司"("词条id")
);

insert into "公司" ("词条id", "名称", "总部地点", "成立时间", "员工数量", "市值") values ("item_enterprise_17_171", "百度", "北京", "1999年", "1500", "100亿")

insert into "公司" ("词条id", "名称", "总部地点", "成立时间", "员工数量", "市值") values ("item_enterprise_17_172", "阿里巴巴", "杭州", "2010年", "40000", "4000亿")

insert into "公司" ("词条id", "名称", "总部地点", "成立时间", "员工数量", "市值") values ("item_enterprise_17_173", "腾讯", "深圳", "2010年", "40000", "100亿")

insert into "公司" ("词条id", "名称", "总部地点", "成立时间", "员工数量", "市值") values ("item_enterprise_17_174", "爱奇艺", "杭州", "1999年", "40000", "100亿")

insert into "公司" ("词条id", "名称", "总部地点", "成立时间", "员工数量", "市值") values ("item_enterprise_17_175", "高德地图", "深圳", "1999年", "1500", "100亿")

insert into "收购的公司" ("公司id", "被收购公司id", "时间", "收购方式", "收购资金") values ("item_enterprise_17_175", "item_enterprise_17_173", "2010", "资产收购", "10亿")

insert into "收购的公司" ("公司id", "被收购公司id", "时间", "收购方式", "收购资金") values ("item_enterprise_17_171", "item_enterprise_17_174", "2015", "股权收购", "90亿")

insert into "收购的公司" ("公司id", "被收购公司id", "时间", "收购方式", "收购资金") values ("item_enterprise_17_175", "item_enterprise_17_175", "2010", "资产收购", "90亿")

insert into "收购的公司" ("公司id", "被收购公司id", "时间", "收购方式", "收购资金") values ("item_enterprise_17_173", "item_enterprise_17_175", "2015", "资产收购", "10亿")

insert into "收购的公司" ("公司id", "被收购公司id", "时间", "收购方式", "收购资金") values ("item_enterprise_17_171", "item_enterprise_17_175", "2015", "股权收购", "10亿")

insert into "投资的公司" ("公司id", "被投资公司id", "时间", "投资资金", "股权占比") values ("item_enterprise_17_173", "item_enterprise_17_172", "2005", "10亿", "5%")

insert into "投资的公司" ("公司id", "被投资公司id", "时间", "投资资金", "股权占比") values ("item_enterprise_17_175", "item_enterprise_17_172", "2015", "100亿", "40%")

insert into "投资的公司" ("公司id", "被投资公司id", "时间", "投资资金", "股权占比") values ("item_enterprise_17_171", "item_enterprise_17_172", "2005", "10亿", "40%")

insert into "投资的公司" ("公司id", "被投资公司id", "时间", "投资资金", "股权占比") values ("item_enterprise_17_171", "item_enterprise_17_175", "2005", "100亿", "5%")

insert into "投资的公司" ("公司id", "被投资公司id", "时间", "投资资金", "股权占比") values ("item_enterprise_17_171", "item_enterprise_17_175", "2005", "10亿", "5%")

insert into "并购的公司" ("主公司id", "并购公司id", "主公司股权占比", "并购公司股权占比") values ("item_enterprise_17_174", "item_enterprise_17_174", "40%", "30%")

insert into "并购的公司" ("主公司id", "并购公司id", "主公司股权占比", "并购公司股权占比") values ("item_enterprise_17_174", "item_enterprise_17_174", "45%", "40%")

insert into "并购的公司" ("主公司id", "并购公司id", "主公司股权占比", "并购公司股权占比") values ("item_enterprise_17_175", "item_enterprise_17_175", "45%", "40%")

insert into "并购的公司" ("主公司id", "并购公司id", "主公司股权占比", "并购公司股权占比") values ("item_enterprise_17_173", "item_enterprise_17_172", "40%", "30%")

insert into "并购的公司" ("主公司id", "并购公司id", "主公司股权占比", "并购公司股权占比") values ("item_enterprise_17_175", "item_enterprise_17_171", "40%", "40%")

