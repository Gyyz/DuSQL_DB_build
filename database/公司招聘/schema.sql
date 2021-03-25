PRAGMA foreign_keys = ON;

CREATE TABLE "公司" (
"词条id" int,
"名称" text,
"所在城市" text,
"是否上市" binary,
primary key ("词条id")
);

CREATE TABLE "招聘岗位" (
"词条id" int,
"岗位名称" text,
"学历要求" text,
"职责" text,
"工作年限最低要求" int,
"年龄最低限" int,
"年龄最大限" int,
primary key ("词条id")
);

CREATE TABLE "公司招聘计划" (
"公司id" int,
"招聘岗位id" int,
"基本月薪" int,
"发放月数" int,
"浮动幅度" int,
"招聘人数" int,
foreign key("招聘岗位id") references "招聘岗位"("词条id"),
foreign key("公司id") references "公司"("词条id")
);

insert into "公司" ("词条id", "名称", "所在城市", "是否上市") values ("item_enterprise_11_116", "微软", "上海", "是")

insert into "公司" ("词条id", "名称", "所在城市", "是否上市") values ("item_enterprise_11_117", "腾讯", "北京", "否")

insert into "公司" ("词条id", "名称", "所在城市", "是否上市") values ("item_enterprise_11_118", "网易游戏", "苏州", "是")

insert into "公司" ("词条id", "名称", "所在城市", "是否上市") values ("item_enterprise_11_119", "华为", "深圳", "否")

insert into "公司" ("词条id", "名称", "所在城市", "是否上市") values ("item_enterprise_11_120", "大疆无人机", "成都", "是")

insert into "招聘岗位" ("词条id", "岗位名称", "学历要求", "职责", "工作年限最低要求", "年龄最低限", "年龄最大限") values ("item_enterprise_11_121", "人工智能", "本科", "负责深度学习框架开发和前瞻探索", "0", "22", "35")

insert into "招聘岗位" ("词条id", "岗位名称", "学历要求", "职责", "工作年限最低要求", "年龄最低限", "年龄最大限") values ("item_enterprise_11_122", "算法工程师", "硕士", "负责算法开发和策略调研", "5", "50", "55")

insert into "招聘岗位" ("词条id", "岗位名称", "学历要求", "职责", "工作年限最低要求", "年龄最低限", "年龄最大限") values ("item_enterprise_11_123", "研发工程师", "博士", "负责C++后台开发及平台开发", "5", "50", "35")

insert into "招聘岗位" ("词条id", "岗位名称", "学历要求", "职责", "工作年限最低要求", "年龄最低限", "年龄最大限") values ("item_enterprise_11_124", "软件工程师", "硕士", "负责前端模块架构和开发", "5", "50", "55")

insert into "招聘岗位" ("词条id", "岗位名称", "学历要求", "职责", "工作年限最低要求", "年龄最低限", "年龄最大限") values ("item_enterprise_11_125", "后台开发工程师", "硕士", "负责维护系统稳定性", "0", "22", "55")

insert into "公司招聘计划" ("公司id", "招聘岗位id", "基本月薪", "发放月数", "浮动幅度", "招聘人数") values ("item_enterprise_11_118", "item_enterprise_11_123", "5000", "12", "5%", "1")

insert into "公司招聘计划" ("公司id", "招聘岗位id", "基本月薪", "发放月数", "浮动幅度", "招聘人数") values ("item_enterprise_11_116", "item_enterprise_11_122", "230000", "16", "20%", "50")

insert into "公司招聘计划" ("公司id", "招聘岗位id", "基本月薪", "发放月数", "浮动幅度", "招聘人数") values ("item_enterprise_11_116", "item_enterprise_11_124", "5000", "12", "20%", "50")

insert into "公司招聘计划" ("公司id", "招聘岗位id", "基本月薪", "发放月数", "浮动幅度", "招聘人数") values ("item_enterprise_11_120", "item_enterprise_11_122", "230000", "16", "20%", "50")

insert into "公司招聘计划" ("公司id", "招聘岗位id", "基本月薪", "发放月数", "浮动幅度", "招聘人数") values ("item_enterprise_11_116", "item_enterprise_11_124", "230000", "16", "5%", "50")

