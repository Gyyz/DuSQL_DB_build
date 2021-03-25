PRAGMA foreign_keys = ON;

CREATE TABLE "学校" (
"词条id" int,
"名称" text,
"所在省份" text,
"类型" text,
"是否985" binary,
"是否211" binary,
primary key ("词条id")
);

CREATE TABLE "省份" (
"词条id" int,
"省名" text,
"2018年考生数量" int,
"985高校数量" int,
"211高校数量" int,
primary key ("词条id")
);

CREATE TABLE "各省高校招生计划" (
"学校id" int,
"省份id" int,
"招生人数" int,
foreign key("学校id") references "学校"("词条id"),
foreign key("省份id") references "省份"("词条id")
);

CREATE TABLE "专业" (
"词条id" int,
"专业名称" text,
"学科类型" text,
"学制" int,
primary key ("词条id")
);

CREATE TABLE "清华大学招生计划" (
"专业id" int,
"省份id" int,
"招考类型" text,
"学费" int,
"招生人数" int,
foreign key("专业id") references "专业"("词条id"),
foreign key("省份id") references "省份"("词条id")
);

insert into "学校" ("词条id", "名称", "所在省份", "类型", "是否985", "是否211") values ("item_enterprise_2_1", "北京大学", "北京", "工科", "是", "是")

insert into "学校" ("词条id", "名称", "所在省份", "类型", "是否985", "是否211") values ("item_enterprise_2_2", "中国人民大学", "天津", "理科", "否", "否")

insert into "学校" ("词条id", "名称", "所在省份", "类型", "是否985", "是否211") values ("item_enterprise_2_3", "清华大学", "吉林", "综合", "否", "是")

insert into "学校" ("词条id", "名称", "所在省份", "类型", "是否985", "是否211") values ("item_enterprise_2_4", "中国农业大学", "黑龙江", "文科", "是", "否")

insert into "学校" ("词条id", "名称", "所在省份", "类型", "是否985", "是否211") values ("item_enterprise_2_5", "南开大学", "北京", "师范", "是", "否")

insert into "省份" ("词条id", "省名", "2018年考生数量", "985高校数量", "211高校数量") values ("item_enterprise_2_6", "北京", "10万", "0", "2")

insert into "省份" ("词条id", "省名", "2018年考生数量", "985高校数量", "211高校数量") values ("item_enterprise_2_7", "天津", "80万", "10", "20")

insert into "省份" ("词条id", "省名", "2018年考生数量", "985高校数量", "211高校数量") values ("item_enterprise_2_8", "江苏", "80万", "0", "2")

insert into "省份" ("词条id", "省名", "2018年考生数量", "985高校数量", "211高校数量") values ("item_enterprise_2_9", "浙江", "80万", "10", "2")

insert into "省份" ("词条id", "省名", "2018年考生数量", "985高校数量", "211高校数量") values ("item_enterprise_2_10", "河南", "10万", "0", "2")

insert into "各省高校招生计划" ("学校id", "省份id", "招生人数") values ("item_enterprise_2_4", "item_enterprise_2_6", "40")

insert into "各省高校招生计划" ("学校id", "省份id", "招生人数") values ("item_enterprise_2_3", "item_enterprise_2_9", "1000")

insert into "各省高校招生计划" ("学校id", "省份id", "招生人数") values ("item_enterprise_2_1", "item_enterprise_2_8", "40")

insert into "各省高校招生计划" ("学校id", "省份id", "招生人数") values ("item_enterprise_2_4", "item_enterprise_2_10", "1000")

insert into "各省高校招生计划" ("学校id", "省份id", "招生人数") values ("item_enterprise_2_2", "item_enterprise_2_6", "40")

insert into "专业" ("词条id", "专业名称", "学科类型", "学制") values ("item_enterprise_2_11", "计算机科学与技术", "本科", "4年")

insert into "专业" ("词条id", "专业名称", "学科类型", "学制") values ("item_enterprise_2_12", "机械制造", "本科", "4年")

insert into "专业" ("词条id", "专业名称", "学科类型", "学制") values ("item_enterprise_2_13", "建筑学", "本科", "5年")

insert into "专业" ("词条id", "专业名称", "学科类型", "学制") values ("item_enterprise_2_14", "法学", "本硕", "7年")

insert into "专业" ("词条id", "专业名称", "学科类型", "学制") values ("item_enterprise_2_15", "临床医学", "本硕博", "8年")

insert into "清华大学招生计划" ("专业id", "省份id", "招考类型", "学费", "招生人数") values ("item_enterprise_2_12", "item_enterprise_2_8", "普通", "4000", "100")

insert into "清华大学招生计划" ("专业id", "省份id", "招考类型", "学费", "招生人数") values ("item_enterprise_2_11", "item_enterprise_2_8", "专项", "10000", "1000")

insert into "清华大学招生计划" ("专业id", "省份id", "招考类型", "学费", "招生人数") values ("item_enterprise_2_15", "item_enterprise_2_8", "专项", "10000", "100")

insert into "清华大学招生计划" ("专业id", "省份id", "招考类型", "学费", "招生人数") values ("item_enterprise_2_13", "item_enterprise_2_10", "专项", "4000", "1000")

insert into "清华大学招生计划" ("专业id", "省份id", "招考类型", "学费", "招生人数") values ("item_enterprise_2_15", "item_enterprise_2_7", "普通", "10000", "1000")

