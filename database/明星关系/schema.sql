PRAGMA foreign_keys = ON;

CREATE TABLE "明星" (
"词条id" int,
"姓名" text,
"年龄" int,
"毕业院校" text,
"毕业时间" time,
primary key ("词条id")
);

CREATE TABLE "明星夫妻" (
"明星id" int,
"配偶id" int,
"结婚时间" time,
"子女数量" int,
foreign key("配偶id") references "明星"("词条id"),
foreign key("明星id") references "明星"("词条id")
);

CREATE TABLE "离异明星" (
"明星id" int,
"配偶id" int,
"离异时间" time,
"子女数量" int,
foreign key("配偶id") references "明星"("词条id"),
foreign key("明星id") references "明星"("词条id")
);

CREATE TABLE "明星好友" (
"明星id" int,
"好友id" int,
"关系" text,
foreign key("好友id") references "明星"("词条id"),
foreign key("明星id") references "明星"("词条id")
);

insert into "明星" ("词条id", "姓名", "年龄", "毕业院校", "毕业时间") values ("item_entertainment_19_226", "郝蕾", "30岁", "北京电影学院", "2002年")

insert into "明星" ("词条id", "姓名", "年龄", "毕业院校", "毕业时间") values ("item_entertainment_19_227", "孙俪", "45岁", "中央戏剧学院", "2008年")

insert into "明星" ("词条id", "姓名", "年龄", "毕业院校", "毕业时间") values ("item_entertainment_19_228", "邓超", "45岁", "上海戏剧学院", "2008年")

insert into "明星" ("词条id", "姓名", "年龄", "毕业院校", "毕业时间") values ("item_entertainment_19_229", "文章", "30岁", "北京广播电视大学", "2002年")

insert into "明星" ("词条id", "姓名", "年龄", "毕业院校", "毕业时间") values ("item_entertainment_19_230", "马伊琍", "45岁", "中国传媒大学", "2008年")

insert into "明星夫妻" ("明星id", "配偶id", "结婚时间", "子女数量") values ("item_entertainment_19_230", "item_entertainment_19_228", "2002年", "1")

insert into "明星夫妻" ("明星id", "配偶id", "结婚时间", "子女数量") values ("item_entertainment_19_228", "item_entertainment_19_226", "2014年", "2")

insert into "明星夫妻" ("明星id", "配偶id", "结婚时间", "子女数量") values ("item_entertainment_19_230", "item_entertainment_19_227", "2014年", "2")

insert into "明星夫妻" ("明星id", "配偶id", "结婚时间", "子女数量") values ("item_entertainment_19_229", "item_entertainment_19_227", "2014年", "2")

insert into "明星夫妻" ("明星id", "配偶id", "结婚时间", "子女数量") values ("item_entertainment_19_230", "item_entertainment_19_230", "2002年", "2")

insert into "离异明星" ("明星id", "配偶id", "离异时间", "子女数量") values ("item_entertainment_19_227", "item_entertainment_19_226", "2002年", "0")

insert into "离异明星" ("明星id", "配偶id", "离异时间", "子女数量") values ("item_entertainment_19_227", "item_entertainment_19_226", "2014年", "2")

insert into "离异明星" ("明星id", "配偶id", "离异时间", "子女数量") values ("item_entertainment_19_227", "item_entertainment_19_228", "2002年", "0")

insert into "离异明星" ("明星id", "配偶id", "离异时间", "子女数量") values ("item_entertainment_19_230", "item_entertainment_19_229", "2002年", "2")

insert into "离异明星" ("明星id", "配偶id", "离异时间", "子女数量") values ("item_entertainment_19_228", "item_entertainment_19_229", "2002年", "0")

insert into "明星好友" ("明星id", "好友id", "关系") values ("item_entertainment_19_228", "item_entertainment_19_227", "同学")

insert into "明星好友" ("明星id", "好友id", "关系") values ("item_entertainment_19_228", "item_entertainment_19_228", "合作伙伴")

insert into "明星好友" ("明星id", "好友id", "关系") values ("item_entertainment_19_229", "item_entertainment_19_226", "同学")

insert into "明星好友" ("明星id", "好友id", "关系") values ("item_entertainment_19_228", "item_entertainment_19_230", "合作伙伴")

insert into "明星好友" ("明星id", "好友id", "关系") values ("item_entertainment_19_226", "item_entertainment_19_226", "合作伙伴")

