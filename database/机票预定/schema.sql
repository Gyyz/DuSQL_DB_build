PRAGMA foreign_keys = ON;

CREATE TABLE "航空公司" (
"词条id" int,
"名称" text,
"国内通航城市数量" int,
"国际通航城市数量" int,
"机队规模" int,
"运送旅客人数" int,
"飞机餐用户满意度" int,
primary key ("词条id")
);

CREATE TABLE "机场" (
"词条id" int,
"名称" text,
"所属地区" text,
"机位数量" int,
"跑道长度" int,
"跑道数量" int,
"国内航线数量" int,
"国际航线数量" int,
"通航城市" int,
"旅客吞量" int,
"航站楼数量" int,
primary key ("词条id")
);

CREATE TABLE "航空公司主运营基地" (
"航空公司id" int,
"机场id" int,
foreign key("机场id") references "机场"("词条id"),
foreign key("航空公司id") references "航空公司"("词条id")
);

CREATE TABLE "航空公司机队" (
"航空公司id" int,
"飞机型号" text,
"数量" int,
foreign key("航空公司id") references "航空公司"("词条id")
);

CREATE TABLE "航班信息" (
"日期" time,
"出发机场id" int,
"到达机场id" int,
"起飞时间" time,
"航班号" text,
"航空公司id" int,
"机龄" int,
"经济舱价格" int,
"头等舱价格" int,
"经济舱余票" int,
"头等舱余票" int,
"历经时间" int,
foreign key("到达机场id") references "机场"("词条id"),
foreign key("出发机场id") references "机场"("词条id"),
foreign key("航空公司id") references "航空公司"("词条id")
);

insert into "航空公司" ("词条id", "名称", "国内通航城市数量", "国际通航城市数量", "机队规模", "运送旅客人数", "飞机餐用户满意度") values ("item_task_dialogue_7_41", "中国东方航空公司", "30", "0", "28", "1000万", "6")

insert into "航空公司" ("词条id", "名称", "国内通航城市数量", "国际通航城市数量", "机队规模", "运送旅客人数", "飞机餐用户满意度") values ("item_task_dialogue_7_42", "中国南方航空公司", "200个", "100个", "700架", "8000万", "9")

insert into "航空公司" ("词条id", "名称", "国内通航城市数量", "国际通航城市数量", "机队规模", "运送旅客人数", "飞机餐用户满意度") values ("item_task_dialogue_7_43", "中国联合航空公司", "200个", "0", "700架", "1000万", "9")

insert into "航空公司" ("词条id", "名称", "国内通航城市数量", "国际通航城市数量", "机队规模", "运送旅客人数", "飞机餐用户满意度") values ("item_task_dialogue_7_44", "厦门航空有限公司", "30", "0", "700架", "1000万", "9")

insert into "航空公司" ("词条id", "名称", "国内通航城市数量", "国际通航城市数量", "机队规模", "运送旅客人数", "飞机餐用户满意度") values ("item_task_dialogue_7_45", "河北航空有限公司", "200个", "100个", "700架", "1000万", "6")

insert into "机场" ("词条id", "名称", "所属地区", "机位数量", "跑道长度", "跑道数量", "国内航线数量", "国际航线数量", "通航城市", "旅客吞量", "航站楼数量") values ("item_task_dialogue_7_46", "首都国际机场", "北京", "100", "3200千米", "4", "30", "0", "30", "5千万", "2")

insert into "机场" ("词条id", "名称", "所属地区", "机位数量", "跑道长度", "跑道数量", "国内航线数量", "国际航线数量", "通航城市", "旅客吞量", "航站楼数量") values ("item_task_dialogue_7_47", "北京大兴国际机场", "上海", "314个", "3800千米", "8条", "132条", "120条", "100个", "1.5亿人次", "3个")

insert into "机场" ("词条id", "名称", "所属地区", "机位数量", "跑道长度", "跑道数量", "国内航线数量", "国际航线数量", "通航城市", "旅客吞量", "航站楼数量") values ("item_task_dialogue_7_48", "上海虹桥机场", "哈尔滨", "314个", "3200千米", "4", "30", "120条", "100个", "5千万", "2")

insert into "机场" ("词条id", "名称", "所属地区", "机位数量", "跑道长度", "跑道数量", "国内航线数量", "国际航线数量", "通航城市", "旅客吞量", "航站楼数量") values ("item_task_dialogue_7_49", "哈尔滨太平国际机场", "广州", "100", "3800千米", "8条", "132条", "0", "100个", "1.5亿人次", "3个")

insert into "机场" ("词条id", "名称", "所属地区", "机位数量", "跑道长度", "跑道数量", "国内航线数量", "国际航线数量", "通航城市", "旅客吞量", "航站楼数量") values ("item_task_dialogue_7_50", "广州白云机场", "上海", "314个", "3800千米", "4", "132条", "120条", "30", "5千万", "3个")

insert into "航空公司主运营基地" ("航空公司id", "机场id") values ("item_task_dialogue_7_42", "item_task_dialogue_7_49")

insert into "航空公司主运营基地" ("航空公司id", "机场id") values ("item_task_dialogue_7_41", "item_task_dialogue_7_50")

insert into "航空公司主运营基地" ("航空公司id", "机场id") values ("item_task_dialogue_7_41", "item_task_dialogue_7_47")

insert into "航空公司主运营基地" ("航空公司id", "机场id") values ("item_task_dialogue_7_41", "item_task_dialogue_7_50")

insert into "航空公司主运营基地" ("航空公司id", "机场id") values ("item_task_dialogue_7_42", "item_task_dialogue_7_48")

insert into "航空公司机队" ("航空公司id", "飞机型号", "数量") values ("item_task_dialogue_7_44", "波音737", "1")

insert into "航空公司机队" ("航空公司id", "飞机型号", "数量") values ("item_task_dialogue_7_42", "波音777", "50架")

insert into "航空公司机队" ("航空公司id", "飞机型号", "数量") values ("item_task_dialogue_7_45", "波音747", "50架")

insert into "航空公司机队" ("航空公司id", "飞机型号", "数量") values ("item_task_dialogue_7_42", "波音757", "1")

insert into "航空公司机队" ("航空公司id", "飞机型号", "数量") values ("item_task_dialogue_7_45", "空客A330", "50架")

insert into "航班信息" ("日期", "出发机场id", "到达机场id", "起飞时间", "航班号", "航空公司id", "机龄", "经济舱价格", "头等舱价格", "经济舱余票", "头等舱余票", "历经时间") values ("12月5日", "item_task_dialogue_7_50", "item_task_dialogue_7_47", "7:30", "MU5300", "item_task_dialogue_7_43", "1", "600", "1800", "0", "0", "1小时50分钟")

insert into "航班信息" ("日期", "出发机场id", "到达机场id", "起飞时间", "航班号", "航空公司id", "机龄", "经济舱价格", "头等舱价格", "经济舱余票", "头等舱余票", "历经时间") values ("12月11日", "item_task_dialogue_7_48", "item_task_dialogue_7_48", "8:10", "KN2259", "item_task_dialogue_7_44", "8年", "5000元", "11500元", "50张", "10张", "1小时20分钟")

insert into "航班信息" ("日期", "出发机场id", "到达机场id", "起飞时间", "航班号", "航空公司id", "机龄", "经济舱价格", "头等舱价格", "经济舱余票", "头等舱余票", "历经时间") values ("1月12日", "item_task_dialogue_7_50", "item_task_dialogue_7_46", "10:20", "ZH1111", "item_task_dialogue_7_43", "1", "600", "1800", "0", "0", "1小时30分钟")

insert into "航班信息" ("日期", "出发机场id", "到达机场id", "起飞时间", "航班号", "航空公司id", "机龄", "经济舱价格", "头等舱价格", "经济舱余票", "头等舱余票", "历经时间") values ("1月30日", "item_task_dialogue_7_46", "item_task_dialogue_7_50", "12:45", "HU7013", "item_task_dialogue_7_41", "1", "5000元", "11500元", "0", "10张", "3小时")

insert into "航班信息" ("日期", "出发机场id", "到达机场id", "起飞时间", "航班号", "航空公司id", "机龄", "经济舱价格", "头等舱价格", "经济舱余票", "头等舱余票", "历经时间") values ("2月6日", "item_task_dialogue_7_48", "item_task_dialogue_7_50", "14:25", "EU7214", "item_task_dialogue_7_43", "8年", "5000元", "1800", "50张", "10张", "3小时40分钟")

