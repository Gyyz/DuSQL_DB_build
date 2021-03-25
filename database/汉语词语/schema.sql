PRAGMA foreign_keys = ON;

CREATE TABLE "词语" (
"词条id" int,
"名称" text,
"含义" text,
"类型" text,
primary key ("词条id")
);

CREATE TABLE "近义词" (
"词语id" int,
"近义词id" int,
foreign key("词语id") references "词语"("词条id"),
foreign key("近义词id") references "词语"("词条id")
);

CREATE TABLE "反义词" (
"词语id" int,
"反义词id" int,
foreign key("反义词id") references "词语"("词条id"),
foreign key("词语id") references "词语"("词条id")
);

insert into "词语" ("词条id", "名称", "含义", "类型") values ("item_dynasties_words_2_6", "骄傲", "自以为了不起", "成语")

insert into "词语" ("词条id", "名称", "含义", "类型") values ("item_dynasties_words_2_7", "洋洋自得", "形容十分得意", "普通词")

insert into "词语" ("词条id", "名称", "含义", "类型") values ("item_dynasties_words_2_8", "高兴", "令人感到快乐的", "成语")

insert into "词语" ("词条id", "名称", "含义", "类型") values ("item_dynasties_words_2_9", "郁郁寡欢", "心里苦闷的样子", "成语")

insert into "词语" ("词条id", "名称", "含义", "类型") values ("item_dynasties_words_2_10", "怡然自得", "非常高兴、满足", "普通词")

insert into "近义词" ("词语id", "近义词id") values ("item_dynasties_words_2_6", "item_dynasties_words_2_7")

insert into "近义词" ("词语id", "近义词id") values ("item_dynasties_words_2_10", "item_dynasties_words_2_6")

insert into "近义词" ("词语id", "近义词id") values ("item_dynasties_words_2_9", "item_dynasties_words_2_8")

insert into "近义词" ("词语id", "近义词id") values ("item_dynasties_words_2_7", "item_dynasties_words_2_8")

insert into "近义词" ("词语id", "近义词id") values ("item_dynasties_words_2_10", "item_dynasties_words_2_6")

insert into "反义词" ("词语id", "反义词id") values ("item_dynasties_words_2_9", "item_dynasties_words_2_10")

insert into "反义词" ("词语id", "反义词id") values ("item_dynasties_words_2_9", "item_dynasties_words_2_7")

insert into "反义词" ("词语id", "反义词id") values ("item_dynasties_words_2_9", "item_dynasties_words_2_8")

insert into "反义词" ("词语id", "反义词id") values ("item_dynasties_words_2_6", "item_dynasties_words_2_9")

insert into "反义词" ("词语id", "反义词id") values ("item_dynasties_words_2_10", "item_dynasties_words_2_10")

