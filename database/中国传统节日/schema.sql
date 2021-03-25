PRAGMA foreign_keys = ON;

CREATE TABLE "传统节日" (
"词条id" int,
"名称" text,
"节日时间" time,
"起源时间" text,
primary key ("词条id")
);

CREATE TABLE "节日流行国家" (
"节日id" int,
"国家" text,
"活动" text,
foreign key("节日id") references "传统节日"("词条id")
);

CREATE TABLE "节日饮食文化" (
"节日id" int,
"城市" text,
"饮食" text,
foreign key("节日id") references "传统节日"("词条id")
);

insert into "传统节日" ("词条id", "名称", "节日时间", "起源时间") values ("item_dynasties_words_9_86", "春节", "农历1月1日", "西周")

insert into "传统节日" ("词条id", "名称", "节日时间", "起源时间") values ("item_dynasties_words_9_87", "元宵节", "农历1月15日", "春秋")

insert into "传统节日" ("词条id", "名称", "节日时间", "起源时间") values ("item_dynasties_words_9_88", "花朝节", "农历三月三日", "后金")

insert into "传统节日" ("词条id", "名称", "节日时间", "起源时间") values ("item_dynasties_words_9_89", "上巳节", "农历4月5日", "宋朝")

insert into "传统节日" ("词条id", "名称", "节日时间", "起源时间") values ("item_dynasties_words_9_90", "寒食节", "农历5月5日", "唐朝")

insert into "节日流行国家" ("节日id", "国家", "活动") values ("item_dynasties_words_9_89", "越南", "踏青")

insert into "节日流行国家" ("节日id", "国家", "活动") values ("item_dynasties_words_9_87", "泰国", "祭拜先人")

insert into "节日流行国家" ("节日id", "国家", "活动") values ("item_dynasties_words_9_87", "日本", "拜太公")

insert into "节日流行国家" ("节日id", "国家", "活动") values ("item_dynasties_words_9_88", "韩国", "撑会船")

insert into "节日流行国家" ("节日id", "国家", "活动") values ("item_dynasties_words_9_90", "柬埔寨", "荡秋千")

insert into "节日饮食文化" ("节日id", "城市", "饮食") values ("item_dynasties_words_9_87", "陕西", "腊八粥")

insert into "节日饮食文化" ("节日id", "城市", "饮食") values ("item_dynasties_words_9_86", "甘肃", "麦仁饭")

insert into "节日饮食文化" ("节日id", "城市", "饮食") values ("item_dynasties_words_9_86", "江苏", "腊八蒜")

insert into "节日饮食文化" ("节日id", "城市", "饮食") values ("item_dynasties_words_9_86", "浙江", "饺子")

insert into "节日饮食文化" ("节日id", "城市", "饮食") values ("item_dynasties_words_9_88", "宁夏", "月饼")

