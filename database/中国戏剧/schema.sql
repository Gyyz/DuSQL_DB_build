PRAGMA foreign_keys = ON;

CREATE TABLE "戏剧" (
"词条id" int,
"名称" text,
"非遗级别" text,
"发源地" text,
"起源时间" text,
primary key ("词条id")
);

CREATE TABLE "戏剧分布城市" (
"戏剧id" int,
"城市" text,
"受欢迎热度" int,
"戏迷数量" int,
"活动数量" int,
foreign key("戏剧id") references "戏剧"("词条id")
);

CREATE TABLE "戏剧演出活动" (
"活动名称" text,
"戏剧id" int,
"城市" text,
"演出时间" time,
"售出票数" int,
"最高票价" int,
"最低票价" int,
foreign key("戏剧id") references "戏剧"("词条id")
);

insert into "戏剧" ("词条id", "名称", "非遗级别", "发源地", "起源时间") values ("item_dynasties_words_1_1", "京剧", "世界级", "安徽皖南", "西周")

insert into "戏剧" ("词条id", "名称", "非遗级别", "发源地", "起源时间") values ("item_dynasties_words_1_2", "越剧", "国家级", "长沙", "明代")

insert into "戏剧" ("词条id", "名称", "非遗级别", "发源地", "起源时间") values ("item_dynasties_words_1_3", "秦腔", "国家级", "湘潭", "清朝")

insert into "戏剧" ("词条id", "名称", "非遗级别", "发源地", "起源时间") values ("item_dynasties_words_1_4", "潮剧", "国家级", "浙江省嵊州市", "宋朝")

insert into "戏剧" ("词条id", "名称", "非遗级别", "发源地", "起源时间") values ("item_dynasties_words_1_5", "昆曲", "国家级", "苏州昆山", "晋朝")

insert into "戏剧分布城市" ("戏剧id", "城市", "受欢迎热度", "戏迷数量", "活动数量") values ("item_dynasties_words_1_5", "苏州", "1.5", "1000", "50")

insert into "戏剧分布城市" ("戏剧id", "城市", "受欢迎热度", "戏迷数量", "活动数量") values ("item_dynasties_words_1_5", "上海", "2.7", "8000", "60")

insert into "戏剧分布城市" ("戏剧id", "城市", "受欢迎热度", "戏迷数量", "活动数量") values ("item_dynasties_words_1_2", "长沙", "6.5", "70000", "80")

insert into "戏剧分布城市" ("戏剧id", "城市", "受欢迎热度", "戏迷数量", "活动数量") values ("item_dynasties_words_1_4", "北京", "4.8", "600000", "100")

insert into "戏剧分布城市" ("戏剧id", "城市", "受欢迎热度", "戏迷数量", "活动数量") values ("item_dynasties_words_1_4", "徽州", "9", "100000", "200")

insert into "戏剧演出活动" ("活动名称", "戏剧id", "城市", "演出时间", "售出票数", "最高票价", "最低票价") values ("大凉山国际戏剧节", "item_dynasties_words_1_5", "北京", "2019-01-01", "200", "500", "80")

insert into "戏剧演出活动" ("活动名称", "戏剧id", "城市", "演出时间", "售出票数", "最高票价", "最低票价") values ("京剧大师级演出", "item_dynasties_words_1_2", "上海", "2019-02-04", "210", "550", "88")

insert into "戏剧演出活动" ("活动名称", "戏剧id", "城市", "演出时间", "售出票数", "最高票价", "最低票价") values ("周末戏剧金舞台", "item_dynasties_words_1_4", "苏州", "2019-05-06", "300", "600", "90")

insert into "戏剧演出活动" ("活动名称", "戏剧id", "城市", "演出时间", "售出票数", "最高票价", "最低票价") values ("北京国际青年戏剧节", "item_dynasties_words_1_2", "杭州", "2019-07-15", "310", "650", "100")

insert into "戏剧演出活动" ("活动名称", "戏剧id", "城市", "演出时间", "售出票数", "最高票价", "最低票价") values ("兰溪鲤鱼戏剧节", "item_dynasties_words_1_3", "长沙", "2019-12-24", "500", "880", "120")

