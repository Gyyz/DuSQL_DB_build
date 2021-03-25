PRAGMA foreign_keys = ON;

CREATE TABLE "诗人" (
"词条id" int,
"姓名" text,
"性别" text,
"所处朝代" text,
"年龄" int,
"作品数量" int,
"称号" text,
primary key ("词条id")
);

CREATE TABLE "诗词" (
"词条id" int,
"诗词名" text,
"作者id" int,
"文学体裁" text,
"传播度" int,
primary key ("词条id"),
foreign key("作者id") references "诗人"("词条id")
);

CREATE TABLE "做官的诗人" (
"诗人id" int,
"所处年号" text,
"做官时间" int,
primary key ("诗人id"),
foreign key("诗人id") references "诗人"("词条id")
);

CREATE TABLE "纪念景点" (
"词条id" int,
"名称" text,
"所属城市" text,
"地址" text,
"纪念人物id" int,
primary key ("词条id"),
foreign key("纪念人物id") references "诗人"("词条id")
);

insert into "诗人" ("词条id", "姓名", "性别", "所处朝代", "年龄", "作品数量", "称号") values ("item_dynasties_words_5_26", "李白", "男", "唐朝", "30岁", "64", "诗仙")

insert into "诗人" ("词条id", "姓名", "性别", "所处朝代", "年龄", "作品数量", "称号") values ("item_dynasties_words_5_27", "陆游", "女", "清朝", "35岁", "100", "诗圣")

insert into "诗人" ("词条id", "姓名", "性别", "所处朝代", "年龄", "作品数量", "称号") values ("item_dynasties_words_5_28", "李清照", "女", "宋朝", "40岁", "870", "诗王")

insert into "诗人" ("词条id", "姓名", "性别", "所处朝代", "年龄", "作品数量", "称号") values ("item_dynasties_words_5_29", "杜甫", "女", "清朝", "41岁", "1000", "诗魔")

insert into "诗人" ("词条id", "姓名", "性别", "所处朝代", "年龄", "作品数量", "称号") values ("item_dynasties_words_5_30", "白居易", "女", "唐朝", "50岁", "9219", "诗仙")

insert into "诗词" ("词条id", "诗词名", "作者id", "文学体裁", "传播度") values ("item_dynasties_words_5_31", "声声慢·寻寻觅觅", "item_dynasties_words_5_27", "五言律诗", "1")

insert into "诗词" ("词条id", "诗词名", "作者id", "文学体裁", "传播度") values ("item_dynasties_words_5_32", "如梦令·昨夜雨疏风骤", "item_dynasties_words_5_28", "七言绝句", "5")

insert into "诗词" ("词条id", "诗词名", "作者id", "文学体裁", "传播度") values ("item_dynasties_words_5_33", "春夜喜雨", "item_dynasties_words_5_28", "宋词", "7")

insert into "诗词" ("词条id", "诗词名", "作者id", "文学体裁", "传播度") values ("item_dynasties_words_5_34", "春望", "item_dynasties_words_5_28", "元曲", "8")

insert into "诗词" ("词条id", "诗词名", "作者id", "文学体裁", "传播度") values ("item_dynasties_words_5_35", "登高", "item_dynasties_words_5_27", "宋词", "10")

insert into "做官的诗人" ("诗人id", "所处年号", "做官时间") values ("item_dynasties_words_5_29", "唐太宗", "3年")

insert into "做官的诗人" ("诗人id", "所处年号", "做官时间") values ("item_dynasties_words_5_27", "唐太宗", "4年")

insert into "做官的诗人" ("诗人id", "所处年号", "做官时间") values ("item_dynasties_words_5_27", "唐代宗", "6年")

insert into "做官的诗人" ("诗人id", "所处年号", "做官时间") values ("item_dynasties_words_5_29", "周慎靓王", "7年")

insert into "做官的诗人" ("诗人id", "所处年号", "做官时间") values ("item_dynasties_words_5_27", "宋仁宗", "10年")

insert into "纪念景点" ("词条id", "名称", "所属城市", "地址", "纪念人物id") values ("item_dynasties_words_5_41", "李白故里", "绵阳", "四川省绵阳江油市青莲镇", "item_dynasties_words_5_26")

insert into "纪念景点" ("词条id", "名称", "所属城市", "地址", "纪念人物id") values ("item_dynasties_words_5_42", "白居易墓地", "洛阳", "洛阳香山白园", "item_dynasties_words_5_27")

insert into "纪念景点" ("词条id", "名称", "所属城市", "地址", "纪念人物id") values ("item_dynasties_words_5_43", "朗州", "常德", "望江楼公园", "item_dynasties_words_5_27")

insert into "纪念景点" ("词条id", "名称", "所属城市", "地址", "纪念人物id") values ("item_dynasties_words_5_44", "望江楼公园", "成都", "河南郑州巩义市站街镇南瑶湾村", "item_dynasties_words_5_27")

insert into "纪念景点" ("词条id", "名称", "所属城市", "地址", "纪念人物id") values ("item_dynasties_words_5_45", "杜甫故里", "郑州", "望江楼公园", "item_dynasties_words_5_28")

