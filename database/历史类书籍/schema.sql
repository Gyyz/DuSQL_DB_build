PRAGMA foreign_keys = ON;

CREATE TABLE "国家历史" (
"词条id" int,
"书名" text,
"讲述国家" text,
"讲述时代" time,
primary key ("词条id")
);

CREATE TABLE "中国朝代历史" (
"词条id" int,
"书名" text,
"讲述朝代" text,
primary key ("词条id")
);

CREATE TABLE "战争历史" (
"词条id" int,
"书名" text,
"描述战事" text,
primary key ("词条id")
);

CREATE TABLE "人物历史" (
"词条id" int,
"书名" text,
"讲述名人" text,
primary key ("词条id")
);

insert into "国家历史" ("词条id", "书名", "讲述国家", "讲述时代") values ("item_book.2_4_31", "高级印度史", "日本", "1920-1940")

insert into "国家历史" ("词条id", "书名", "讲述国家", "讲述时代") values ("item_book.2_4_32", "朝鲜通史", "朝鲜", "1850-1890")

insert into "国家历史" ("词条id", "书名", "讲述国家", "讲述时代") values ("item_book.2_4_33", "蒙古秘史", "中国", "1900-1950")

insert into "国家历史" ("词条id", "书名", "讲述国家", "讲述时代") values ("item_book.2_4_34", "越南国史", "印度", "1950-1980")

insert into "国家历史" ("词条id", "书名", "讲述国家", "讲述时代") values ("item_book.2_4_35", "剑桥东南亚史", "美国", "1800-1900")

insert into "中国朝代历史" ("词条id", "书名", "讲述朝代") values ("item_book.2_4_36", "水浒传元", "元朝")

insert into "中国朝代历史" ("词条id", "书名", "讲述朝代") values ("item_book.2_4_37", "康熙大帝", "清朝")

insert into "中国朝代历史" ("词条id", "书名", "讲述朝代") values ("item_book.2_4_38", "雍正王朝", "明朝")

insert into "中国朝代历史" ("词条id", "书名", "讲述朝代") values ("item_book.2_4_39", "太平天国演义", "宋朝")

insert into "中国朝代历史" ("词条id", "书名", "讲述朝代") values ("item_book.2_4_40", "曾国藩家书", "三国")

insert into "战争历史" ("词条id", "书名", "描述战事") values ("item_book.2_4_41", "东京审判征战记", "日本侵华战争")

insert into "战争历史" ("词条id", "书名", "描述战事") values ("item_book.2_4_42", "林肯在中阴界", "美国南北战争")

insert into "战争历史" ("词条id", "书名", "描述战事") values ("item_book.2_4_43", "邓小平的最后岁月", "中国解放战争")

insert into "战争历史" ("词条id", "书名", "描述战事") values ("item_book.2_4_44", "甲午战争", "中日甲午战争")

insert into "战争历史" ("词条id", "书名", "描述战事") values ("item_book.2_4_45", "多瑙河畔:哈布斯堡的欧洲", "罗马战争")

insert into "人物历史" ("词条id", "书名", "讲述名人") values ("item_book.2_4_46", "曾国藩的正面和侧面", "曾国藩")

insert into "人物历史" ("词条id", "书名", "讲述名人") values ("item_book.2_4_47", "解读青年毛泽东", "毛泽东")

insert into "人物历史" ("词条id", "书名", "讲述名人") values ("item_book.2_4_48", "梁启超和他的儿女们", "梁启超")

insert into "人物历史" ("词条id", "书名", "讲述名人") values ("item_book.2_4_49", "孙中山传", "孙中山")

insert into "人物历史" ("词条id", "书名", "讲述名人") values ("item_book.2_4_50", "我的伯父周恩来", "周恩来")

