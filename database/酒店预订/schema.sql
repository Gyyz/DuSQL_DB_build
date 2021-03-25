PRAGMA foreign_keys = ON;

CREATE TABLE "酒店" (
"词条id" int,
"名称" text,
"地址" text,
"距火车站距离" int,
"距机场距离" int,
"距汽车站距离" int,
"距市中心距离" int,
"周围景点数" int,
"周围饭店数量" int,
primary key ("词条id")
);

CREATE TABLE "酒店交通" (
"酒店id" int,
"地铁线路" text,
"地铁站名称" text,
"步行距离" int,
foreign key("酒店id") references "酒店"("词条id")
);

CREATE TABLE "酒店客房" (
"酒店id" int,
"房型" text,
"早餐" binary,
"价格" int,
"剩余房间数" int,
foreign key("酒店id") references "酒店"("词条id")
);

insert into "酒店" ("词条id", "名称", "地址", "距火车站距离", "距机场距离", "距汽车站距离", "距市中心距离", "周围景点数", "周围饭店数量") values ("item_task_dialogue_2_11", "千禧大酒店", "北京朝阳区东三环中路7号", "2km", "10km", "10km", "2km", "0", "0")

insert into "酒店" ("词条id", "名称", "地址", "距火车站距离", "距机场距离", "距汽车站距离", "距市中心距离", "周围景点数", "周围饭店数量") values ("item_task_dialogue_2_12", "新国贸酒店", "北京朝阳区建国门外大街一号", "50km", "100km", "20km", "10km", "5个", "8家")

insert into "酒店" ("词条id", "名称", "地址", "距火车站距离", "距机场距离", "距汽车站距离", "距市中心距离", "周围景点数", "周围饭店数量") values ("item_task_dialogue_2_13", "丽都假日酒店", "北京朝阳区将台路6号", "50km", "10km", "10km", "10km", "0", "0")

insert into "酒店" ("词条id", "名称", "地址", "距火车站距离", "距机场距离", "距汽车站距离", "距市中心距离", "周围景点数", "周围饭店数量") values ("item_task_dialogue_2_14", "励骏酒店", "北京东城区金宝街92号", "50km", "100km", "10km", "2km", "0", "8家")

insert into "酒店" ("词条id", "名称", "地址", "距火车站距离", "距机场距离", "距汽车站距离", "距市中心距离", "周围景点数", "周围饭店数量") values ("item_task_dialogue_2_15", "赛特酒店", "北京朝阳区建国门外大街22号", "50km", "10km", "20km", "10km", "5个", "0")

insert into "酒店交通" ("酒店id", "地铁线路", "地铁站名称", "步行距离") values ("item_task_dialogue_2_11", "10号线", "安贞门站", "200米")

insert into "酒店交通" ("酒店id", "地铁线路", "地铁站名称", "步行距离") values ("item_task_dialogue_2_15", "1号线", "国贸站", "1600米")

insert into "酒店交通" ("酒店id", "地铁线路", "地铁站名称", "步行距离") values ("item_task_dialogue_2_14", "6号线", "草桥站", "1600米")

insert into "酒店交通" ("酒店id", "地铁线路", "地铁站名称", "步行距离") values ("item_task_dialogue_2_13", "4号线", "长春桥站", "1600米")

insert into "酒店交通" ("酒店id", "地铁线路", "地铁站名称", "步行距离") values ("item_task_dialogue_2_15", "2号线", "东直门站", "200米")

insert into "酒店客房" ("酒店id", "房型", "早餐", "价格", "剩余房间数") values ("item_task_dialogue_2_13", "单人房", "无早", "150", "0")

insert into "酒店客房" ("酒店id", "房型", "早餐", "价格", "剩余房间数") values ("item_task_dialogue_2_14", "双床房", "单早", "1500元", "10")

insert into "酒店客房" ("酒店id", "房型", "早餐", "价格", "剩余房间数") values ("item_task_dialogue_2_12", "大床房", "双早", "1500元", "10")

insert into "酒店客房" ("酒店id", "房型", "早餐", "价格", "剩余房间数") values ("item_task_dialogue_2_12", "亲子房", "单早", "150", "0")

insert into "酒店客房" ("酒店id", "房型", "早餐", "价格", "剩余房间数") values ("item_task_dialogue_2_12", "套房", "无早", "1500元", "0")

