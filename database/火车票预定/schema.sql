PRAGMA foreign_keys = ON;

CREATE TABLE "火车站" (
"词条id" int,
"名称" text,
"所属城市" text,
"是否有地铁站" binary,
"距机场距离" int,
"距汽车站距离" int,
"距市中心距离" int,
primary key ("词条id")
);

CREATE TABLE "列车" (
"词条id" int,
"名称" text,
"类型" text,
"始发站id" int,
"到达站id" int,
"出发时间" time,
"到达时间" time,
primary key ("词条id"),
foreign key("始发站id") references "火车站"("词条id"),
foreign key("到达站id") references "火车站"("词条id")
);

CREATE TABLE "列车票价" (
"日期" time,
"列车id" int,
"车票类型" text,
"票价" int,
"余票" int,
foreign key("列车id") references "列车"("词条id")
);

insert into "火车站" ("词条id", "名称", "所属城市", "是否有地铁站", "距机场距离", "距汽车站距离", "距市中心距离") values ("item_task_dialogue_1_1", "北京南站", "北京", "是", "15km", "5km", "5km")

insert into "火车站" ("词条id", "名称", "所属城市", "是否有地铁站", "距机场距离", "距汽车站距离", "距市中心距离") values ("item_task_dialogue_1_2", "上海站", "上海", "否", "100km", "30km", "30km")

insert into "火车站" ("词条id", "名称", "所属城市", "是否有地铁站", "距机场距离", "距汽车站距离", "距市中心距离") values ("item_task_dialogue_1_3", "呼和浩特东站", "呼和浩特", "是", "15km", "30km", "5km")

insert into "火车站" ("词条id", "名称", "所属城市", "是否有地铁站", "距机场距离", "距汽车站距离", "距市中心距离") values ("item_task_dialogue_1_4", "哈尔滨西站", "哈尔滨", "否", "15km", "30km", "5km")

insert into "火车站" ("词条id", "名称", "所属城市", "是否有地铁站", "距机场距离", "距汽车站距离", "距市中心距离") values ("item_task_dialogue_1_5", "乌鲁木齐南站", "乌鲁木齐", "否", "15km", "5km", "30km")

insert into "列车" ("词条id", "名称", "类型", "始发站id", "到达站id", "出发时间", "到达时间") values ("item_task_dialogue_1_6", "G101次列车", "高铁", "item_task_dialogue_1_2", "item_task_dialogue_1_1", "6:40", "10:45")

insert into "列车" ("词条id", "名称", "类型", "始发站id", "到达站id", "出发时间", "到达时间") values ("item_task_dialogue_1_7", "D02次列车", "动车", "item_task_dialogue_1_3", "item_task_dialogue_1_5", "7:10", "12:51")

insert into "列车" ("词条id", "名称", "类型", "始发站id", "到达站id", "出发时间", "到达时间") values ("item_task_dialogue_1_8", "Z11次列车", "直达", "item_task_dialogue_1_4", "item_task_dialogue_1_5", "13:30", "14:50")

insert into "列车" ("词条id", "名称", "类型", "始发站id", "到达站id", "出发时间", "到达时间") values ("item_task_dialogue_1_9", "K1121次列车", "普通", "item_task_dialogue_1_3", "item_task_dialogue_1_1", "15:40", "17:30")

insert into "列车" ("词条id", "名称", "类型", "始发站id", "到达站id", "出发时间", "到达时间") values ("item_task_dialogue_1_10", "3458次列车", "高铁", "item_task_dialogue_1_4", "item_task_dialogue_1_4", "21:09", "23:23")

insert into "列车票价" ("日期", "列车id", "车票类型", "票价", "余票") values ("2019年9月2号", "item_task_dialogue_1_9", "特等座", "100", "0")

insert into "列车票价" ("日期", "列车id", "车票类型", "票价", "余票") values ("2019年9月3号", "item_task_dialogue_1_8", "一等座", "800元", "100张")

insert into "列车票价" ("日期", "列车id", "车票类型", "票价", "余票") values ("2019年9月4号", "item_task_dialogue_1_6", "二等座", "100", "0")

insert into "列车票价" ("日期", "列车id", "车票类型", "票价", "余票") values ("2019年9月5号", "item_task_dialogue_1_9", "硬座", "800元", "0")

insert into "列车票价" ("日期", "列车id", "车票类型", "票价", "余票") values ("2019年9月6号", "item_task_dialogue_1_7", "硬卧", "800元", "100张")

