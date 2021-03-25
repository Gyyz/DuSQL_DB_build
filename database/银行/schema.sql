PRAGMA foreign_keys = ON;

CREATE TABLE "银行总部" (
"词条id" int,
"名称" text,
"总部地点" text,
"成立时间" time,
"公司类型" text,
primary key ("词条id")
);

CREATE TABLE "年营业额" (
"年份" time,
"银行id" int,
"营业额" int,
"员工数" int,
"世界五百强排名" int,
foreign key("银行id") references "银行总部"("词条id")
);

CREATE TABLE "城市" (
"词条id" int,
"名称" text,
"所属省份" text,
"所属区域" text,
primary key ("词条id")
);

CREATE TABLE "银行服务网点" (
"银行id" int,
"城市id" int,
"建成数量" int,
"规划数量" int,
foreign key("城市id") references "城市"("词条id"),
foreign key("银行id") references "银行总部"("词条id")
);

insert into "银行总部" ("词条id", "名称", "总部地点", "成立时间", "公司类型") values ("item_mechanism_4_41", "中国工商银行", "北京复兴门内大街55号", "1984-01-01", "中央企业")

insert into "银行总部" ("词条id", "名称", "总部地点", "成立时间", "公司类型") values ("item_mechanism_4_42", "中国建设银行", "北京金融大街25号", "1954-10-01", "中央企业")

insert into "银行总部" ("词条id", "名称", "总部地点", "成立时间", "公司类型") values ("item_mechanism_4_43", "中国农业银行", "北京建国门内大街69号", "1951-08-09", "中央企业")

insert into "银行总部" ("词条id", "名称", "总部地点", "成立时间", "公司类型") values ("item_mechanism_4_44", "招商银行", "广东省深圳市福田区深南大道", "1987-04-08", "股份制商业银行")

insert into "银行总部" ("词条id", "名称", "总部地点", "成立时间", "公司类型") values ("item_mechanism_4_45", "浦发银行", "上海", "1992-8-07", "股份制商业银行")

insert into "年营业额" ("年份", "银行id", "营业额", "员工数", "世界五百强排名") values ("2015", "item_mechanism_4_43", "220万亿", "4万", "3")

insert into "年营业额" ("年份", "银行id", "营业额", "员工数", "世界五百强排名") values ("2016", "item_mechanism_4_43", "330万亿", "6万", "19")

insert into "年营业额" ("年份", "银行id", "营业额", "员工数", "世界五百强排名") values ("2017", "item_mechanism_4_42", "270万亿", "7万", "18")

insert into "年营业额" ("年份", "银行id", "营业额", "员工数", "世界五百强排名") values ("2016", "item_mechanism_4_41", "400万亿", "5万", "5")

insert into "年营业额" ("年份", "银行id", "营业额", "员工数", "世界五百强排名") values ("2018", "item_mechanism_4_43", "450万亿", "8万", "20")

insert into "城市" ("词条id", "名称", "所属省份", "所属区域") values ("item_mechanism_4_46", "哈尔滨", "黑龙江", "东北")

insert into "城市" ("词条id", "名称", "所属省份", "所属区域") values ("item_mechanism_4_47", "兰州", "甘肃", "西北")

insert into "城市" ("词条id", "名称", "所属省份", "所属区域") values ("item_mechanism_4_48", "石家庄", "河北", "华北")

insert into "城市" ("词条id", "名称", "所属省份", "所属区域") values ("item_mechanism_4_49", "成都", "四川", "西南")

insert into "城市" ("词条id", "名称", "所属省份", "所属区域") values ("item_mechanism_4_50", "厦门", "福建", "东南")

insert into "银行服务网点" ("银行id", "城市id", "建成数量", "规划数量") values ("item_mechanism_4_43", "item_mechanism_4_48", "10", "20")

insert into "银行服务网点" ("银行id", "城市id", "建成数量", "规划数量") values ("item_mechanism_4_42", "item_mechanism_4_50", "20", "25")

insert into "银行服务网点" ("银行id", "城市id", "建成数量", "规划数量") values ("item_mechanism_4_44", "item_mechanism_4_49", "15", "27")

insert into "银行服务网点" ("银行id", "城市id", "建成数量", "规划数量") values ("item_mechanism_4_42", "item_mechanism_4_50", "19", "30")

insert into "银行服务网点" ("银行id", "城市id", "建成数量", "规划数量") values ("item_mechanism_4_43", "item_mechanism_4_48", "30", "40")

