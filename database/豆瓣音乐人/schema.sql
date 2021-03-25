PRAGMA foreign_keys = ON;

CREATE TABLE "音乐人" (
"词条id" int,
"姓名" text,
"歌曲数量" int,
"关注数量" int,
primary key ("词条id")
);

CREATE TABLE "歌曲" (
"词条id" int,
"歌曲名称" text,
"音乐人id" int,
"播放次数" int,
"下载次数" int,
primary key ("词条id"),
foreign key("音乐人id") references "音乐人"("词条id")
);

CREATE TABLE "歌单" (
"词条id" int,
"歌单名称" text,
"类型" text,
"歌曲数量" int,
"收藏次数" int,
"播放次数" int,
primary key ("词条id")
);

CREATE TABLE "歌曲歌单" (
"歌曲id" int,
"歌单id" int,
foreign key("歌曲id") references "歌曲"("词条id"),
foreign key("歌单id") references "歌单"("词条id")
);

insert into "音乐人" ("词条id", "姓名", "歌曲数量", "关注数量") values ("item_entertainment_16_186", "宋冬野", "10", "8000")

insert into "音乐人" ("词条id", "姓名", "歌曲数量", "关注数量") values ("item_entertainment_16_187", "梁晓雪", "100", "140000")

insert into "音乐人" ("词条id", "姓名", "歌曲数量", "关注数量") values ("item_entertainment_16_188", "花粥", "100", "140000")

insert into "音乐人" ("词条id", "姓名", "歌曲数量", "关注数量") values ("item_entertainment_16_189", "好妹妹", "100", "8000")

insert into "音乐人" ("词条id", "姓名", "歌曲数量", "关注数量") values ("item_entertainment_16_190", "曹方", "10", "140000")

insert into "歌曲" ("词条id", "歌曲名称", "音乐人id", "播放次数", "下载次数") values ("item_entertainment_16_191", "灯塔", "item_entertainment_16_188", "1000", "1000")

insert into "歌曲" ("词条id", "歌曲名称", "音乐人id", "播放次数", "下载次数") values ("item_entertainment_16_192", "海岛情人", "item_entertainment_16_188", "100万", "100000")

insert into "歌曲" ("词条id", "歌曲名称", "音乐人id", "播放次数", "下载次数") values ("item_entertainment_16_193", "死了都要爱", "item_entertainment_16_189", "1000", "1000")

insert into "歌曲" ("词条id", "歌曲名称", "音乐人id", "播放次数", "下载次数") values ("item_entertainment_16_194", "思念是一种病", "item_entertainment_16_188", "1000", "100000")

insert into "歌曲" ("词条id", "歌曲名称", "音乐人id", "播放次数", "下载次数") values ("item_entertainment_16_195", "浪漫土耳其", "item_entertainment_16_186", "100万", "1000")

insert into "歌单" ("词条id", "歌单名称", "类型", "歌曲数量", "收藏次数", "播放次数") values ("item_entertainment_16_196", "豆瓣高分电影原声", "影视歌曲", "10", "1万", "1万")

insert into "歌单" ("词条id", "歌单名称", "类型", "歌曲数量", "收藏次数", "播放次数") values ("item_entertainment_16_197", "适合午后的安静古典乐", "古典乐", "100", "1000万", "1045万")

insert into "歌单" ("词条id", "歌单名称", "类型", "歌曲数量", "收藏次数", "播放次数") values ("item_entertainment_16_198", "要你燃的歌曲", "摇滚", "10", "1万", "1万")

insert into "歌单" ("词条id", "歌单名称", "类型", "歌曲数量", "收藏次数", "播放次数") values ("item_entertainment_16_199", "说唱top100", "说唱", "10", "1万", "1045万")

insert into "歌单" ("词条id", "歌单名称", "类型", "歌曲数量", "收藏次数", "播放次数") values ("item_entertainment_16_200", "欧美主旋律", "综合", "100", "1000万", "1万")

insert into "歌曲歌单" ("歌曲id", "歌单id") values ("item_entertainment_16_193", "item_entertainment_16_198")

insert into "歌曲歌单" ("歌曲id", "歌单id") values ("item_entertainment_16_195", "item_entertainment_16_200")

insert into "歌曲歌单" ("歌曲id", "歌单id") values ("item_entertainment_16_195", "item_entertainment_16_200")

insert into "歌曲歌单" ("歌曲id", "歌单id") values ("item_entertainment_16_193", "item_entertainment_16_198")

insert into "歌曲歌单" ("歌曲id", "歌单id") values ("item_entertainment_16_193", "item_entertainment_16_200")

