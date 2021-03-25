PRAGMA foreign_keys = ON;

CREATE TABLE "驾校" (
"词条id" int,
"驾校名称" text,
"驾校地址" text,
"报名电话" int,
"车辆数量" int,
"教练数量" int,
"班车点数量" int,
"学员数量" int,
primary key ("词条id")
);

CREATE TABLE "驾校班型" (
"词条id" int,
"班型名称" text,
"驾照类型" text,
"拿证时间" int,
primary key ("词条id")
);

CREATE TABLE "驾校费用" (
"班型id" int,
"学校id" int,
"费用" int,
foreign key("学校id") references "驾校"("词条id"),
foreign key("班型id") references "驾校班型"("词条id")
);

insert into "驾校" ("词条id", "驾校名称", "驾校地址", "报名电话", "车辆数量", "教练数量", "班车点数量", "学员数量") values ("item_enterprise_19_191", "北方驾校", "昌平区", "010-88700101", "500", "500", "10", "34000")

insert into "驾校" ("词条id", "驾校名称", "驾校地址", "报名电话", "车辆数量", "教练数量", "班车点数量", "学员数量") values ("item_enterprise_19_192", "海淀驾校", "海淀区", "010-55740234", "1000", "1000", "50", "111800")

insert into "驾校" ("词条id", "驾校名称", "驾校地址", "报名电话", "车辆数量", "教练数量", "班车点数量", "学员数量") values ("item_enterprise_19_193", "远大驾校", "丰台区", "010-43230304", "500", "1000", "10", "34000")

insert into "驾校" ("词条id", "驾校名称", "驾校地址", "报名电话", "车辆数量", "教练数量", "班车点数量", "学员数量") values ("item_enterprise_19_194", "平安驾校", "通州区", "010-88659898", "500", "500", "50", "111800")

insert into "驾校" ("词条id", "驾校名称", "驾校地址", "报名电话", "车辆数量", "教练数量", "班车点数量", "学员数量") values ("item_enterprise_19_195", "新月驾校", "昌平区", "010-22346767", "1000", "1000", "50", "34000")

insert into "驾校班型" ("词条id", "班型名称", "驾照类型", "拿证时间") values ("item_enterprise_19_196", "假期班", "C1", "7天")

insert into "驾校班型" ("词条id", "班型名称", "驾照类型", "拿证时间") values ("item_enterprise_19_197", "周末班", "A1", "90天")

insert into "驾校班型" ("词条id", "班型名称", "驾照类型", "拿证时间") values ("item_enterprise_19_198", "全周班", "E", "90天")

insert into "驾校班型" ("词条id", "班型名称", "驾照类型", "拿证时间") values ("item_enterprise_19_199", "平日班", "D", "7天")

insert into "驾校班型" ("词条id", "班型名称", "驾照类型", "拿证时间") values ("item_enterprise_19_200", "全周班", "C1", "7天")

insert into "驾校费用" ("班型id", "学校id", "费用") values ("item_enterprise_19_196", "item_enterprise_19_194", "1600")

insert into "驾校费用" ("班型id", "学校id", "费用") values ("item_enterprise_19_199", "item_enterprise_19_191", "16800")

insert into "驾校费用" ("班型id", "学校id", "费用") values ("item_enterprise_19_196", "item_enterprise_19_192", "1600")

insert into "驾校费用" ("班型id", "学校id", "费用") values ("item_enterprise_19_197", "item_enterprise_19_195", "1600")

insert into "驾校费用" ("班型id", "学校id", "费用") values ("item_enterprise_19_197", "item_enterprise_19_194", "16800")

