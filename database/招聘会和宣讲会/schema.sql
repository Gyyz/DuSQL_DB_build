PRAGMA foreign_keys = ON;

CREATE TABLE "公司" (
"词条id" int,
"名称" text,
"行业" text,
"校招人数" int,
primary key ("词条id")
);

CREATE TABLE "学校" (
"词条id" int,
"名称" text,
"所在城市" text,
"毕业人数" int,
primary key ("词条id")
);

CREATE TABLE "学校各专业" (
"学校id" int,
"专业" text,
"毕业人数" int,
"专业全国排名" int,
"平均薪资" int,
foreign key("学校id") references "学校"("词条id")
);

CREATE TABLE "公司对口专业" (
"公司id" int,
"专业" text,
"对应岗位" text,
"拟招聘人数" int,
"基本工资" int,
"工资幅度" int,
foreign key("公司id") references "公司"("词条id")
);

CREATE TABLE "公司宣讲会" (
"公司id" int,
"学校id" int,
"宣讲时间" time,
"拟招聘人数" int,
"参加笔试人数" int,
"参加面试人数" int,
"实际招聘人数" int,
foreign key("公司id") references "公司"("词条id"),
foreign key("学校id") references "学校"("词条id")
);

insert into "公司" ("词条id", "名称", "行业", "校招人数") values ("item_activity_14_121", "腾讯", "互联网", "10")

insert into "公司" ("词条id", "名称", "行业", "校招人数") values ("item_activity_14_122", "阿里巴巴", "金融", "1000")

insert into "公司" ("词条id", "名称", "行业", "校招人数") values ("item_activity_14_123", "中国平安", "保险", "1000")

insert into "公司" ("词条id", "名称", "行业", "校招人数") values ("item_activity_14_124", "浦发银行", "电子", "1000")

insert into "公司" ("词条id", "名称", "行业", "校招人数") values ("item_activity_14_125", "国家电网", "电力", "10")

insert into "学校" ("词条id", "名称", "所在城市", "毕业人数") values ("item_activity_14_126", "西安电子科技大学", "西安", "1000")

insert into "学校" ("词条id", "名称", "所在城市", "毕业人数") values ("item_activity_14_127", "西安交通大学", "南京", "4000")

insert into "学校" ("词条id", "名称", "所在城市", "毕业人数") values ("item_activity_14_128", "东南大学", "武汉", "4000")

insert into "学校" ("词条id", "名称", "所在城市", "毕业人数") values ("item_activity_14_129", "华中科技大学", "杭州", "1000")

insert into "学校" ("词条id", "名称", "所在城市", "毕业人数") values ("item_activity_14_130", "浙江大学", "成都", "4000")

insert into "学校各专业" ("学校id", "专业", "毕业人数", "专业全国排名", "平均薪资") values ("item_activity_14_127", "国际经济与贸易", "50", "1", "6000元")

insert into "学校各专业" ("学校id", "专业", "毕业人数", "专业全国排名", "平均薪资") values ("item_activity_14_129", "软件工程", "300", "100", "20000元")

insert into "学校各专业" ("学校id", "专业", "毕业人数", "专业全国排名", "平均薪资") values ("item_activity_14_127", "电气工程及其自动化", "300", "100", "6000元")

insert into "学校各专业" ("学校id", "专业", "毕业人数", "专业全国排名", "平均薪资") values ("item_activity_14_128", "焊接专业", "300", "100", "6000元")

insert into "学校各专业" ("学校id", "专业", "毕业人数", "专业全国排名", "平均薪资") values ("item_activity_14_130", "应用数学", "300", "1", "6000元")

insert into "公司对口专业" ("公司id", "专业", "对应岗位", "拟招聘人数", "基本工资", "工资幅度") values ("item_activity_14_124", "计算机科学与技术", "技术", "10", "6000元", "1%")

insert into "公司对口专业" ("公司id", "专业", "对应岗位", "拟招聘人数", "基本工资", "工资幅度") values ("item_activity_14_123", "人力资源管理", "人力", "1000", "20000元", "20%")

insert into "公司对口专业" ("公司id", "专业", "对应岗位", "拟招聘人数", "基本工资", "工资幅度") values ("item_activity_14_121", "工商管理", "市场", "1000", "6000元", "20%")

insert into "公司对口专业" ("公司id", "专业", "对应岗位", "拟招聘人数", "基本工资", "工资幅度") values ("item_activity_14_123", "市场营销", "销售", "1000", "6000元", "20%")

insert into "公司对口专业" ("公司id", "专业", "对应岗位", "拟招聘人数", "基本工资", "工资幅度") values ("item_activity_14_122", "金融与会计专业", "财务", "1000", "20000元", "20%")

insert into "公司宣讲会" ("公司id", "学校id", "宣讲时间", "拟招聘人数", "参加笔试人数", "参加面试人数", "实际招聘人数") values ("item_activity_14_122", "item_activity_14_128", "2018.7.8", "10", "50", "30", "10")

insert into "公司宣讲会" ("公司id", "学校id", "宣讲时间", "拟招聘人数", "参加笔试人数", "参加面试人数", "实际招聘人数") values ("item_activity_14_125", "item_activity_14_126", "2018.6.30", "1000", "2000", "1500", "900")

insert into "公司宣讲会" ("公司id", "学校id", "宣讲时间", "拟招聘人数", "参加笔试人数", "参加面试人数", "实际招聘人数") values ("item_activity_14_123", "item_activity_14_128", "2018.7.8", "10", "2000", "1500", "900")

insert into "公司宣讲会" ("公司id", "学校id", "宣讲时间", "拟招聘人数", "参加笔试人数", "参加面试人数", "实际招聘人数") values ("item_activity_14_123", "item_activity_14_126", "2018.6.30", "1000", "2000", "1500", "10")

insert into "公司宣讲会" ("公司id", "学校id", "宣讲时间", "拟招聘人数", "参加笔试人数", "参加面试人数", "实际招聘人数") values ("item_activity_14_122", "item_activity_14_129", "2018.6.30", "1000", "50", "30", "10")

