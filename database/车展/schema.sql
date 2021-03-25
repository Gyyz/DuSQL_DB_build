PRAGMA foreign_keys = ON;

CREATE TABLE "车展" (
"词条id" int,
"名称" text,
"车展时间" time,
"参展天数" int,
"车展地点" text,
"位于城市" text,
"参展品牌数" int,
primary key ("词条id")
);

CREATE TABLE "汽车品牌" (
"词条id" int,
"名称" text,
"所属公司" text,
"最低价格" int,
"最高价格" int,
"代言人" text,
primary key ("词条id")
);

CREATE TABLE "车展参展品牌" (
"品牌id" int,
"车展id" int,
"站台模特" text,
"热度排名" int,
foreign key("品牌id") references "汽车品牌"("词条id"),
foreign key("车展id") references "车展"("词条id")
);

insert into "车展" ("词条id", "名称", "车展时间", "参展天数", "车展地点", "位于城市", "参展品牌数") values ("item_activity_1_1", "第十五届国际新能源汽车及充电桩展览会", "2018年12月13日", "2天", "北京五棵松文化体育广场", "北京", "40")

insert into "车展" ("词条id", "名称", "车展时间", "参展天数", "车展地点", "位于城市", "参展品牌数") values ("item_activity_1_2", "2018年终钜惠感恩回馈汽车盛典", "2018年11月23日", "3天", "上海国际展览中心", "上海", "70")

insert into "车展" ("词条id", "名称", "车展时间", "参展天数", "车展地点", "位于城市", "参展品牌数") values ("item_activity_1_3", "中国国际现代化铁路技术装备展览会", "2018年11月20日", "3天", "深圳国家会议中心", "深圳", "70")

insert into "车展" ("词条id", "名称", "车展时间", "参展天数", "车展地点", "位于城市", "参展品牌数") values ("item_activity_1_4", "2018年惠民促销车展", "2018年11月16日", "2天", "广州国家体育场", "广州", "40")

insert into "车展" ("词条id", "名称", "车展时间", "参展天数", "车展地点", "位于城市", "参展品牌数") values ("item_activity_1_5", "2018年四川美好购车节", "2018年11月09日", "2天", "成都亦创国际会展中心", "成都", "40")

insert into "汽车品牌" ("词条id", "名称", "所属公司", "最低价格", "最高价格", "代言人") values ("item_activity_1_6", "沃尔沃", "吉利集团", "20万", "50万-100万", "林志玲")

insert into "汽车品牌" ("词条id", "名称", "所属公司", "最低价格", "最高价格", "代言人") values ("item_activity_1_7", "途锐", "德国大众集团", "50万", "50万-100万", "吴京")

insert into "汽车品牌" ("词条id", "名称", "所属公司", "最低价格", "最高价格", "代言人") values ("item_activity_1_8", "别克", "上汽通用汽车", "20万", "50万-100万", "吴青峰")

insert into "汽车品牌" ("词条id", "名称", "所属公司", "最低价格", "最高价格", "代言人") values ("item_activity_1_9", "凯迪拉克", "上汽通用汽车", "50万", "50万-100万", "胡歌")

insert into "汽车品牌" ("词条id", "名称", "所属公司", "最低价格", "最高价格", "代言人") values ("item_activity_1_10", "雷克萨斯", "本丰田汽车公司", "50万", "50万-100万", "黄渤")

insert into "车展参展品牌" ("品牌id", "车展id", "站台模特", "热度排名") values ("item_activity_1_10", "item_activity_1_1", "李颖芝", "1")

insert into "车展参展品牌" ("品牌id", "车展id", "站台模特", "热度排名") values ("item_activity_1_6", "item_activity_1_4", "周韦彤", "50")

insert into "车展参展品牌" ("品牌id", "车展id", "站台模特", "热度排名") values ("item_activity_1_8", "item_activity_1_5", "杜伊菲", "1")

insert into "车展参展品牌" ("品牌id", "车展id", "站台模特", "热度排名") values ("item_activity_1_8", "item_activity_1_1", "吴稀儿", "50")

insert into "车展参展品牌" ("品牌id", "车展id", "站台模特", "热度排名") values ("item_activity_1_10", "item_activity_1_2", "古晨", "1")

