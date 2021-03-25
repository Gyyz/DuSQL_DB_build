PRAGMA foreign_keys = ON;

CREATE TABLE "电视台" (
"词条id" int,
"名称" text,
"开播时间" time,
"上线时间" time,
"隶属机构" text,
primary key ("词条id")
);

CREATE TABLE "电视剧" (
"词条id" int,
"名称" text,
"出品时间" time,
"出品公司" text,
"发行公司" text,
"首播平台id" int,
primary key ("词条id"),
foreign key("首播平台id") references "电视台"("词条id")
);

CREATE TABLE "电视剧收视" (
"电视剧id" int,
"平台id" int,
"时间段" text,
"收视率" int,
foreign key("平台id") references "电视台"("词条id"),
foreign key("电视剧id") references "电视剧"("词条id")
);

insert into "电视台" ("词条id", "名称", "开播时间", "上线时间", "隶属机构") values ("item_entertainment_7_71", "湖南卫视", "1979年5月16日", "1997年1月1日", "湖南电视台")

insert into "电视台" ("词条id", "名称", "开播时间", "上线时间", "隶属机构") values ("item_entertainment_7_72", "东方卫视", "1997年1月1日", "1998年1月1日", "上海电视台")

insert into "电视台" ("词条id", "名称", "开播时间", "上线时间", "隶属机构") values ("item_entertainment_7_73", "江苏卫视", "1997年1月1日", "1998年1月1日", "江苏电视台")

insert into "电视台" ("词条id", "名称", "开播时间", "上线时间", "隶属机构") values ("item_entertainment_7_74", "浙江卫视", "1997年1月1日", "1997年1月1日", "浙江电视台")

insert into "电视台" ("词条id", "名称", "开播时间", "上线时间", "隶属机构") values ("item_entertainment_7_75", "北京卫视", "1997年1月1日", "1998年1月1日", "北京电视台")

insert into "电视剧" ("词条id", "名称", "出品时间", "出品公司", "发行公司", "首播平台id") values ("item_entertainment_7_76", "甄嬛传", "2013年", "北京电视艺术中心", "北京电视艺术中心", "item_entertainment_7_72")

insert into "电视剧" ("词条id", "名称", "出品时间", "出品公司", "发行公司", "首播平台id") values ("item_entertainment_7_77", "都挺好", "2017年", "东阳正午阳光影视有限公司", "东阳正午阳光影视有限公司", "item_entertainment_7_75")

insert into "电视剧" ("词条id", "名称", "出品时间", "出品公司", "发行公司", "首播平台id") values ("item_entertainment_7_78", "庆余年", "2018年", "腾讯影业", "新丽电视文化投资有限公司", "item_entertainment_7_73")

insert into "电视剧" ("词条id", "名称", "出品时间", "出品公司", "发行公司", "首播平台id") values ("item_entertainment_7_79", "破冰行动", "2018年", "北京爱奇艺科技有限公司", "北京爱奇艺科技有限公司", "item_entertainment_7_73")

insert into "电视剧" ("词条id", "名称", "出品时间", "出品公司", "发行公司", "首播平台id") values ("item_entertainment_7_80", "神探狄仁杰", "2004年", "中央电视台文艺中心影视部", "中央电视台文艺中心影视部", "item_entertainment_7_75")

insert into "电视剧收视" ("电视剧id", "平台id", "时间段", "收视率") values ("item_entertainment_7_79", "item_entertainment_7_74", "17:00-19:00", "0.09%")

insert into "电视剧收视" ("电视剧id", "平台id", "时间段", "收视率") values ("item_entertainment_7_78", "item_entertainment_7_73", "20:00~21:00", "0.74%")

insert into "电视剧收视" ("电视剧id", "平台id", "时间段", "收视率") values ("item_entertainment_7_79", "item_entertainment_7_74", "21:00~22:00", "0.74%")

insert into "电视剧收视" ("电视剧id", "平台id", "时间段", "收视率") values ("item_entertainment_7_77", "item_entertainment_7_73", "22:00~24:00", "0.09%")

insert into "电视剧收视" ("电视剧id", "平台id", "时间段", "收视率") values ("item_entertainment_7_80", "item_entertainment_7_75", "10:00-12:00", "0.09%")

