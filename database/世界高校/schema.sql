PRAGMA foreign_keys = ON;

CREATE TABLE "大洲" (
"词条id" int,
"名称" text,
"面积排名" int,
"人口排名" int,
primary key ("词条id")
);

CREATE TABLE "国家" (
"词条id" int,
"名称" text,
"成立时间" time,
"官方语言" text,
"所属洲id" int,
primary key ("词条id"),
foreign key("所属洲id") references "大洲"("词条id")
);

CREATE TABLE "高校" (
"词条id" int,
"名称" text,
"类型" text,
"所属国家id" int,
"世界软科排名" int,
"泰晤士排名" int,
"QS排名" int,
"USNews排名" int,
primary key ("词条id"),
foreign key("所属国家id") references "国家"("词条id")
);

insert into "大洲" ("词条id", "名称", "面积排名", "人口排名") values ("item_geography.2_12_106", "欧洲", "1", "1")

insert into "大洲" ("词条id", "名称", "面积排名", "人口排名") values ("item_geography.2_12_107", "亚洲", "2", "2")

insert into "大洲" ("词条id", "名称", "面积排名", "人口排名") values ("item_geography.2_12_108", "北美洲", "3", "3")

insert into "大洲" ("词条id", "名称", "面积排名", "人口排名") values ("item_geography.2_12_109", "南美洲", "4", "4")

insert into "大洲" ("词条id", "名称", "面积排名", "人口排名") values ("item_geography.2_12_110", "非洲", "5", "5")

insert into "国家" ("词条id", "名称", "成立时间", "官方语言", "所属洲id") values ("item_geography.2_12_111", "美国", "1800", "英语", "item_geography.2_12_108")

insert into "国家" ("词条id", "名称", "成立时间", "官方语言", "所属洲id") values ("item_geography.2_12_112", "加拿大", "1891", "英语", "item_geography.2_12_110")

insert into "国家" ("词条id", "名称", "成立时间", "官方语言", "所属洲id") values ("item_geography.2_12_113", "英国", "1763", "英语", "item_geography.2_12_110")

insert into "国家" ("词条id", "名称", "成立时间", "官方语言", "所属洲id") values ("item_geography.2_12_114", "法国", "1623", "法语", "item_geography.2_12_107")

insert into "国家" ("词条id", "名称", "成立时间", "官方语言", "所属洲id") values ("item_geography.2_12_115", "德国", "1000", "德语", "item_geography.2_12_107")

insert into "高校" ("词条id", "名称", "类型", "所属国家id", "世界软科排名", "泰晤士排名", "QS排名", "USNews排名") values ("item_geography.2_12_116", "牛津大学", "综合研究型大学", "item_geography.2_12_112", "1", "1", "1", "1")

insert into "高校" ("词条id", "名称", "类型", "所属国家id", "世界软科排名", "泰晤士排名", "QS排名", "USNews排名") values ("item_geography.2_12_117", "剑桥大学", "综合研究型大学", "item_geography.2_12_112", "2", "2", "2", "2")

insert into "高校" ("词条id", "名称", "类型", "所属国家id", "世界软科排名", "泰晤士排名", "QS排名", "USNews排名") values ("item_geography.2_12_118", "美国斯坦福大学", "综合研究型大学", "item_geography.2_12_114", "3", "3", "3", "3")

insert into "高校" ("词条id", "名称", "类型", "所属国家id", "世界软科排名", "泰晤士排名", "QS排名", "USNews排名") values ("item_geography.2_12_119", "加州理工学院", "理工类大学", "item_geography.2_12_112", "4", "4", "4", "4")

insert into "高校" ("词条id", "名称", "类型", "所属国家id", "世界软科排名", "泰晤士排名", "QS排名", "USNews排名") values ("item_geography.2_12_120", "麻省理工学院", "理工类大学", "item_geography.2_12_111", "5", "5", "5", "5")

