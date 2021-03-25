PRAGMA foreign_keys = ON;

CREATE TABLE "事业群" (
"词条id" int,
"名称" text,
"负责人" text,
"员工数量" int,
"目标营收" int,
"成本支出" int,
primary key ("词条id")
);

CREATE TABLE "部门" (
"词条id" int,
"部门名称" text,
"职责" text,
"所属群id" int,
primary key ("词条id"),
foreign key("所属群id") references "事业群"("词条id")
);

CREATE TABLE "员工" (
"词条id" int,
"姓名" text,
"职称" text,
"薪资" int,
"年龄" int,
"工龄" int,
"所属部门id" int,
primary key ("词条id"),
foreign key("所属部门id") references "部门"("词条id")
);

CREATE TABLE "部门人员" (
"部门id" int,
"年份" time,
"员工数量" int,
"离职人数" int,
"招聘人数" int,
foreign key("部门id") references "部门"("词条id")
);

insert into "事业群" ("词条id", "名称", "负责人", "员工数量", "目标营收", "成本支出") values ("item_enterprise_8_76", "商业联盟", "张晓阳", "1000", "10亿", "1亿")

insert into "事业群" ("词条id", "名称", "负责人", "员工数量", "目标营收", "成本支出") values ("item_enterprise_8_77", "基础平台", "李一乐", "590", "60亿", "9亿")

insert into "事业群" ("词条id", "名称", "负责人", "员工数量", "目标营收", "成本支出") values ("item_enterprise_8_78", "智能产品", "马可", "650", "60亿", "1亿")

insert into "事业群" ("词条id", "名称", "负责人", "员工数量", "目标营收", "成本支出") values ("item_enterprise_8_79", "游戏", "张艺", "1200", "10亿", "9亿")

insert into "事业群" ("词条id", "名称", "负责人", "员工数量", "目标营收", "成本支出") values ("item_enterprise_8_80", "文娱", "曾南", "1300", "10亿", "1亿")

insert into "部门" ("词条id", "部门名称", "职责", "所属群id") values ("item_enterprise_8_81", "广告品牌部", "负责广告分发及维护", "item_enterprise_8_80")

insert into "部门" ("词条id", "部门名称", "职责", "所属群id") values ("item_enterprise_8_82", "点击预估部门", "广告排序", "item_enterprise_8_80")

insert into "部门" ("词条id", "部门名称", "职责", "所属群id") values ("item_enterprise_8_83", "搜索策略部门", "搜索基础策略研发及优化", "item_enterprise_8_77")

insert into "部门" ("词条id", "部门名称", "职责", "所属群id") values ("item_enterprise_8_84", "基础架构部", "机器管理及部署", "item_enterprise_8_76")

insert into "部门" ("词条id", "部门名称", "职责", "所属群id") values ("item_enterprise_8_85", "用户产品调研部", "用户目标群体调研及产品设计", "item_enterprise_8_76")

insert into "员工" ("词条id", "姓名", "职称", "薪资", "年龄", "工龄", "所属部门id") values ("item_enterprise_8_86", "李乐乐", "工程师", "20000", "22", "1", "item_enterprise_8_82")

insert into "员工" ("词条id", "姓名", "职称", "薪资", "年龄", "工龄", "所属部门id") values ("item_enterprise_8_87", "张天天", "高级工程师", "58000", "35", "9", "item_enterprise_8_83")

insert into "员工" ("词条id", "姓名", "职称", "薪资", "年龄", "工龄", "所属部门id") values ("item_enterprise_8_88", "田小雨", "资深工程师", "20000", "35", "1", "item_enterprise_8_81")

insert into "员工" ("词条id", "姓名", "职称", "薪资", "年龄", "工龄", "所属部门id") values ("item_enterprise_8_89", "江夏", "架构工程师", "58000", "22", "1", "item_enterprise_8_81")

insert into "员工" ("词条id", "姓名", "职称", "薪资", "年龄", "工龄", "所属部门id") values ("item_enterprise_8_90", "陈晓程", "高级工程师", "20000", "35", "9", "item_enterprise_8_82")

insert into "部门人员" ("部门id", "年份", "员工数量", "离职人数", "招聘人数") values ("item_enterprise_8_85", "2017", "30", "1", "10")

insert into "部门人员" ("部门id", "年份", "员工数量", "离职人数", "招聘人数") values ("item_enterprise_8_84", "2018", "150", "20", "30")

insert into "部门人员" ("部门id", "年份", "员工数量", "离职人数", "招聘人数") values ("item_enterprise_8_84", "2017", "150", "1", "30")

insert into "部门人员" ("部门id", "年份", "员工数量", "离职人数", "招聘人数") values ("item_enterprise_8_82", "2017", "150", "20", "10")

insert into "部门人员" ("部门id", "年份", "员工数量", "离职人数", "招聘人数") values ("item_enterprise_8_83", "2017", "30", "1", "30")

