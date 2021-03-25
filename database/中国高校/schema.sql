PRAGMA foreign_keys = ON;

CREATE TABLE "高校" (
"词条id" int,
"名称" text,
"创办时间" time,
"类别" text,
"所属城市" text,
"本科生数量" int,
"研究生数量" int,
primary key ("词条id")
);

CREATE TABLE "名人" (
"词条id" int,
"名称" text,
"职业" time,
"主要成就" text,
"高校id" int,
primary key ("词条id"),
foreign key("高校id") references "高校"("词条id")
);

CREATE TABLE "奖项" (
"奖项名称" text,
"高校id" int,
"奖项数量" int,
"统计时间" time,
foreign key("高校id") references "高校"("词条id")
);

CREATE TABLE "高校属性" (
"高校id" int,
"属性" text,
"加入时间" time,
foreign key("高校id") references "高校"("词条id")
);

insert into "高校" ("词条id", "名称", "创办时间", "类别", "所属城市", "本科生数量", "研究生数量") values ("item_geography.2_6_61", "北大", "1898年", "公立大学", "北京", "43000", "26000")

insert into "高校" ("词条id", "名称", "创办时间", "类别", "所属城市", "本科生数量", "研究生数量") values ("item_geography.2_6_62", "浙江大学", "1897", "公立大学", "杭州", "25425", "29216")

insert into "高校" ("词条id", "名称", "创办时间", "类别", "所属城市", "本科生数量", "研究生数量") values ("item_geography.2_6_63", "厦门大学", "1921", "公立大学", "厦门", "19739", "20039")

insert into "高校" ("词条id", "名称", "创办时间", "类别", "所属城市", "本科生数量", "研究生数量") values ("item_geography.2_6_64", "中山大学", "1924", "公立大学", "广州", "32690", "21610")

insert into "高校" ("词条id", "名称", "创办时间", "类别", "所属城市", "本科生数量", "研究生数量") values ("item_geography.2_6_65", "武汉大学", "1893", "公立大学", "武汉", "29405", "26892")

insert into "名人" ("词条id", "名称", "职业", "主要成就", "高校id") values ("item_geography.2_6_66", "李彦宏", "企业家", "百度", "item_geography.2_6_61")

insert into "名人" ("词条id", "名称", "职业", "主要成就", "高校id") values ("item_geography.2_6_67", "屠呦呦", "科学家", "青蒿素", "item_geography.2_6_65")

insert into "名人" ("词条id", "名称", "职业", "主要成就", "高校id") values ("item_geography.2_6_68", "雷军", "企业家", "小米", "item_geography.2_6_61")

insert into "名人" ("词条id", "名称", "职业", "主要成就", "高校id") values ("item_geography.2_6_69", "邓稼先", "科学家", "两弹一星", "item_geography.2_6_63")

insert into "名人" ("词条id", "名称", "职业", "主要成就", "高校id") values ("item_geography.2_6_70", "陈景润", "企业家", "“1+2”是哥德巴赫猜想研究的丰碑", "item_geography.2_6_62")

insert into "奖项" ("奖项名称", "高校id", "奖项数量", "统计时间") values ("数学建模大赛", "item_geography.2_6_63", "10", "2015")

insert into "奖项" ("奖项名称", "高校id", "奖项数量", "统计时间") values ("数学建模大赛", "item_geography.2_6_63", "15", "2015")

insert into "奖项" ("奖项名称", "高校id", "奖项数量", "统计时间") values ("数学建模大赛", "item_geography.2_6_61", "17", "2015")

insert into "奖项" ("奖项名称", "高校id", "奖项数量", "统计时间") values ("数学建模大赛", "item_geography.2_6_62", "10", "2015")

insert into "奖项" ("奖项名称", "高校id", "奖项数量", "统计时间") values ("数学建模大赛", "item_geography.2_6_65", "17", "2015")

insert into "高校属性" ("高校id", "属性", "加入时间") values ("item_geography.2_6_65", "985", "1998")

insert into "高校属性" ("高校id", "属性", "加入时间") values ("item_geography.2_6_62", "985", "1998")

insert into "高校属性" ("高校id", "属性", "加入时间") values ("item_geography.2_6_62", "211", "1998")

insert into "高校属性" ("高校id", "属性", "加入时间") values ("item_geography.2_6_61", "985", "1998")

insert into "高校属性" ("高校id", "属性", "加入时间") values ("item_geography.2_6_61", "211", "1998")

