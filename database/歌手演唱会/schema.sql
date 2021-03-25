PRAGMA foreign_keys = ON;

CREATE TABLE "歌手" (
"词条id" int,
"姓名" text,
"出生日期" time,
"出生地" text,
"演唱会场次" int,
primary key ("词条id")
);

CREATE TABLE "场馆" (
"词条id" int,
"名称" text,
"容纳人数" int,
"所属城市" text,
primary key ("词条id")
);

CREATE TABLE "演唱会" (
"词条id" int,
"演唱会名称" text,
"时间" time,
"场馆id" int,
"歌手id" int,
primary key ("词条id"),
foreign key("歌手id") references "歌手"("词条id"),
foreign key("场馆id") references "场馆"("词条id")
);

CREATE TABLE "演唱会记录" (
"歌手id" int,
"年份" time,
"场次" int,
foreign key("歌手id") references "歌手"("词条id")
);

insert into "歌手" ("词条id", "姓名", "出生日期", "出生地", "演唱会场次") values ("item_entertainment_12_131", "谢霆锋", "1980年10月1日", "香港", "50")

insert into "歌手" ("词条id", "姓名", "出生日期", "出生地", "演唱会场次") values ("item_entertainment_12_132", "蔡依林", "1990年8月8月", "台湾", "150场")

insert into "歌手" ("词条id", "姓名", "出生日期", "出生地", "演唱会场次") values ("item_entertainment_12_133", "周杰伦", "1990年8月8月", "香港", "150场")

insert into "歌手" ("词条id", "姓名", "出生日期", "出生地", "演唱会场次") values ("item_entertainment_12_134", "林俊杰", "1990年8月8月", "香港", "50")

insert into "歌手" ("词条id", "姓名", "出生日期", "出生地", "演唱会场次") values ("item_entertainment_12_135", "杨千嬅", "1980年10月1日", "香港", "150场")

insert into "场馆" ("词条id", "名称", "容纳人数", "所属城市") values ("item_entertainment_12_136", "北京海淀剧院", "7000", "北京")

insert into "场馆" ("词条id", "名称", "容纳人数", "所属城市") values ("item_entertainment_12_137", "上海展览中心", "2.5万", "上海")

insert into "场馆" ("词条id", "名称", "容纳人数", "所属城市") values ("item_entertainment_12_138", "南京奥体中心体育馆", "7000", "南京")

insert into "场馆" ("词条id", "名称", "容纳人数", "所属城市") values ("item_entertainment_12_139", "杭州黄龙体育中心", "2.5万", "杭州")

insert into "场馆" ("词条id", "名称", "容纳人数", "所属城市") values ("item_entertainment_12_140", "合肥大剧院", "7000", "合肥")

insert into "演唱会" ("词条id", "演唱会名称", "时间", "场馆id", "歌手id") values ("item_entertainment_12_141", "杨千嬅巡游世界演唱会", "2019年1月1日", "item_entertainment_12_140", "item_entertainment_12_135")

insert into "演唱会" ("词条id", "演唱会名称", "时间", "场馆id", "歌手id") values ("item_entertainment_12_142", "周杰伦无与伦比演唱会", "2019年11月20日", "item_entertainment_12_136", "item_entertainment_12_131")

insert into "演唱会" ("词条id", "演唱会名称", "时间", "场馆id", "歌手id") values ("item_entertainment_12_143", "蔡依林青春无敌演唱会", "2019年1月1日", "item_entertainment_12_140", "item_entertainment_12_134")

insert into "演唱会" ("词条id", "演唱会名称", "时间", "场馆id", "歌手id") values ("item_entertainment_12_144", "林俊杰与你同在演唱会", "2019年11月20日", "item_entertainment_12_138", "item_entertainment_12_132")

insert into "演唱会" ("词条id", "演唱会名称", "时间", "场馆id", "歌手id") values ("item_entertainment_12_145", "汪峰峰暴来临演唱会", "2019年1月1日", "item_entertainment_12_137", "item_entertainment_12_135")

insert into "演唱会记录" ("歌手id", "年份", "场次") values ("item_entertainment_12_131", "2010年", "5")

insert into "演唱会记录" ("歌手id", "年份", "场次") values ("item_entertainment_12_133", "2018年", "72")

insert into "演唱会记录" ("歌手id", "年份", "场次") values ("item_entertainment_12_131", "2018年", "72")

insert into "演唱会记录" ("歌手id", "年份", "场次") values ("item_entertainment_12_131", "2018年", "5")

insert into "演唱会记录" ("歌手id", "年份", "场次") values ("item_entertainment_12_133", "2018年", "5")

