PRAGMA foreign_keys = ON;

CREATE TABLE "山峰" (
"词条id" int,
"名称" text,
"所属山系" text,
"海拔" int,
"首次登顶时间" time,
"排名" int,
primary key ("词条id")
);

CREATE TABLE "国家" (
"词条id" int,
"名称" text,
"所属洲" text,
primary key ("词条id")
);

CREATE TABLE "山峰的国家" (
"山峰id" int,
"起点国家id" int,
"终点国家id" int,
"走向" text,
foreign key("起点国家id") references "国家"("词条id"),
foreign key("山峰id") references "山峰"("词条id"),
foreign key("终点国家id") references "国家"("词条id")
);

CREATE TABLE "景点" (
"词条id" int,
"名称" text,
"山峰id" int,
"门票价格" int,
"游玩季节" text,
primary key ("词条id"),
foreign key("山峰id") references "山峰"("词条id")
);

insert into "山峰" ("词条id", "名称", "所属山系", "海拔", "首次登顶时间", "排名") values ("item_geography.2_3_16", "珠穆朗玛峰", "喜马拉雅山系", "8848米", "1953年5月29", "第一")

insert into "山峰" ("词条id", "名称", "所属山系", "海拔", "首次登顶时间", "排名") values ("item_geography.2_3_17", "乔戈里峰", "喀喇昆仑山脉", "8611米", "1954年7月31日", "第二")

insert into "山峰" ("词条id", "名称", "所属山系", "海拔", "首次登顶时间", "排名") values ("item_geography.2_3_18", "干城章嘉峰", "喜马拉雅山脉", "8586米", "1955年5月25日", "第三")

insert into "山峰" ("词条id", "名称", "所属山系", "海拔", "首次登顶时间", "排名") values ("item_geography.2_3_19", "洛子峰", "喜马拉雅山脉", "8516米", "1956年5月18日", "第四")

insert into "山峰" ("词条id", "名称", "所属山系", "海拔", "首次登顶时间", "排名") values ("item_geography.2_3_20", "马卡鲁峰", "喜马拉雅山脉", "8463米", "1955年5月15日", "第五")

insert into "国家" ("词条id", "名称", "所属洲") values ("item_geography.2_3_21", "中国", "亚洲")

insert into "国家" ("词条id", "名称", "所属洲") values ("item_geography.2_3_22", "美国", "北美洲")

insert into "国家" ("词条id", "名称", "所属洲") values ("item_geography.2_3_23", "澳大利亚", "大洋洲")

insert into "国家" ("词条id", "名称", "所属洲") values ("item_geography.2_3_24", "英国", "欧洲")

insert into "国家" ("词条id", "名称", "所属洲") values ("item_geography.2_3_25", "巴西", "南美洲")

insert into "山峰的国家" ("山峰id", "起点国家id", "终点国家id", "走向") values ("item_geography.2_3_17", "item_geography.2_3_22", "item_geography.2_3_23", "东西")

insert into "山峰的国家" ("山峰id", "起点国家id", "终点国家id", "走向") values ("item_geography.2_3_19", "item_geography.2_3_24", "item_geography.2_3_21", "西南")

insert into "山峰的国家" ("山峰id", "起点国家id", "终点国家id", "走向") values ("item_geography.2_3_18", "item_geography.2_3_21", "item_geography.2_3_22", "东西")

insert into "山峰的国家" ("山峰id", "起点国家id", "终点国家id", "走向") values ("item_geography.2_3_18", "item_geography.2_3_21", "item_geography.2_3_22", "东西")

insert into "山峰的国家" ("山峰id", "起点国家id", "终点国家id", "走向") values ("item_geography.2_3_18", "item_geography.2_3_23", "item_geography.2_3_25", "东西")

insert into "景点" ("词条id", "名称", "山峰id", "门票价格", "游玩季节") values ("item_geography.2_3_26", "黄山", "item_geography.2_3_16", "199", "四季皆宜")

insert into "景点" ("词条id", "名称", "山峰id", "门票价格", "游玩季节") values ("item_geography.2_3_27", "华山", "item_geography.2_3_19", "100", "春夏秋三季适宜")

insert into "景点" ("词条id", "名称", "山峰id", "门票价格", "游玩季节") values ("item_geography.2_3_28", "衡山", "item_geography.2_3_19", "115", "春夏秋三季适宜")

insert into "景点" ("词条id", "名称", "山峰id", "门票价格", "游玩季节") values ("item_geography.2_3_29", "泰山", "item_geography.2_3_19", "120", "四季皆宜")

insert into "景点" ("词条id", "名称", "山峰id", "门票价格", "游玩季节") values ("item_geography.2_3_30", "嵩山", "item_geography.2_3_16", "80", "四季皆宜")

