PRAGMA foreign_keys = ON;

CREATE TABLE "朝代" (
"词条id" int,
"名称" text,
"起始时间" time,
"结束时间" time,
"都城" text,
"人口数量" int,
"国土面积" int,
primary key ("词条id")
);

CREATE TABLE "皇帝" (
"词条id" int,
"中文名" text,
"所处朝代id" int,
"出生时间" time,
"去世时间" time,
"主要成就" text,
"年号" text,
primary key ("词条id"),
foreign key("所处朝代id") references "朝代"("词条id")
);

CREATE TABLE "各朝代皇帝" (
"皇帝id" int,
"朝代id" int,
"登基时间" time,
"在位时间" int,
"第几位" int,
primary key ("皇帝id"),
foreign key("皇帝id") references "皇帝"("词条id"),
foreign key("朝代id") references "朝代"("词条id")
);

CREATE TABLE "年号" (
"年号" text,
"朝代id" int,
"上一年号" text,
"下一年号" text,
foreign key("朝代id") references "朝代"("词条id")
);

CREATE TABLE "大臣" (
"词条id" int,
"姓名" text,
"所处朝代id" int,
"出生时间" time,
"去世时间" time,
"职业" text,
primary key ("词条id"),
foreign key("所处朝代id") references "朝代"("词条id")
);

CREATE TABLE "大臣辅佐的皇帝" (
"大臣id" int,
"皇帝id" int,
"辅佐时间" int,
foreign key("皇帝id") references "皇帝"("词条id"),
foreign key("大臣id") references "大臣"("词条id")
);

insert into "朝代" ("词条id", "名称", "起始时间", "结束时间", "都城", "人口数量", "国土面积") values ("item_dynasties_words_8_66", "唐朝", "618年", "907年", "长安", "8050万", "997万")

insert into "朝代" ("词条id", "名称", "起始时间", "结束时间", "都城", "人口数量", "国土面积") values ("item_dynasties_words_8_67", "宋朝", "1456年", "882年", "洛阳", "8600万", "1230万")

insert into "朝代" ("词条id", "名称", "起始时间", "结束时间", "都城", "人口数量", "国土面积") values ("item_dynasties_words_8_68", "元朝", "719年", "1134年", "大都", "9000万", "1154万")

insert into "朝代" ("词条id", "名称", "起始时间", "结束时间", "都城", "人口数量", "国土面积") values ("item_dynasties_words_8_69", "明朝", "1045年", "1856年", "北京", "8780万", "1467万")

insert into "朝代" ("词条id", "名称", "起始时间", "结束时间", "都城", "人口数量", "国土面积") values ("item_dynasties_words_8_70", "清朝", "1636年", "1912年", "沈阳", "9600万", "1372万")

insert into "皇帝" ("词条id", "中文名", "所处朝代id", "出生时间", "去世时间", "主要成就", "年号") values ("item_dynasties_words_8_71", "成吉思汗", "item_dynasties_words_8_69", "618年", "618年", "擒鳌拜", "乾隆")

insert into "皇帝" ("词条id", "中文名", "所处朝代id", "出生时间", "去世时间", "主要成就", "年号") values ("item_dynasties_words_8_72", "朱元璋", "item_dynasties_words_8_68", "798年", "700年", "平定三藩", "康熙")

insert into "皇帝" ("词条id", "中文名", "所处朝代id", "出生时间", "去世时间", "主要成就", "年号") values ("item_dynasties_words_8_73", "李世民", "item_dynasties_words_8_70", "1012年", "824年", "收台湾", "贞观")

insert into "皇帝" ("词条id", "中文名", "所处朝代id", "出生时间", "去世时间", "主要成就", "年号") values ("item_dynasties_words_8_74", "爱新觉罗弘历", "item_dynasties_words_8_66", "1456年", "1500年", "开创“十全武功”", "洪武")

insert into "皇帝" ("词条id", "中文名", "所处朝代id", "出生时间", "去世时间", "主要成就", "年号") values ("item_dynasties_words_8_75", "爱新觉罗·玄烨", "item_dynasties_words_8_70", "1912年", "1912年", "精简政府机构", "中统")

insert into "各朝代皇帝" ("皇帝id", "朝代id", "登基时间", "在位时间", "第几位") values ("item_dynasties_words_8_73", "item_dynasties_words_8_68", "618年", "2年", "1")

insert into "各朝代皇帝" ("皇帝id", "朝代id", "登基时间", "在位时间", "第几位") values ("item_dynasties_words_8_72", "item_dynasties_words_8_66", "1080年", "50年", "4")

insert into "各朝代皇帝" ("皇帝id", "朝代id", "登基时间", "在位时间", "第几位") values ("item_dynasties_words_8_72", "item_dynasties_words_8_66", "1822年", "45年", "7")

insert into "各朝代皇帝" ("皇帝id", "朝代id", "登基时间", "在位时间", "第几位") values ("item_dynasties_words_8_74", "item_dynasties_words_8_68", "1764年", "34年", "5")

insert into "各朝代皇帝" ("皇帝id", "朝代id", "登基时间", "在位时间", "第几位") values ("item_dynasties_words_8_74", "item_dynasties_words_8_70", "1912年", "61年", "8")

insert into "年号" ("年号", "朝代id", "上一年号", "下一年号") values ("康熙", "item_dynasties_words_8_70", "康熙", "康熙")

insert into "年号" ("年号", "朝代id", "上一年号", "下一年号") values ("乾隆", "item_dynasties_words_8_66", "乾隆", "乾隆")

insert into "年号" ("年号", "朝代id", "上一年号", "下一年号") values ("光绪", "item_dynasties_words_8_69", "光绪", "光绪")

insert into "年号" ("年号", "朝代id", "上一年号", "下一年号") values ("宣统", "item_dynasties_words_8_67", "宣统", "宣统")

insert into "年号" ("年号", "朝代id", "上一年号", "下一年号") values ("道光", "item_dynasties_words_8_67", "道光", "道光")

insert into "大臣" ("词条id", "姓名", "所处朝代id", "出生时间", "去世时间", "职业") values ("item_dynasties_words_8_81", "刘统勋", "item_dynasties_words_8_69", "618年", "618年", "内阁大学士")

insert into "大臣" ("词条id", "姓名", "所处朝代id", "出生时间", "去世时间", "职业") values ("item_dynasties_words_8_82", "索尼", "item_dynasties_words_8_66", "1180年", "1560年", "军机大臣")

insert into "大臣" ("词条id", "姓名", "所处朝代id", "出生时间", "去世时间", "职业") values ("item_dynasties_words_8_83", "索额图", "item_dynasties_words_8_67", "1542年", "1674年", "皇帝老师")

insert into "大臣" ("词条id", "姓名", "所处朝代id", "出生时间", "去世时间", "职业") values ("item_dynasties_words_8_84", "冯道", "item_dynasties_words_8_67", "1768年", "1320年", "议政大臣")

insert into "大臣" ("词条id", "姓名", "所处朝代id", "出生时间", "去世时间", "职业") values ("item_dynasties_words_8_85", "曹振镛", "item_dynasties_words_8_70", "1912年", "1912年", "宰相")

insert into "大臣辅佐的皇帝" ("大臣id", "皇帝id", "辅佐时间") values ("item_dynasties_words_8_85", "item_dynasties_words_8_73", "5年")

insert into "大臣辅佐的皇帝" ("大臣id", "皇帝id", "辅佐时间") values ("item_dynasties_words_8_84", "item_dynasties_words_8_74", "10年")

insert into "大臣辅佐的皇帝" ("大臣id", "皇帝id", "辅佐时间") values ("item_dynasties_words_8_85", "item_dynasties_words_8_73", "8年")

insert into "大臣辅佐的皇帝" ("大臣id", "皇帝id", "辅佐时间") values ("item_dynasties_words_8_83", "item_dynasties_words_8_72", "9年")

insert into "大臣辅佐的皇帝" ("大臣id", "皇帝id", "辅佐时间") values ("item_dynasties_words_8_84", "item_dynasties_words_8_75", "15年")

