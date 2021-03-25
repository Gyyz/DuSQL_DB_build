PRAGMA foreign_keys = ON;

CREATE TABLE "文学奖" (
"词条id" int,
"名称" text,
"设立时间" time,
"设立原因" text,
"举办间隔年限" int,
primary key ("词条id")
);

CREATE TABLE "文学奖项颁奖奖项" (
"文学奖id" int,
"奖项" text,
foreign key("文学奖id") references "文学奖"("词条id")
);

CREATE TABLE "文学作品" (
"词条id" int,
"名称" text,
"作者" int,
"创作年代" int,
"首版时间" time,
"字数" text,
primary key ("词条id")
);

CREATE TABLE "文学奖获奖名单" (
"届数" int,
"作品id" int,
"作者" text,
"出版社" text,
foreign key("作品id") references "文学作品"("词条id")
);

insert into "文学奖" ("词条id", "名称", "设立时间", "设立原因", "举办间隔年限") values ("item_prize_3_21", "老舍文学奖", "1988年", "综合性文学艺术大奖", "3年")

insert into "文学奖" ("词条id", "名称", "设立时间", "设立原因", "举办间隔年限") values ("item_prize_3_22", "茅盾文学奖", "1982年", "个人名字命名的文学奖", "4年")

insert into "文学奖" ("词条id", "名称", "设立时间", "设立原因", "举办间隔年限") values ("item_prize_3_23", "鲁迅文学奖", "1986年", "鼓励各类作品的奖项", "3年")

insert into "文学奖" ("词条id", "名称", "设立时间", "设立原因", "举办间隔年限") values ("item_prize_3_24", "曹禺戏剧文学奖", "1994年", "我国戏剧创作最高水准奖", "1年")

insert into "文学奖" ("词条id", "名称", "设立时间", "设立原因", "举办间隔年限") values ("item_prize_3_25", "老舍文学奖", "1986年", "综合性文学艺术大奖", "4年")

insert into "文学奖项颁奖奖项" ("文学奖id", "奖项") values ("item_prize_3_21", "长篇小说奖")

insert into "文学奖项颁奖奖项" ("文学奖id", "奖项") values ("item_prize_3_21", "中篇小说奖")

insert into "文学奖项颁奖奖项" ("文学奖id", "奖项") values ("item_prize_3_22", "散文奖")

insert into "文学奖项颁奖奖项" ("文学奖id", "奖项") values ("item_prize_3_24", "戏剧剧本奖")

insert into "文学奖项颁奖奖项" ("文学奖id", "奖项") values ("item_prize_3_24", "青年戏剧文学奖")

insert into "文学作品" ("词条id", "名称", "作者", "创作年代", "首版时间", "字数") values ("item_prize_3_26", "平凡的世界", "路遥", "1960年", "1980年", "10万")

insert into "文学作品" ("词条id", "名称", "作者", "创作年代", "首版时间", "字数") values ("item_prize_3_27", "活着", "余华", "1990年", "1990年", "100万")

insert into "文学作品" ("词条id", "名称", "作者", "创作年代", "首版时间", "字数") values ("item_prize_3_28", "许三观卖血记", "莫言", "1960年", "1990年", "10万")

insert into "文学作品" ("词条id", "名称", "作者", "创作年代", "首版时间", "字数") values ("item_prize_3_29", "蛙", "路遥", "1990年", "1990年", "10万")

insert into "文学作品" ("词条id", "名称", "作者", "创作年代", "首版时间", "字数") values ("item_prize_3_30", "生死疲劳", "路遥", "1960年", "1980年", "10万")

insert into "文学奖获奖名单" ("届数", "作品id", "作者", "出版社") values ("3", "item_prize_3_30", "路遥", "百花文艺出版社")

insert into "文学奖获奖名单" ("届数", "作品id", "作者", "出版社") values ("4", "item_prize_3_30", "凌力", "人民文学出版社")

insert into "文学奖获奖名单" ("届数", "作品id", "作者", "出版社") values ("5", "item_prize_3_30", "霍达", "中国青年出版社")

insert into "文学奖获奖名单" ("届数", "作品id", "作者", "出版社") values ("6", "item_prize_3_28", "刘白羽", "北京出版社")

insert into "文学奖获奖名单" ("届数", "作品id", "作者", "出版社") values ("7", "item_prize_3_28", "徐兴业", "中国文联出版公司")

