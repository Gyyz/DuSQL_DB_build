PRAGMA foreign_keys = ON;

CREATE TABLE "公司" (
"词条id" int,
"名称" text,
"成立时间" time,
"创始人" text,
"所属省份" text,
primary key ("词条id")
);

CREATE TABLE "购物网" (
"词条id" int,
"网站名称" text,
"所属公司id" int,
"上线时间" time,
"官网" text,
"百度权重" int,
"PR值" int,
"反链数" int,
"综合分数" int,
"总排名" int,
"所在省排名" int,
"电商网站排名" int,
primary key ("词条id"),
foreign key("所属公司id") references "公司"("词条id")
);

CREATE TABLE "活动日" (
"词条id" int,
"活动名称" text,
"时间" time,
"发明公司id" int,
primary key ("词条id"),
foreign key("发明公司id") references "公司"("词条id")
);

CREATE TABLE "网站活动收入" (
"网站id" int,
"活动id" int,
"年份" time,
"下单金额" int,
"同比增长" int,
foreign key("网站id") references "购物网"("词条id"),
foreign key("活动id") references "活动日"("词条id")
);

CREATE TABLE "网站打假" (
"网站id" int,
"年份" time,
"315提名次数" int,
"买家打假次数" int,
"同比增长" int,
foreign key("网站id") references "购物网"("词条id")
);

insert into "公司" ("词条id", "名称", "成立时间", "创始人", "所属省份") values ("item_software_7_71", "阿里巴巴", "1998", "马云", "浙江")

insert into "公司" ("词条id", "名称", "成立时间", "创始人", "所属省份") values ("item_software_7_72", "京东", "2010年", "刘强东", "北京")

insert into "公司" ("词条id", "名称", "成立时间", "创始人", "所属省份") values ("item_software_7_73", "苏宁", "1998", "张近东", "广东")

insert into "公司" ("词条id", "名称", "成立时间", "创始人", "所属省份") values ("item_software_7_74", "一号店", "1998", "陈欧", "江苏")

insert into "公司" ("词条id", "名称", "成立时间", "创始人", "所属省份") values ("item_software_7_75", "聚美", "1998", "于刚", "四川")

insert into "购物网" ("词条id", "网站名称", "所属公司id", "上线时间", "官网", "百度权重", "PR值", "反链数", "综合分数", "总排名", "所在省排名", "电商网站排名") values ("item_software_7_76", "淘宝城", "item_software_7_74", "1998", "www.taobao.com", "1", "0", "13000", "1000", "1", "20", "45")

insert into "购物网" ("词条id", "网站名称", "所属公司id", "上线时间", "官网", "百度权重", "PR值", "反链数", "综合分数", "总排名", "所在省排名", "电商网站排名") values ("item_software_7_77", " 天猫商城", "item_software_7_73", "2010年", " www.jd.com. www.jumei.com", "9", "7", "5000000", "5000", "200", "56", "70")

insert into "购物网" ("词条id", "网站名称", "所属公司id", "上线时间", "官网", "百度权重", "PR值", "反链数", "综合分数", "总排名", "所在省排名", "电商网站排名") values ("item_software_7_78", "京东商城", "item_software_7_74", "2010年", " www.1hao.com", "9", "0", "5000000", "5000", "200", "20", "45")

insert into "购物网" ("词条id", "网站名称", "所属公司id", "上线时间", "官网", "百度权重", "PR值", "反链数", "综合分数", "总排名", "所在省排名", "电商网站排名") values ("item_software_7_79", " 苏宁易购", "item_software_7_73", "1998", " www.1668.com", "9", "0", "13000", "5000", "1", "20", "45")

insert into "购物网" ("词条id", "网站名称", "所属公司id", "上线时间", "官网", "百度权重", "PR值", "反链数", "综合分数", "总排名", "所在省排名", "电商网站排名") values ("item_software_7_80", "聚美优品", "item_software_7_71", "1998", "www.taobao.com", "1", "7", "5000000", "1000", "1", "56", "45")

insert into "活动日" ("词条id", "活动名称", "时间", "发明公司id") values ("item_software_7_81", "京东618", "每年6月18日", "item_software_7_72")

insert into "活动日" ("词条id", "活动名称", "时间", "发明公司id") values ("item_software_7_82", "天猫双11", "每年11月11日", "item_software_7_72")

insert into "活动日" ("词条id", "活动名称", "时间", "发明公司id") values ("item_software_7_83", "黑色星期五", "每年感恩节", "item_software_7_72")

insert into "活动日" ("词条id", "活动名称", "时间", "发明公司id") values ("item_software_7_84", "女人节", "每年3月8日", "item_software_7_75")

insert into "活动日" ("词条id", "活动名称", "时间", "发明公司id") values ("item_software_7_85", "天猫双11", "每年11月11日", "item_software_7_72")

insert into "网站活动收入" ("网站id", "活动id", "年份", "下单金额", "同比增长") values ("item_software_7_80", "item_software_7_83", "2017", "1000亿", "20%")

insert into "网站活动收入" ("网站id", "活动id", "年份", "下单金额", "同比增长") values ("item_software_7_78", "item_software_7_83", "2019年", "3000亿", "50%")

insert into "网站活动收入" ("网站id", "活动id", "年份", "下单金额", "同比增长") values ("item_software_7_80", "item_software_7_81", "2019年", "3000亿", "20%")

insert into "网站活动收入" ("网站id", "活动id", "年份", "下单金额", "同比增长") values ("item_software_7_77", "item_software_7_84", "2019年", "1000亿", "20%")

insert into "网站活动收入" ("网站id", "活动id", "年份", "下单金额", "同比增长") values ("item_software_7_77", "item_software_7_82", "2019年", "3000亿", "20%")

insert into "网站打假" ("网站id", "年份", "315提名次数", "买家打假次数", "同比增长") values ("item_software_7_78", "2016", "0", "100", "-10%")

insert into "网站打假" ("网站id", "年份", "315提名次数", "买家打假次数", "同比增长") values ("item_software_7_78", "2019", "4", "100000", "20%")

insert into "网站打假" ("网站id", "年份", "315提名次数", "买家打假次数", "同比增长") values ("item_software_7_77", "2019", "4", "100", "-10%")

insert into "网站打假" ("网站id", "年份", "315提名次数", "买家打假次数", "同比增长") values ("item_software_7_79", "2016", "0", "100", "-10%")

insert into "网站打假" ("网站id", "年份", "315提名次数", "买家打假次数", "同比增长") values ("item_software_7_76", "2016", "0", "100", "-10%")

