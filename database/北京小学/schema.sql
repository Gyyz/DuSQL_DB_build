PRAGMA foreign_keys = ON;

CREATE TABLE "北京学校" (
"词条id" int,
"名称" text,
"所属地区" text,
"创办时间" time,
"类别" text,
"学校人数" int,
"教职工人数" int,
"教学班数量" int,
primary key ("词条id")
);

CREATE TABLE "小升初升学率" (
"年份" time,
"学校id" int,
"毕业人数" int,
"重点中学升学率" int,
"top10中学升学率" int,
foreign key("学校id") references "北京学校"("词条id")
);

CREATE TABLE "教师" (
"词条id" int,
"姓名" text,
"职称" text,
"任教学校id" int,
primary key ("词条id"),
foreign key("任教学校id") references "北京学校"("词条id")
);

CREATE TABLE "分校" (
"分校名称" text,
"所属城市" text,
"创办时间" time,
"学校id" int,
foreign key("学校id") references "北京学校"("词条id")
);

insert into "北京学校" ("词条id", "名称", "所属地区", "创办时间", "类别", "学校人数", "教职工人数", "教学班数量") values ("item_mechanism_9_86", "中国人大附小", "海淀区", "1954", "公立小学", "5000", "326", "123")

insert into "北京学校" ("词条id", "名称", "所属地区", "创办时间", "类别", "学校人数", "教职工人数", "教学班数量") values ("item_mechanism_9_87", "清华附小", "海淀区", "1915", "公立小学", "7000", "600", "48")

insert into "北京学校" ("词条id", "名称", "所属地区", "创办时间", "类别", "学校人数", "教职工人数", "教学班数量") values ("item_mechanism_9_88", "上地实验小学", "海淀区", "1998", "公立小学", "4000", "200", "40")

insert into "北京学校" ("词条id", "名称", "所属地区", "创办时间", "类别", "学校人数", "教职工人数", "教学班数量") values ("item_mechanism_9_89", "北京市西城区红莲小学", "西城区", "1987", "公立小学", "750", "60", "21")

insert into "北京学校" ("词条id", "名称", "所属地区", "创办时间", "类别", "学校人数", "教职工人数", "教学班数量") values ("item_mechanism_9_90", "北京市西城区育翔小学", "西城区", "1954", "公立小学", "2000", "120", "50")

insert into "小升初升学率" ("年份", "学校id", "毕业人数", "重点中学升学率", "top10中学升学率") values ("2015", "item_mechanism_9_86", "300", "50%", "30%")

insert into "小升初升学率" ("年份", "学校id", "毕业人数", "重点中学升学率", "top10中学升学率") values ("2016", "item_mechanism_9_89", "400", "56%", "34%")

insert into "小升初升学率" ("年份", "学校id", "毕业人数", "重点中学升学率", "top10中学升学率") values ("2017", "item_mechanism_9_86", "700", "80%", "45%")

insert into "小升初升学率" ("年份", "学校id", "毕业人数", "重点中学升学率", "top10中学升学率") values ("2014", "item_mechanism_9_88", "780", "79%", "39%")

insert into "小升初升学率" ("年份", "学校id", "毕业人数", "重点中学升学率", "top10中学升学率") values ("2018", "item_mechanism_9_89", "1000", "90%", "50%")

insert into "教师" ("词条id", "姓名", "职称", "任教学校id") values ("item_mechanism_9_91", "王毅", "特级教师", "item_mechanism_9_88")

insert into "教师" ("词条id", "姓名", "职称", "任教学校id") values ("item_mechanism_9_92", "张平", "高级教师", "item_mechanism_9_90")

insert into "教师" ("词条id", "姓名", "职称", "任教学校id") values ("item_mechanism_9_93", "李星", "一级教师", "item_mechanism_9_88")

insert into "教师" ("词条id", "姓名", "职称", "任教学校id") values ("item_mechanism_9_94", "刘兰", "一级教师", "item_mechanism_9_87")

insert into "教师" ("词条id", "姓名", "职称", "任教学校id") values ("item_mechanism_9_95", "任君", "一级教师", "item_mechanism_9_87")

insert into "分校" ("分校名称", "所属城市", "创办时间", "学校id") values ("北京四中呼和浩特分校", "呼和浩特", "2012-09-15", "item_mechanism_9_89")

insert into "分校" ("分校名称", "所属城市", "创办时间", "学校id") values ("北京四中包头分校", "包头", "2013-07-09", "item_mechanism_9_88")

insert into "分校" ("分校名称", "所属城市", "创办时间", "学校id") values ("人大附中宁夏分校", "宁夏", "2013-06-08", "item_mechanism_9_86")

insert into "分校" ("分校名称", "所属城市", "创办时间", "学校id") values ("衡水中学深圳分校", "深圳", "2012-03-24", "item_mechanism_9_88")

insert into "分校" ("分校名称", "所属城市", "创办时间", "学校id") values ("哈三中齐齐哈尔分校", "齐齐哈尔", "2014-08-01", "item_mechanism_9_89")

