PRAGMA foreign_keys = ON;

CREATE TABLE "国家" (
"词条id" int,
"名称" text,
"时区" int,
"国家象征" text,
primary key ("词条id")
);

CREATE TABLE "宗教" (
"词条id" int,
"名称" text,
"创始人物" text,
"创始地点" text,
"宗教主张" text,
"教徒比例" int,
primary key ("词条id")
);

CREATE TABLE "各国宗教" (
"宗教id" int,
"国家id" int,
"信仰人口" int,
foreign key("国家id") references "国家"("词条id"),
foreign key("宗教id") references "宗教"("词条id")
);

CREATE TABLE "信教比例" (
"月份" time,
"国家id" int,
"比例" int,
foreign key("国家id") references "国家"("词条id")
);

insert into "国家" ("词条id", "名称", "时区", "国家象征") values ("item_geography.2_9_81", "中国", "东八区", "中华人民共和国国徽")

insert into "国家" ("词条id", "名称", "时区", "国家象征") values ("item_geography.2_9_82", "意大利", "UTC+1", "枫叶")

insert into "国家" ("词条id", "名称", "时区", "国家象征") values ("item_geography.2_9_83", "美国", "UTC-4至UTC-12", "自由女神")

insert into "国家" ("词条id", "名称", "时区", "国家象征") values ("item_geography.2_9_84", "加拿大", "UTC-3.5至UTC-8", "枫叶")

insert into "国家" ("词条id", "名称", "时区", "国家象征") values ("item_geography.2_9_85", "法国", "UTC+1", "埃菲尔铁塔")

insert into "宗教" ("词条id", "名称", "创始人物", "创始地点", "宗教主张", "教徒比例") values ("item_geography.2_9_86", "基督教", "耶稣", "耶路撒冷", "有神论", "34%")

insert into "宗教" ("词条id", "名称", "创始人物", "创始地点", "宗教主张", "教徒比例") values ("item_geography.2_9_87", "天主教", "耶稣", "耶路撒冷", "有神论", "34%")

insert into "宗教" ("词条id", "名称", "创始人物", "创始地点", "宗教主张", "教徒比例") values ("item_geography.2_9_88", "印度教", "耶稣 ", "耶路撒冷", "有神论", "25%")

insert into "宗教" ("词条id", "名称", "创始人物", "创始地点", "宗教主张", "教徒比例") values ("item_geography.2_9_89", "犹太教", "摩西", "耶路撒冷", "有神论", "36%")

insert into "宗教" ("词条id", "名称", "创始人物", "创始地点", "宗教主张", "教徒比例") values ("item_geography.2_9_90", "佛教", "释迦牟尼", "耶路撒冷", "无神论", "47%")

insert into "各国宗教" ("宗教id", "国家id", "信仰人口") values ("item_geography.2_9_87", "item_geography.2_9_81", "100万")

insert into "各国宗教" ("宗教id", "国家id", "信仰人口") values ("item_geography.2_9_86", "item_geography.2_9_85", "26.4亿")

insert into "各国宗教" ("宗教id", "国家id", "信仰人口") values ("item_geography.2_9_90", "item_geography.2_9_85", "3万")

insert into "各国宗教" ("宗教id", "国家id", "信仰人口") values ("item_geography.2_9_89", "item_geography.2_9_82", "1万")

insert into "各国宗教" ("宗教id", "国家id", "信仰人口") values ("item_geography.2_9_88", "item_geography.2_9_84", "15万")

insert into "信教比例" ("月份", "国家id", "比例") values ("1月", "item_geography.2_9_81", "20%")

insert into "信教比例" ("月份", "国家id", "比例") values ("2月", "item_geography.2_9_84", "35%")

insert into "信教比例" ("月份", "国家id", "比例") values ("3月", "item_geography.2_9_85", "40%")

insert into "信教比例" ("月份", "国家id", "比例") values ("4月", "item_geography.2_9_84", "44%")

insert into "信教比例" ("月份", "国家id", "比例") values ("5月", "item_geography.2_9_84", "50%")

