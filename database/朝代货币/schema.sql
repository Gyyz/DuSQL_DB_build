PRAGMA foreign_keys = ON;

CREATE TABLE "朝代" (
"词条id" int,
"名称" text,
"统治时间" int,
primary key ("词条id")
);

CREATE TABLE "各年号统治时间" (
"词条id" int,
"年号" text,
"所处朝代id" int,
"统治时间" int,
primary key ("词条id"),
foreign key("所处朝代id") references "朝代"("词条id")
);

CREATE TABLE "各朝代货币" (
"朝代id" int,
"货币" text,
"使用时间" int,
foreign key("朝代id") references "朝代"("词条id")
);

insert into "朝代" ("词条id", "名称", "统治时间") values ("item_dynasties_words_6_46", "唐", "30年")

insert into "朝代" ("词条id", "名称", "统治时间") values ("item_dynasties_words_6_47", "宋", "45年")

insert into "朝代" ("词条id", "名称", "统治时间") values ("item_dynasties_words_6_48", "元", "70年")

insert into "朝代" ("词条id", "名称", "统治时间") values ("item_dynasties_words_6_49", "明", "100年")

insert into "朝代" ("词条id", "名称", "统治时间") values ("item_dynasties_words_6_50", "清", "267年")

insert into "各年号统治时间" ("词条id", "年号", "所处朝代id", "统治时间") values ("item_dynasties_words_6_51", "康熙", "item_dynasties_words_6_50", "62年")

insert into "各年号统治时间" ("词条id", "年号", "所处朝代id", "统治时间") values ("item_dynasties_words_6_52", "雍正", "item_dynasties_words_6_49", "13年")

insert into "各年号统治时间" ("词条id", "年号", "所处朝代id", "统治时间") values ("item_dynasties_words_6_53", "乾隆", "item_dynasties_words_6_50", "60年")

insert into "各年号统治时间" ("词条id", "年号", "所处朝代id", "统治时间") values ("item_dynasties_words_6_54", "嘉庆", "item_dynasties_words_6_48", "25年")

insert into "各年号统治时间" ("词条id", "年号", "所处朝代id", "统治时间") values ("item_dynasties_words_6_55", "道光", "item_dynasties_words_6_48", "30年")

insert into "各朝代货币" ("朝代id", "货币", "使用时间") values ("item_dynasties_words_6_49", "刀币", "30年")

insert into "各朝代货币" ("朝代id", "货币", "使用时间") values ("item_dynasties_words_6_46", "布币", "35年")

insert into "各朝代货币" ("朝代id", "货币", "使用时间") values ("item_dynasties_words_6_46", "环钱", "40年")

insert into "各朝代货币" ("朝代id", "货币", "使用时间") values ("item_dynasties_words_6_49", "白银", "45年")

insert into "各朝代货币" ("朝代id", "货币", "使用时间") values ("item_dynasties_words_6_50", "黄金", "60年")

