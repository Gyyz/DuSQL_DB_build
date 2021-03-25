PRAGMA foreign_keys = ON;

CREATE TABLE "公司" (
"词条id" int,
"名称" text,
"总部地点" text,
"成立时间" time,
"创始人" text,
"首席执行官" time,
"年营业额" int,
"员工数" int,
primary key ("词条id")
);

CREATE TABLE "品牌" (
"词条id" int,
"名称" text,
"成立时间" time,
"所属公司id" text,
"法定代表人" text,
"注册资本" int,
primary key ("词条id"),
foreign key("所属公司id") references "公司"("词条id")
);

CREATE TABLE "公司品牌历年收入" (
"年份" time,
"品牌id" int,
"营收" int,
"利润" int,
"营收同比增长" int,
"利润同比增长" int,
foreign key("品牌id") references "品牌"("词条id")
);

CREATE TABLE "公司各品牌收入排名" (
"公司id" int,
"品牌id" int,
"营收占比" int,
"利润占比" int,
"支出占比" int,
foreign key("公司id") references "公司"("词条id"),
foreign key("品牌id") references "品牌"("词条id")
);

insert into "公司" ("词条id", "名称", "总部地点", "成立时间", "创始人", "首席执行官", "年营业额", "员工数") values ("item_enterprise_13_131", "百度集团", "北京", "2000", "李彦宏", "李彦宏", "1023亿", "40000")

insert into "公司" ("词条id", "名称", "总部地点", "成立时间", "创始人", "首席执行官", "年营业额", "员工数") values ("item_enterprise_13_132", "阿里巴巴集团", "杭州", "1999年", "马云", "张勇", "3768亿", "103699")

insert into "公司" ("词条id", "名称", "总部地点", "成立时间", "创始人", "首席执行官", "年营业额", "员工数") values ("item_enterprise_13_133", "深圳市腾讯计算机系统有限公司", "深圳", "1998", "马化腾", "刘炽平", "3216亿", "56310")

insert into "公司" ("词条id", "名称", "总部地点", "成立时间", "创始人", "首席执行官", "年营业额", "员工数") values ("item_enterprise_13_134", "北京京东世纪贸易有限公司", "北京", "1998", "刘强东", "刘强东", "288亿", "17.9万")

insert into "公司" ("词条id", "名称", "总部地点", "成立时间", "创始人", "首席执行官", "年营业额", "员工数") values ("item_enterprise_13_135", "网易公司", "杭州", "1997", "丁磊", "丁磊", "675亿", "20000")

insert into "品牌" ("词条id", "名称", "成立时间", "所属公司id", "法定代表人", "注册资本") values ("item_enterprise_13_136", "阿里云", "2009年9月10日", "item_enterprise_13_134", "张勇", "5000万")

insert into "品牌" ("词条id", "名称", "成立时间", "所属公司id", "法定代表人", "注册资本") values ("item_enterprise_13_137", "天猫", "2012年1月11日", "item_enterprise_13_134", "张勇", "1亿")

insert into "品牌" ("词条id", "名称", "成立时间", "所属公司id", "法定代表人", "注册资本") values ("item_enterprise_13_138", "腾讯游戏", "2003", "item_enterprise_13_131", "马化腾", "5000万")

insert into "品牌" ("词条id", "名称", "成立时间", "所属公司id", "法定代表人", "注册资本") values ("item_enterprise_13_139", "度小满", "2018", "item_enterprise_13_132", "朱光", "1亿")

insert into "品牌" ("词条id", "名称", "成立时间", "所属公司id", "法定代表人", "注册资本") values ("item_enterprise_13_140", "京东金融", "2017", "item_enterprise_13_134", "刘强东", "1亿")

insert into "公司品牌历年收入" ("年份", "品牌id", "营收", "利润", "营收同比增长", "利润同比增长") values ("2018", "item_enterprise_13_138", "5亿", "-3", "10%", "-10%")

insert into "公司品牌历年收入" ("年份", "品牌id", "营收", "利润", "营收同比增长", "利润同比增长") values ("2019", "item_enterprise_13_136", "1000亿", "500亿", "100%", "50%")

insert into "公司品牌历年收入" ("年份", "品牌id", "营收", "利润", "营收同比增长", "利润同比增长") values ("2018", "item_enterprise_13_137", "1000亿", "500亿", "100%", "-10%")

insert into "公司品牌历年收入" ("年份", "品牌id", "营收", "利润", "营收同比增长", "利润同比增长") values ("2018", "item_enterprise_13_139", "5亿", "500亿", "10%", "50%")

insert into "公司品牌历年收入" ("年份", "品牌id", "营收", "利润", "营收同比增长", "利润同比增长") values ("2018", "item_enterprise_13_138", "1000亿", "-3", "10%", "50%")

insert into "公司各品牌收入排名" ("公司id", "品牌id", "营收占比", "利润占比", "支出占比") values ("item_enterprise_13_131", "item_enterprise_13_139", "10%", "10%", "30%")

insert into "公司各品牌收入排名" ("公司id", "品牌id", "营收占比", "利润占比", "支出占比") values ("item_enterprise_13_134", "item_enterprise_13_138", "80%", "80%", "60%")

insert into "公司各品牌收入排名" ("公司id", "品牌id", "营收占比", "利润占比", "支出占比") values ("item_enterprise_13_135", "item_enterprise_13_139", "80%", "80%", "60%")

insert into "公司各品牌收入排名" ("公司id", "品牌id", "营收占比", "利润占比", "支出占比") values ("item_enterprise_13_131", "item_enterprise_13_137", "80%", "80%", "60%")

insert into "公司各品牌收入排名" ("公司id", "品牌id", "营收占比", "利润占比", "支出占比") values ("item_enterprise_13_135", "item_enterprise_13_137", "10%", "10%", "30%")

