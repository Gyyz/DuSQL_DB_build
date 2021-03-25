PRAGMA foreign_keys = ON;

CREATE TABLE "战役" (
"词条id" int,
"名称" text,
"历时时间" int,
"地点" text,
"朝代" text,
"参战人数" int,
"死亡人数" int,
primary key ("词条id")
);

CREATE TABLE "将军" (
"词条id" int,
"姓名" text,
"领兵出战次数" int,
"胜数" int,
"败数" int,
primary key ("词条id")
);

CREATE TABLE "纪念将军的诗词" (
"诗词" text,
"作者" text,
"朝代" text,
"纪念将军id" int,
foreign key("纪念将军id") references "将军"("词条id")
);

CREATE TABLE "将军影视形象" (
"将军id" int,
"影视剧" text,
"饰演者" text,
foreign key("将军id") references "将军"("词条id")
);

CREATE TABLE "参战双方" (
"战役id" int,
"赢方将军id" int,
"赢方兵力" int,
"败方将军id" int,
"败方兵力" int,
foreign key("败方将军id") references "将军"("词条id"),
foreign key("战役id") references "战役"("词条id"),
foreign key("赢方将军id") references "将军"("词条id")
);

insert into "战役" ("词条id", "名称", "历时时间", "地点", "朝代", "参战人数", "死亡人数") values ("item_dynasties_words_7_56", "长平之战", "1年", "山西省晋城高平市", "战国", "20万", "10万")

insert into "战役" ("词条id", "名称", "历时时间", "地点", "朝代", "参战人数", "死亡人数") values ("item_dynasties_words_7_57", "雁门之战", "2年", "山西代县", "隋朝", "30万", "15万")

insert into "战役" ("词条id", "名称", "历时时间", "地点", "朝代", "参战人数", "死亡人数") values ("item_dynasties_words_7_58", "桂陵之战", "3年", "河南长垣", "战国", "34万", "25万")

insert into "战役" ("词条id", "名称", "历时时间", "地点", "朝代", "参战人数", "死亡人数") values ("item_dynasties_words_7_59", "城濮之战", "3年", "山东鄄城", "春秋", "80万", "30万")

insert into "战役" ("词条id", "名称", "历时时间", "地点", "朝代", "参战人数", "死亡人数") values ("item_dynasties_words_7_60", "长勺之战", "4年", "山东省莱芜", "三国", "100万", "50万")

insert into "将军" ("词条id", "姓名", "领兵出战次数", "胜数", "败数") values ("item_dynasties_words_7_61", "霍去病", "4", "4", "4")

insert into "将军" ("词条id", "姓名", "领兵出战次数", "胜数", "败数") values ("item_dynasties_words_7_62", "卫青", "5", "8", "5")

insert into "将军" ("词条id", "姓名", "领兵出战次数", "胜数", "败数") values ("item_dynasties_words_7_63", "班超", "6", "7", "6")

insert into "将军" ("词条id", "姓名", "领兵出战次数", "胜数", "败数") values ("item_dynasties_words_7_64", "周瑜", "7", "6", "7")

insert into "将军" ("词条id", "姓名", "领兵出战次数", "胜数", "败数") values ("item_dynasties_words_7_65", "徐达", "10", "10", "10")

insert into "纪念将军的诗词" ("诗词", "作者", "朝代", "纪念将军id") values ("塞下曲六首", "李白", "唐朝", "item_dynasties_words_7_65")

insert into "纪念将军的诗词" ("诗词", "作者", "朝代", "纪念将军id") values ("出塞作", "王维", "宋朝", "item_dynasties_words_7_62")

insert into "纪念将军的诗词" ("诗词", "作者", "朝代", "纪念将军id") values ("赠田九判官", "杜甫", "明朝", "item_dynasties_words_7_61")

insert into "纪念将军的诗词" ("诗词", "作者", "朝代", "纪念将军id") values ("梓州罢吟寄同舍", "李商隐", "清朝", "item_dynasties_words_7_65")

insert into "纪念将军的诗词" ("诗词", "作者", "朝代", "纪念将军id") values ("投梁参政", "陆游", "唐朝", "item_dynasties_words_7_61")

insert into "将军影视形象" ("将军id", "影视剧", "饰演者") values ("item_dynasties_words_7_64", "大汉天子", "徐良")

insert into "将军影视形象" ("将军id", "影视剧", "饰演者") values ("item_dynasties_words_7_65", "汉武大帝", "李乐")

insert into "将军影视形象" ("将军id", "影视剧", "饰演者") values ("item_dynasties_words_7_63", "卫子夫", "张雅西")

insert into "将军影视形象" ("将军id", "影视剧", "饰演者") values ("item_dynasties_words_7_62", "剑行天下", "刘宇涛")

insert into "将军影视形象" ("将军id", "影视剧", "饰演者") values ("item_dynasties_words_7_65", "后汉演义", "陆剑民")

insert into "参战双方" ("战役id", "赢方将军id", "赢方兵力", "败方将军id", "败方兵力") values ("item_dynasties_words_7_58", "item_dynasties_words_7_65", "10万", "item_dynasties_words_7_65", "10万")

insert into "参战双方" ("战役id", "赢方将军id", "赢方兵力", "败方将军id", "败方兵力") values ("item_dynasties_words_7_60", "item_dynasties_words_7_61", "20万", "item_dynasties_words_7_62", "20万")

insert into "参战双方" ("战役id", "赢方将军id", "赢方兵力", "败方将军id", "败方兵力") values ("item_dynasties_words_7_59", "item_dynasties_words_7_62", "40万", "item_dynasties_words_7_64", "40万")

insert into "参战双方" ("战役id", "赢方将军id", "赢方兵力", "败方将军id", "败方兵力") values ("item_dynasties_words_7_59", "item_dynasties_words_7_65", "30万", "item_dynasties_words_7_64", "30万")

insert into "参战双方" ("战役id", "赢方将军id", "赢方兵力", "败方将军id", "败方兵力") values ("item_dynasties_words_7_60", "item_dynasties_words_7_62", "50万", "item_dynasties_words_7_62", "50万")

