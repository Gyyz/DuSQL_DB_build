PRAGMA foreign_keys = ON;

CREATE TABLE "各届金曲奖" (
"词条id" int,
"名称" text,
"年份" time,
"奖项数量" int,
"主持人" text,
"参赛作品数量" int,
"入围作品数量" int,
primary key ("词条id")
);

CREATE TABLE "歌手" (
"词条id" int,
"姓名" text,
"性别" text,
"出生地" text,
"专辑数量" int,
"歌曲数量" int,
"演唱会总场次" int,
"粉丝总数" int,
"红粉数量" int,
primary key ("词条id")
);

CREATE TABLE "歌手签约唱片公司" (
"歌手id" int,
"唱片公司" text,
"签约时间" time,
foreign key("歌手id") references "歌手"("词条id")
);

CREATE TABLE "金曲奖提名名单" (
"奖届id" int,
"奖项名称" text,
"提名歌手id" int,
"提名作品" text,
foreign key("奖届id") references "各届金曲奖"("词条id"),
foreign key("提名歌手id") references "歌手"("词条id")
);

CREATE TABLE "金曲奖获奖名单" (
"奖届id" int,
"奖项名称" text,
"获奖歌手id" int,
"歌手唱片公司" text,
foreign key("奖届id") references "各届金曲奖"("词条id"),
foreign key("获奖歌手id") references "歌手"("词条id")
);

insert into "各届金曲奖" ("词条id", "名称", "年份", "奖项数量", "主持人", "参赛作品数量", "入围作品数量") values ("item_prize_5_41", "第25届台湾金曲奖", "2014", "22", "黄子佼", "11177", "104")

insert into "各届金曲奖" ("词条id", "名称", "年份", "奖项数量", "主持人", "参赛作品数量", "入围作品数量") values ("item_prize_5_42", "第26届台湾金曲奖", "2018年", "28", " 萧敬腾", "15934", "128")

insert into "各届金曲奖" ("词条id", "名称", "年份", "奖项数量", "主持人", "参赛作品数量", "入围作品数量") values ("item_prize_5_43", "第27届台湾金曲奖", "2014", "28", "陶晶莹", "15934", "128")

insert into "各届金曲奖" ("词条id", "名称", "年份", "奖项数量", "主持人", "参赛作品数量", "入围作品数量") values ("item_prize_5_44", "第28届台湾金曲奖", "2014", "22", "李宗盛", "11177", "104")

insert into "各届金曲奖" ("词条id", "名称", "年份", "奖项数量", "主持人", "参赛作品数量", "入围作品数量") values ("item_prize_5_45", "第29届台湾金曲奖", "2014", "28", "莫文蔚", "11177", "128")

insert into "歌手" ("词条id", "姓名", "性别", "出生地", "专辑数量", "歌曲数量", "演唱会总场次", "粉丝总数", "红粉数量") values ("item_prize_5_46", "蔡依林", "男", "台湾", "10", "100", "100", "1000万", "999")

insert into "歌手" ("词条id", "姓名", "性别", "出生地", "专辑数量", "歌曲数量", "演唱会总场次", "粉丝总数", "红粉数量") values ("item_prize_5_47", "周杰伦", "女", "香港", "100", "1000", "200", "4218万", "888")

insert into "歌手" ("词条id", "姓名", "性别", "出生地", "专辑数量", "歌曲数量", "演唱会总场次", "粉丝总数", "红粉数量") values ("item_prize_5_48", "崔健", "男", "北京", "100", "1000", "100", "4218万", "777")

insert into "歌手" ("词条id", "姓名", "性别", "出生地", "专辑数量", "歌曲数量", "演唱会总场次", "粉丝总数", "红粉数量") values ("item_prize_5_49", "戴佩妮", "男", "马来西亚", "100", "1000", "100", "4218万", "666")

insert into "歌手" ("词条id", "姓名", "性别", "出生地", "专辑数量", "歌曲数量", "演唱会总场次", "粉丝总数", "红粉数量") values ("item_prize_5_50", "李荣浩", "男", "安徽省蚌埠市", "100", "1000", "200", "4218万", "555")

insert into "歌手签约唱片公司" ("歌手id", "唱片公司", "签约时间") values ("item_prize_5_50", "华纳唱片", "1990年")

insert into "歌手签约唱片公司" ("歌手id", "唱片公司", "签约时间") values ("item_prize_5_47", "飞碟唱片", "2015年")

insert into "歌手签约唱片公司" ("歌手id", "唱片公司", "签约时间") values ("item_prize_5_50", "金牌大风", "1990年")

insert into "歌手签约唱片公司" ("歌手id", "唱片公司", "签约时间") values ("item_prize_5_48", "索尼唱片", "2015年")

insert into "歌手签约唱片公司" ("歌手id", "唱片公司", "签约时间") values ("item_prize_5_46", "环球音乐", "1990年")

insert into "金曲奖提名名单" ("奖届id", "奖项名称", "提名歌手id", "提名作品") values ("item_prize_5_45", "最佳年度歌曲", "item_prize_5_46", "山丘")

insert into "金曲奖提名名单" ("奖届id", "奖项名称", "提名歌手id", "提名作品") values ("item_prize_5_43", "最佳作词人", "item_prize_5_49", "风吹麦浪")

insert into "金曲奖提名名单" ("奖届id", "奖项名称", "提名歌手id", "提名作品") values ("item_prize_5_42", "最佳作曲人", "item_prize_5_49", "拥抱你")

insert into "金曲奖提名名单" ("奖届id", "奖项名称", "提名歌手id", "提名作品") values ("item_prize_5_45", "作家专辑制作人", "item_prize_5_50", "老派恋情")

insert into "金曲奖提名名单" ("奖届id", "奖项名称", "提名歌手id", "提名作品") values ("item_prize_5_42", "最佳台语专辑", "item_prize_5_49", "30出头")

insert into "金曲奖获奖名单" ("奖届id", "奖项名称", "获奖歌手id", "歌手唱片公司") values ("item_prize_5_41", "最佳国语男歌手", "item_prize_5_48", "华纳唱片")

insert into "金曲奖获奖名单" ("奖届id", "奖项名称", "获奖歌手id", "歌手唱片公司") values ("item_prize_5_43", "最佳国语女歌手", "item_prize_5_48", "飞碟唱片")

insert into "金曲奖获奖名单" ("奖届id", "奖项名称", "获奖歌手id", "歌手唱片公司") values ("item_prize_5_42", "最佳新人奖", "item_prize_5_48", "金牌大风")

insert into "金曲奖获奖名单" ("奖届id", "奖项名称", "获奖歌手id", "歌手唱片公司") values ("item_prize_5_41", "最佳乐团", "item_prize_5_49", "索尼唱片")

insert into "金曲奖获奖名单" ("奖届id", "奖项名称", "获奖歌手id", "歌手唱片公司") values ("item_prize_5_41", "最佳台语女歌手", "item_prize_5_47", "环球音乐")

