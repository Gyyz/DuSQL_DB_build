PRAGMA foreign_keys = ON;

CREATE TABLE "体育场" (
"词条id" int,
"名称" text,
"面积" int,
"容纳人数" int,
"所在城市" text,
primary key ("词条id")
);

CREATE TABLE "中国体育赛事" (
"词条id" int,
"名称" text,
"热度" int,
"商业价值" int,
"影响力" int,
primary key ("词条id")
);

CREATE TABLE "2018年具体赛事" (
"赛事名称" text,
"赛事类型id" int,
"场馆id" int,
"时间" time,
"观众人数" int,
foreign key("场馆id") references "体育场"("词条id"),
foreign key("赛事类型id") references "中国体育赛事"("词条id")
);

CREATE TABLE "2018年演唱会" (
"词条id" int,
"名称" text,
"歌手" text,
"场馆id" int,
"时间" time,
"最低票价" int,
primary key ("词条id"),
foreign key("场馆id") references "体育场"("词条id")
);

insert into "体育场" ("词条id", "名称", "面积", "容纳人数", "所在城市") values ("item_sports.2_20_161", "国家体育场", "25.8万平方米", "80000个", "北京")

insert into "体育场" ("词条id", "名称", "面积", "容纳人数", "所在城市") values ("item_sports.2_20_162", "八万人体育场", "17万平方米", "80000个", "上海")

insert into "体育场" ("词条id", "名称", "面积", "容纳人数", "所在城市") values ("item_sports.2_20_163", "广州奥林匹克中心", "14.56万平方米", "80012座", "广州")

insert into "体育场" ("词条id", "名称", "面积", "容纳人数", "所在城市") values ("item_sports.2_20_164", "杭州奥林匹克体育场", "583.89公顷", "8万人", "杭州")

insert into "体育场" ("词条id", "名称", "面积", "容纳人数", "所在城市") values ("item_sports.2_20_165", "天津奥林匹克中心体育场", "8万平方米", "6万人", "天津")

insert into "中国体育赛事" ("词条id", "名称", "热度", "商业价值", "影响力") values ("item_sports.2_20_166", "中超", "8", "10", "10")

insert into "中国体育赛事" ("词条id", "名称", "热度", "商业价值", "影响力") values ("item_sports.2_20_167", "CBA", "9", "9", "9")

insert into "中国体育赛事" ("词条id", "名称", "热度", "商业价值", "影响力") values ("item_sports.2_20_168", "LPL", "10", "6", "6")

insert into "中国体育赛事" ("词条id", "名称", "热度", "商业价值", "影响力") values ("item_sports.2_20_169", "足协杯", "6", "7", "8")

insert into "中国体育赛事" ("词条id", "名称", "热度", "商业价值", "影响力") values ("item_sports.2_20_170", "中国网球公开赛", "6", "8", "7")

insert into "2018年具体赛事" ("赛事名称", "赛事类型id", "场馆id", "时间", "观众人数") values ("2018-2019年中超比赛第三场", "item_sports.2_20_169", "item_sports.2_20_163", "2018.1", "5000")

insert into "2018年具体赛事" ("赛事名称", "赛事类型id", "场馆id", "时间", "观众人数") values ("2018-2019赛季CBA北京对阵四川", "item_sports.2_20_166", "item_sports.2_20_161", "2018.2", "6000")

insert into "2018年具体赛事" ("赛事名称", "赛事类型id", "场馆id", "时间", "观众人数") values ("2019年北京马拉松", "item_sports.2_20_170", "item_sports.2_20_161", "2018.3", "7000")

insert into "2018年具体赛事" ("赛事名称", "赛事类型id", "场馆id", "时间", "观众人数") values ("2019年NBA表演赛第二场", "item_sports.2_20_167", "item_sports.2_20_163", "2018.4", "8000")

insert into "2018年具体赛事" ("赛事名称", "赛事类型id", "场馆id", "时间", "观众人数") values ("2019年F1上海比赛", "item_sports.2_20_168", "item_sports.2_20_165", "2018.5", "9000")

insert into "2018年演唱会" ("词条id", "名称", "歌手", "场馆id", "时间", "最低票价") values ("item_sports.2_20_171", "斯琴格日乐东莞演唱会", "斯琴格日乐", "item_sports.2_20_165", "2019年1月1日", "180")

insert into "2018年演唱会" ("词条id", "名称", "歌手", "场馆id", "时间", "最低票价") values ("item_sports.2_20_172", "周杰伦无与伦比演唱水", "周杰伦", "item_sports.2_20_161", "2019年1月1日", "200")

insert into "2018年演唱会" ("词条id", "名称", "歌手", "场馆id", "时间", "最低票价") values ("item_sports.2_20_173", "杨千嬅巡游演唱会", "杨千嬅", "item_sports.2_20_165", "2019年1月1日", "300")

insert into "2018年演唱会" ("词条id", "名称", "歌手", "场馆id", "时间", "最低票价") values ("item_sports.2_20_174", "张信哲世界巡回演唱会", "张信哲", "item_sports.2_20_162", "2019年1月1日", "400")

insert into "2018年演唱会" ("词条id", "名称", "歌手", "场馆id", "时间", "最低票价") values ("item_sports.2_20_175", "林宥嘉IDOL偶像巡回演唱会", "林宥嘉", "item_sports.2_20_164", "2019年12月30日", "580")

