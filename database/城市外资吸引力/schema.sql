PRAGMA foreign_keys = ON;

CREATE TABLE "城市" (
"词条id" int,
"名称" text,
"所属省份" text,
"行政级别" text,
"车牌代码" text,
primary key ("词条id")
);

CREATE TABLE "城市城建" (
"年份" time,
"城市id" int,
"市区面积" int,
"建成区面积" int,
"城市建设用地面积" int,
"本年征地面积" int,
"建成区排名" int,
foreign key("城市id") references "城市"("词条id")
);

CREATE TABLE "城市外资吸引力" (
"年份" time,
"城市id" int,
"工业总产值(亿)" int,
"内资(亿)" int,
"外资(亿)" int,
"省内排名" int,
foreign key("城市id") references "城市"("词条id")
);

CREATE TABLE "城市实际利用外资" (
"年份" time,
"城市id" int,
"实际利用外资(亿美元)" int,
"同比增速" int,
foreign key("城市id") references "城市"("词条id")
);

insert into "城市" ("词条id", "名称", "所属省份", "行政级别", "车牌代码") values ("item_geostatistics_15_66", "石家庄", "呼和浩特", "省会", "蒙A")

insert into "城市" ("词条id", "名称", "所属省份", "行政级别", "车牌代码") values ("item_geostatistics_15_67", "深圳", "广州", "地级市", "粤B")

insert into "城市" ("词条id", "名称", "所属省份", "行政级别", "车牌代码") values ("item_geostatistics_15_68", "北京", "北京", "直辖市", "京A")

insert into "城市" ("词条id", "名称", "所属省份", "行政级别", "车牌代码") values ("item_geostatistics_15_69", "南京", "浙江", "省会", "苏A")

insert into "城市" ("词条id", "名称", "所属省份", "行政级别", "车牌代码") values ("item_geostatistics_15_70", "武汉", "湖北", "县级市", "鄂A")

insert into "城市城建" ("年份", "城市id", "市区面积", "建成区面积", "城市建设用地面积", "本年征地面积", "建成区排名") values ("2015", "item_geostatistics_15_68", "2465", "628", "625", "4", "1")

insert into "城市城建" ("年份", "城市id", "市区面积", "建成区面积", "城市建设用地面积", "本年征地面积", "建成区排名") values ("2017", "item_geostatistics_15_66", "16410平方公里", "1445平方公里", "1465平方公里", "108平方公理", "15")

insert into "城市城建" ("年份", "城市id", "市区面积", "建成区面积", "城市建设用地面积", "本年征地面积", "建成区排名") values ("2015", "item_geostatistics_15_66", "2465", "628", "625", "4", "1")

insert into "城市城建" ("年份", "城市id", "市区面积", "建成区面积", "城市建设用地面积", "本年征地面积", "建成区排名") values ("2017", "item_geostatistics_15_68", "2465", "1445平方公里", "1465平方公里", "4", "15")

insert into "城市城建" ("年份", "城市id", "市区面积", "建成区面积", "城市建设用地面积", "本年征地面积", "建成区排名") values ("2017", "item_geostatistics_15_68", "16410平方公里", "628", "625", "4", "1")

insert into "城市外资吸引力" ("年份", "城市id", "工业总产值(亿)", "内资(亿)", "外资(亿)", "省内排名") values ("2015", "item_geostatistics_15_68", "", "", "", "1")

insert into "城市外资吸引力" ("年份", "城市id", "工业总产值(亿)", "内资(亿)", "外资(亿)", "省内排名") values ("2017", "item_geostatistics_15_69", "", "", "", "10")

insert into "城市外资吸引力" ("年份", "城市id", "工业总产值(亿)", "内资(亿)", "外资(亿)", "省内排名") values ("2017", "item_geostatistics_15_70", "", "", "", "10")

insert into "城市外资吸引力" ("年份", "城市id", "工业总产值(亿)", "内资(亿)", "外资(亿)", "省内排名") values ("2015", "item_geostatistics_15_70", "", "", "", "1")

insert into "城市外资吸引力" ("年份", "城市id", "工业总产值(亿)", "内资(亿)", "外资(亿)", "省内排名") values ("2015", "item_geostatistics_15_66", "", "", "", "10")

insert into "城市实际利用外资" ("年份", "城市id", "实际利用外资(亿美元)", "同比增速") values ("2015", "item_geostatistics_15_69", "", "-28.9%")

insert into "城市实际利用外资" ("年份", "城市id", "实际利用外资(亿美元)", "同比增速") values ("2017", "item_geostatistics_15_68", "", "13.3%")

insert into "城市实际利用外资" ("年份", "城市id", "实际利用外资(亿美元)", "同比增速") values ("2017", "item_geostatistics_15_67", "", "-28.9%")

insert into "城市实际利用外资" ("年份", "城市id", "实际利用外资(亿美元)", "同比增速") values ("2015", "item_geostatistics_15_70", "", "-28.9%")

insert into "城市实际利用外资" ("年份", "城市id", "实际利用外资(亿美元)", "同比增速") values ("2015", "item_geostatistics_15_70", "", "-28.9%")

