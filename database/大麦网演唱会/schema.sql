PRAGMA foreign_keys = ON;

CREATE TABLE "演唱会" (
"词条id" int,
"名称" text,
"歌手" text,
"演出场次" int,
"单场演出时长" int,
"演出曲目" int,
primary key ("词条id")
);

CREATE TABLE "场馆" (
"词条id" int,
"名称" text,
"城市" text,
"容纳人数" int,
"占地面积" int,
primary key ("词条id")
);

CREATE TABLE "演唱会场馆" (
"演唱会id" int,
"场馆id" int,
"演出日期" time,
"开始时间" time,
"票数" int,
"售出数量" int,
"最低票价" int,
"最高票价" int,
foreign key("演唱会id") references "演唱会"("词条id"),
foreign key("场馆id") references "场馆"("词条id")
);

insert into "演唱会" ("词条id", "名称", "歌手", "演出场次", "单场演出时长", "演出曲目") values ("item_entertainment_14_161", "张信哲未来式世界巡回演唱会", "张信哲", "3", "120", "20")

insert into "演唱会" ("词条id", "名称", "歌手", "演出场次", "单场演出时长", "演出曲目") values ("item_entertainment_14_162", "杨千嬅世界巡回演唱会", "杨千嬅", "20场", "150分", "30首")

insert into "演唱会" ("词条id", "名称", "歌手", "演出场次", "单场演出时长", "演出曲目") values ("item_entertainment_14_163", "林宥嘉idol巡回演唱会", "林宥嘉", "20场", "150分", "20")

insert into "演唱会" ("词条id", "名称", "歌手", "演出场次", "单场演出时长", "演出曲目") values ("item_entertainment_14_164", "任贤齐齐迹演唱会", "任贤齐", "20场", "150分", "30首")

insert into "演唱会" ("词条id", "名称", "歌手", "演出场次", "单场演出时长", "演出曲目") values ("item_entertainment_14_165", "吴青峰太空备忘记巡回演唱会", "吴青峰", "3", "120", "20")

insert into "场馆" ("词条id", "名称", "城市", "容纳人数", "占地面积") values ("item_entertainment_14_166", "无锡市体育中心体育馆", "无锡", "8000", "10万")

insert into "场馆" ("词条id", "名称", "城市", "容纳人数", "占地面积") values ("item_entertainment_14_167", "苏州奥林匹克体育中心体育馆", "苏州", "21000", "44万平方米")

insert into "场馆" ("词条id", "名称", "城市", "容纳人数", "占地面积") values ("item_entertainment_14_168", "宁波奥体中心体育馆", "宁波市", "21000", "44万平方米")

insert into "场馆" ("词条id", "名称", "城市", "容纳人数", "占地面积") values ("item_entertainment_14_169", "华润深圳湾体育中心春茧体育馆", "深圳市", "8000", "10万")

insert into "场馆" ("词条id", "名称", "城市", "容纳人数", "占地面积") values ("item_entertainment_14_170", "黄龙体育中心", "杭州市", "21000", "44万平方米")

insert into "演唱会场馆" ("演唱会id", "场馆id", "演出日期", "开始时间", "票数", "售出数量", "最低票价", "最高票价") values ("item_entertainment_14_162", "item_entertainment_14_170", "2019.11.1", "17:00", "5000", "4000", "180", "1280")

insert into "演唱会场馆" ("演唱会id", "场馆id", "演出日期", "开始时间", "票数", "售出数量", "最低票价", "最高票价") values ("item_entertainment_14_161", "item_entertainment_14_169", "2019.11.21", "18:30", "8000", "7500", "380", "1580")

insert into "演唱会场馆" ("演唱会id", "场馆id", "演出日期", "开始时间", "票数", "售出数量", "最低票价", "最高票价") values ("item_entertainment_14_164", "item_entertainment_14_168", "2019.12.20", "19:00", "5000", "7500", "180", "1280")

insert into "演唱会场馆" ("演唱会id", "场馆id", "演出日期", "开始时间", "票数", "售出数量", "最低票价", "最高票价") values ("item_entertainment_14_165", "item_entertainment_14_169", "2019.12.25", "19:15", "8000", "4000", "180", "1280")

insert into "演唱会场馆" ("演唱会id", "场馆id", "演出日期", "开始时间", "票数", "售出数量", "最低票价", "最高票价") values ("item_entertainment_14_161", "item_entertainment_14_168", "2019.12.31", "19:45", "8000", "7500", "180", "1580")

