PRAGMA foreign_keys = ON;

CREATE TABLE "酒店集团" (
"词条id" int,
"名称" text,
"总部所在省" text,
"上级主管部门" text,
"酒店数量" int,
"客房数量" int,
"省排名" int,
"中国500最具价值品牌排名" int,
"全球酒店集团300强排名" int,
primary key ("词条id")
);

CREATE TABLE "酒店" (
"词条id" int,
"名称" text,
"酒店地址" text,
"开业时间" time,
"酒店星级" int,
"所属集团id" int,
"客房数量" int,
"大厅容纳人数" int,
primary key ("词条id"),
foreign key("所属集团id") references "酒店集团"("词条id")
);

CREATE TABLE "机场" (
"词条id" int,
"名称" text,
"所属城市" text,
"类型" text,
primary key ("词条id")
);

CREATE TABLE "火车站" (
"词条id" int,
"名称" text,
"所属城市" text,
"类型" text,
primary key ("词条id")
);

CREATE TABLE "酒店距离机场路程" (
"酒店id" int,
"机场id" int,
"距离" int,
"打车费用" int,
"高峰用时" int,
"平时用时" int,
foreign key("机场id") references "机场"("词条id"),
foreign key("酒店id") references "酒店"("词条id")
);

CREATE TABLE "酒店距离火车站路程" (
"酒店id" int,
"火车站id" int,
"公交线路数" int,
"地铁线路数" int,
"地铁用时" int,
foreign key("酒店id") references "酒店"("词条id"),
foreign key("火车站id") references "火车站"("词条id")
);

CREATE TABLE "酒店活动费用" (
"酒店id" int,
"活动类型" text,
"人数规模" int,
"费用" int,
foreign key("酒店id") references "酒店"("词条id")
);

insert into "酒店集团" ("词条id", "名称", "总部所在省", "上级主管部门", "酒店数量", "客房数量", "省排名", "中国500最具价值品牌排名", "全球酒店集团300强排名") values ("item_mechanism_1_1", "锦江国际酒店集团", "上海", "国资委", "200", "50000", "1", "1", "1")

insert into "酒店集团" ("词条id", "名称", "总部所在省", "上级主管部门", "酒店数量", "客房数量", "省排名", "中国500最具价值品牌排名", "全球酒店集团300强排名") values ("item_mechanism_1_2", "如家酒店集团", "北京", "省资委", "300", "60000", "2", "60", "40")

insert into "酒店集团" ("词条id", "名称", "总部所在省", "上级主管部门", "酒店数量", "客房数量", "省排名", "中国500最具价值品牌排名", "全球酒店集团300强排名") values ("item_mechanism_1_3", "华住酒店集团", "广东", "省资委", "500", "80000", "3", "59", "60")

insert into "酒店集团" ("词条id", "名称", "总部所在省", "上级主管部门", "酒店数量", "客房数量", "省排名", "中国500最具价值品牌排名", "全球酒店集团300强排名") values ("item_mechanism_1_4", "铂涛酒店集团", "香港", "国资委", "600", "87000", "4", "87", "70")

insert into "酒店集团" ("词条id", "名称", "总部所在省", "上级主管部门", "酒店数量", "客房数量", "省排名", "中国500最具价值品牌排名", "全球酒店集团300强排名") values ("item_mechanism_1_5", "格林豪泰酒店集团", "上海", "省资委", "1000", "100000", "10", "500", "300")

insert into "酒店" ("词条id", "名称", "酒店地址", "开业时间", "酒店星级", "所属集团id", "客房数量", "大厅容纳人数") values ("item_mechanism_1_6", "北京颐和安缦酒店", "北京市海淀区", "2002-09-08", "4A", "item_mechanism_1_5", "500", "1500")

insert into "酒店" ("词条id", "名称", "酒店地址", "开业时间", "酒店星级", "所属集团id", "客房数量", "大厅容纳人数") values ("item_mechanism_1_7", "北京国贸大酒店", "北京市朝阳区", "2005-05-17", "5A", "item_mechanism_1_3", "600", "2000")

insert into "酒店" ("词条id", "名称", "酒店地址", "开业时间", "酒店星级", "所属集团id", "客房数量", "大厅容纳人数") values ("item_mechanism_1_8", "北京王府井希尔顿酒店", "北京市东城区", "2008-09-10", "4A", "item_mechanism_1_3", "650", "2300")

insert into "酒店" ("词条id", "名称", "酒店地址", "开业时间", "酒店星级", "所属集团id", "客房数量", "大厅容纳人数") values ("item_mechanism_1_9", "北京怡亨酒店", "北京市朝阳区", "2009-10-10", "5A", "item_mechanism_1_5", "560", "4000")

insert into "酒店" ("词条id", "名称", "酒店地址", "开业时间", "酒店星级", "所属集团id", "客房数量", "大厅容纳人数") values ("item_mechanism_1_10", "北京中国大饭店", "北京市海淀区", "2010-12-17", "5A", "item_mechanism_1_1", "800", "5000")

insert into "机场" ("词条id", "名称", "所属城市", "类型") values ("item_mechanism_1_11", "首都机场", "北京", "军用")

insert into "机场" ("词条id", "名称", "所属城市", "类型") values ("item_mechanism_1_12", "上海虹桥机场", "上海", "民用")

insert into "机场" ("词条id", "名称", "所属城市", "类型") values ("item_mechanism_1_13", "上海浦东机场", "天津", "国际")

insert into "机场" ("词条id", "名称", "所属城市", "类型") values ("item_mechanism_1_14", "天津滨海国际机场", "哈尔滨", "国际")

insert into "机场" ("词条id", "名称", "所属城市", "类型") values ("item_mechanism_1_15", "哈尔滨太平国际机场", "天津", "民用")

insert into "火车站" ("词条id", "名称", "所属城市", "类型") values ("item_mechanism_1_16", "北京站", "北京", "普通")

insert into "火车站" ("词条id", "名称", "所属城市", "类型") values ("item_mechanism_1_17", "北京南站", "上海", "高铁")

insert into "火车站" ("词条id", "名称", "所属城市", "类型") values ("item_mechanism_1_18", "上海虹桥站", "天津", "普通")

insert into "火车站" ("词条id", "名称", "所属城市", "类型") values ("item_mechanism_1_19", "天津站", "天津", "普通")

insert into "火车站" ("词条id", "名称", "所属城市", "类型") values ("item_mechanism_1_20", "天津南站", "北京", "普通")

insert into "酒店距离机场路程" ("酒店id", "机场id", "距离", "打车费用", "高峰用时", "平时用时") values ("item_mechanism_1_10", "item_mechanism_1_12", "26km", "80元", "60分", "40分")

insert into "酒店距离机场路程" ("酒店id", "机场id", "距离", "打车费用", "高峰用时", "平时用时") values ("item_mechanism_1_9", "item_mechanism_1_13", "30km", "89元", "79分", "50分")

insert into "酒店距离机场路程" ("酒店id", "机场id", "距离", "打车费用", "高峰用时", "平时用时") values ("item_mechanism_1_8", "item_mechanism_1_13", "35km", "100元", "80分", "44分")

insert into "酒店距离机场路程" ("酒店id", "机场id", "距离", "打车费用", "高峰用时", "平时用时") values ("item_mechanism_1_9", "item_mechanism_1_13", "40km", "130元", "87分", "56分")

insert into "酒店距离机场路程" ("酒店id", "机场id", "距离", "打车费用", "高峰用时", "平时用时") values ("item_mechanism_1_9", "item_mechanism_1_12", "60km", "200元", "120分", "80分")

insert into "酒店距离火车站路程" ("酒店id", "火车站id", "公交线路数", "地铁线路数", "地铁用时") values ("item_mechanism_1_9", "item_mechanism_1_20", "1", "0", "20分钟")

insert into "酒店距离火车站路程" ("酒店id", "火车站id", "公交线路数", "地铁线路数", "地铁用时") values ("item_mechanism_1_9", "item_mechanism_1_18", "4", "1", "30分钟")

insert into "酒店距离火车站路程" ("酒店id", "火车站id", "公交线路数", "地铁线路数", "地铁用时") values ("item_mechanism_1_6", "item_mechanism_1_17", "5", "2", "35分钟")

insert into "酒店距离火车站路程" ("酒店id", "火车站id", "公交线路数", "地铁线路数", "地铁用时") values ("item_mechanism_1_10", "item_mechanism_1_17", "7", "3", "40分钟")

insert into "酒店距离火车站路程" ("酒店id", "火车站id", "公交线路数", "地铁线路数", "地铁用时") values ("item_mechanism_1_9", "item_mechanism_1_17", "13", "4", "50分钟")

insert into "酒店活动费用" ("酒店id", "活动类型", "人数规模", "费用") values ("item_mechanism_1_10", "会议", "200", "20000")

insert into "酒店活动费用" ("酒店id", "活动类型", "人数规模", "费用") values ("item_mechanism_1_6", "婚宴", "300", "25000")

insert into "酒店活动费用" ("酒店id", "活动类型", "人数规模", "费用") values ("item_mechanism_1_10", "展览", "450", "30000")

insert into "酒店活动费用" ("酒店id", "活动类型", "人数规模", "费用") values ("item_mechanism_1_7", "聚会", "750", "37000")

insert into "酒店活动费用" ("酒店id", "活动类型", "人数规模", "费用") values ("item_mechanism_1_10", "会议", "2000", "200000")

