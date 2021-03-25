PRAGMA foreign_keys = ON;

CREATE TABLE "城市" (
"词条id" int,
"名称" text,
"所属省份" text,
"三甲医院数量" int,
"人口数量" int,
"老年人口占比" int,
primary key ("词条id")
);

CREATE TABLE "医院" (
"词条id" int,
"名称" text,
"所属城市id" int,
"医院等级" int,
"职工数量" int,
"院士数量" int,
"科室数量" int,
"重点专科数量" int,
primary key ("词条id"),
foreign key("所属城市id") references "城市"("词条id")
);

CREATE TABLE "医院排名" (
"年份" time,
"医院id" int,
"排名" int,
"接待病患数量(万人次)" int,
"手术数量" int,
foreign key("医院id") references "医院"("词条id")
);

CREATE TABLE "特色科室" (
"科室" int,
"医院id" int,
"是否重点" binary,
"是否研究中心" binary,
foreign key("医院id") references "医院"("词条id")
);

insert into "城市" ("词条id", "名称", "所属省份", "三甲医院数量", "人口数量", "老年人口占比") values ("item_mechanism_7_66", "哈尔滨", "黑龙江", "3", "431万", "30%")

insert into "城市" ("词条id", "名称", "所属省份", "三甲医院数量", "人口数量", "老年人口占比") values ("item_mechanism_7_67", "铁岭", "辽宁", "4", "600万", "35%")

insert into "城市" ("词条id", "名称", "所属省份", "三甲医院数量", "人口数量", "老年人口占比") values ("item_mechanism_7_68", "赤峰", "内蒙古", "6", "610万", "37%")

insert into "城市" ("词条id", "名称", "所属省份", "三甲医院数量", "人口数量", "老年人口占比") values ("item_mechanism_7_69", "洛阳", "河南", "7", "700万", "39%")

insert into "城市" ("词条id", "名称", "所属省份", "三甲医院数量", "人口数量", "老年人口占比") values ("item_mechanism_7_70", "桂林", "广西", "10", "900万", "40%")

insert into "医院" ("词条id", "名称", "所属城市id", "医院等级", "职工数量", "院士数量", "科室数量", "重点专科数量") values ("item_mechanism_7_71", "哈尔滨医科大学第三临床医学院", "item_mechanism_7_66", "三级甲等", "1270", "0", "25", "2")

insert into "医院" ("词条id", "名称", "所属城市id", "医院等级", "职工数量", "院士数量", "科室数量", "重点专科数量") values ("item_mechanism_7_72", "北京人民医院", "item_mechanism_7_68", "二级甲等", "2200", "1", "27", "4")

insert into "医院" ("词条id", "名称", "所属城市id", "医院等级", "职工数量", "院士数量", "科室数量", "重点专科数量") values ("item_mechanism_7_73", "天津市肿瘤医院", "item_mechanism_7_69", "二级甲等", "2700", "2", "30", "6")

insert into "医院" ("词条id", "名称", "所属城市id", "医院等级", "职工数量", "院士数量", "科室数量", "重点专科数量") values ("item_mechanism_7_74", "吉林大学白求恩第一医院", "item_mechanism_7_67", "三级甲等", "2780", "3", "31", "7")

insert into "医院" ("词条id", "名称", "所属城市id", "医院等级", "职工数量", "院士数量", "科室数量", "重点专科数量") values ("item_mechanism_7_75", "中国人民解放军海军军医大学", "item_mechanism_7_70", "三级甲等", "3000", "4", "37", "12")

insert into "医院排名" ("年份", "医院id", "排名", "接待病患数量(万人次)", "手术数量") values ("2016", "item_mechanism_7_72", "1", "", "10万")

insert into "医院排名" ("年份", "医院id", "排名", "接待病患数量(万人次)", "手术数量") values ("2017", "item_mechanism_7_71", "10", "", "30万")

insert into "医院排名" ("年份", "医院id", "排名", "接待病患数量(万人次)", "手术数量") values ("2018", "item_mechanism_7_75", "5", "", "50万")

insert into "医院排名" ("年份", "医院id", "排名", "接待病患数量(万人次)", "手术数量") values ("2015", "item_mechanism_7_72", "7", "", "80万")

insert into "医院排名" ("年份", "医院id", "排名", "接待病患数量(万人次)", "手术数量") values ("2019", "item_mechanism_7_74", "30", "", "100万")

insert into "特色科室" ("科室", "医院id", "是否重点", "是否研究中心") values ("口腔科", "item_mechanism_7_74", "是", "是")

insert into "特色科室" ("科室", "医院id", "是否重点", "是否研究中心") values ("骨科", "item_mechanism_7_71", "否", "否")

insert into "特色科室" ("科室", "医院id", "是否重点", "是否研究中心") values ("肿瘤科", "item_mechanism_7_73", "是", "否")

insert into "特色科室" ("科室", "医院id", "是否重点", "是否研究中心") values ("耳鼻喉科", "item_mechanism_7_72", "是", "否")

insert into "特色科室" ("科室", "医院id", "是否重点", "是否研究中心") values ("风湿免疫科", "item_mechanism_7_75", "是", "是")

