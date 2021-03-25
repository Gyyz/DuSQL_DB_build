PRAGMA foreign_keys = ON;

CREATE TABLE "企业" (
"词条id" int,
"中文名" text,
"成立时间" time,
"法定代表人" text,
"所属省份" text,
"注册资本" int,
primary key ("词条id")
);

CREATE TABLE "企业融资" (
"企业id" int,
"融资轮次" text,
"融资总额" int,
"年份" time,
foreign key("企业id") references "企业"("词条id")
);

CREATE TABLE "投资公司" (
"企业id" int,
"投资公司" text,
"融资轮次" text,
"融资额" int,
"投资公司持股比例" int,
foreign key("企业id") references "企业"("词条id")
);

insert into "企业" ("词条id", "中文名", "成立时间", "法定代表人", "所属省份", "注册资本") values ("item_enterprise_12_126", "知乎", "2010", "张超", "北京", "100万")

insert into "企业" ("词条id", "中文名", "成立时间", "法定代表人", "所属省份", "注册资本") values ("item_enterprise_12_127", "转转二手", "2015", "李刚", "上海", "1000万")

insert into "企业" ("词条id", "中文名", "成立时间", "法定代表人", "所属省份", "注册资本") values ("item_enterprise_12_128", "独角兽", "2010", "刘墨", "浙江", "100万")

insert into "企业" ("词条id", "中文名", "成立时间", "法定代表人", "所属省份", "注册资本") values ("item_enterprise_12_129", "上门美甲有限公司", "2010", "陈辰", "广东", "1000万")

insert into "企业" ("词条id", "中文名", "成立时间", "法定代表人", "所属省份", "注册资本") values ("item_enterprise_12_130", "蓦然认知", "2015", "张大大", "江苏", "100万")

insert into "企业融资" ("企业id", "融资轮次", "融资总额", "年份") values ("item_enterprise_12_129", "天使", "1000万", "2010")

insert into "企业融资" ("企业id", "融资轮次", "融资总额", "年份") values ("item_enterprise_12_129", "A", "10亿", "2018")

insert into "企业融资" ("企业id", "融资轮次", "融资总额", "年份") values ("item_enterprise_12_128", "B", "1000万", "2010")

insert into "企业融资" ("企业id", "融资轮次", "融资总额", "年份") values ("item_enterprise_12_129", "C", "1000万", "2010")

insert into "企业融资" ("企业id", "融资轮次", "融资总额", "年份") values ("item_enterprise_12_129", "D", "1000万", "2010")

insert into "投资公司" ("企业id", "投资公司", "融资轮次", "融资额", "投资公司持股比例") values ("item_enterprise_12_129", "IDG资本", "天使", "1000万", "10")

insert into "投资公司" ("企业id", "投资公司", "融资轮次", "融资额", "投资公司持股比例") values ("item_enterprise_12_130", "深创投", "A", "10亿", "40%")

insert into "投资公司" ("企业id", "投资公司", "融资轮次", "融资额", "投资公司持股比例") values ("item_enterprise_12_127", "红杉资本", "B", "10亿", "10")

insert into "投资公司" ("企业id", "投资公司", "融资轮次", "融资额", "投资公司持股比例") values ("item_enterprise_12_128", "今日资本", "C", "10亿", "10")

insert into "投资公司" ("企业id", "投资公司", "融资轮次", "融资额", "投资公司持股比例") values ("item_enterprise_12_127", "经纬中国", "D", "1000万", "40%")

