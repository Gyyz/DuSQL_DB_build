PRAGMA foreign_keys = ON;

CREATE TABLE "省份" (
"词条id" text,
"省份名称" int,
"985高校数量" int,
"211高校数量" int,
"2018年本科录取率" int,
"2019年本科录取率" int,
primary key ("词条id")
);

CREATE TABLE "各省院士" (
"年份" time,
"籍贯id" int,
"科学院院士数量" int,
"工程院院士数量" int,
foreign key("籍贯id") references "省份"("词条id")
);

CREATE TABLE "高校" (
"词条id" int,
"学校名称" text,
"院士校友人数" int,
"学校排名" int,
"星级" int,
"办学层次" text,
primary key ("词条id")
);

CREATE TABLE "2019年院士任职学校" (
"词条id" int,
"院士姓名" text,
"年龄" int,
"专业" text,
"院士类型" text,
"工作单位id" int,
primary key ("词条id"),
foreign key("工作单位id") references "高校"("词条id")
);

insert into "省份" ("词条id", "省份名称", "985高校数量", "211高校数量", "2018年本科录取率", "2019年本科录取率") values ("item_geostatistics_1_1", "北京", "8", "26", "69.5~72%", "69.5~72%")

insert into "省份" ("词条id", "省份名称", "985高校数量", "211高校数量", "2018年本科录取率", "2019年本科录取率") values ("item_geostatistics_1_2", "上海", "4", "10", "80%~85%", "80%~85%")

insert into "省份" ("词条id", "省份名称", "985高校数量", "211高校数量", "2018年本科录取率", "2019年本科录取率") values ("item_geostatistics_1_3", "江苏", "2", "8", "59%~62%", "59%~62%")

insert into "省份" ("词条id", "省份名称", "985高校数量", "211高校数量", "2018年本科录取率", "2019年本科录取率") values ("item_geostatistics_1_4", "湖北", "2", "7", "40~43%", "40~43%")

insert into "省份" ("词条id", "省份名称", "985高校数量", "211高校数量", "2018年本科录取率", "2019年本科录取率") values ("item_geostatistics_1_5", "陕西", "2", "7", "44%~47%", "44%~47%")

insert into "各省院士" ("年份", "籍贯id", "科学院院士数量", "工程院院士数量") values ("2017", "item_geostatistics_1_3", "0", "0")

insert into "各省院士" ("年份", "籍贯id", "科学院院士数量", "工程院院士数量") values ("2019", "item_geostatistics_1_5", "9", "8")

insert into "各省院士" ("年份", "籍贯id", "科学院院士数量", "工程院院士数量") values ("2019", "item_geostatistics_1_3", "9", "0")

insert into "各省院士" ("年份", "籍贯id", "科学院院士数量", "工程院院士数量") values ("2017", "item_geostatistics_1_4", "9", "0")

insert into "各省院士" ("年份", "籍贯id", "科学院院士数量", "工程院院士数量") values ("2019", "item_geostatistics_1_1", "0", "8")

insert into "高校" ("词条id", "学校名称", "院士校友人数", "学校排名", "星级", "办学层次") values ("item_geostatistics_1_6", "北京大学", "170", "1", "8星级", "世界一流大学")

insert into "高校" ("词条id", "学校名称", "院士校友人数", "学校排名", "星级", "办学层次") values ("item_geostatistics_1_7", "清华大学", "155", "18", "7星级", "世界知名水平大学")

insert into "高校" ("词条id", "学校名称", "院士校友人数", "学校排名", "星级", "办学层次") values ("item_geostatistics_1_8", "复旦大学", "95", "18", "8星级", "中国顶尖大学")

insert into "高校" ("词条id", "学校名称", "院士校友人数", "学校排名", "星级", "办学层次") values ("item_geostatistics_1_9", "南京大学", "75", "18", "7星级", "中国顶尖大学")

insert into "高校" ("词条id", "学校名称", "院士校友人数", "学校排名", "星级", "办学层次") values ("item_geostatistics_1_10", "浙江大学", "62", "18", "8星级", "世界知名水平大学")

insert into "2019年院士任职学校" ("词条id", "院士姓名", "年龄", "专业", "院士类型", "工作单位id") values ("item_geostatistics_1_11", "常进", "42", "有机化学", "工程院", "item_geostatistics_1_8")

insert into "2019年院士任职学校" ("词条id", "院士姓名", "年龄", "专业", "院士类型", "工作单位id") values ("item_geostatistics_1_12", "常凯", "60", "无机化学", "科学院", "item_geostatistics_1_7")

insert into "2019年院士任职学校" ("词条id", "院士姓名", "年龄", "专业", "院士类型", "工作单位id") values ("item_geostatistics_1_13", "高原", "60", "免疫学", "工程院", "item_geostatistics_1_8")

insert into "2019年院士任职学校" ("词条id", "院士姓名", "年龄", "专业", "院士类型", "工作单位id") values ("item_geostatistics_1_14", "张平", "42", "基础数学", "工程院", "item_geostatistics_1_6")

insert into "2019年院士任职学校" ("词条id", "院士姓名", "年龄", "专业", "院士类型", "工作单位id") values ("item_geostatistics_1_15", "石林", "60", "粒子物理", "工程院", "item_geostatistics_1_10")

