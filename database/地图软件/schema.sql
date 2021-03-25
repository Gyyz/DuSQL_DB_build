PRAGMA foreign_keys = ON;

CREATE TABLE "地图软件" (
"词条id" int,
"名称" text,
"上线时间" time,
"运营公司" text,
"覆盖国家和地区数量" int,
"评分" int,
primary key ("词条id")
);

CREATE TABLE "地图软件支持的平台" (
"软件id" int,
"平台" text,
"首次支持版本号" int,
"发布时间" time,
foreign key("软件id") references "地图软件"("词条id")
);

CREATE TABLE "地图软件支持的功能" (
"软件id" int,
"功能" text,
"是否创新亮点" binary,
"首次支持版本号" int,
"发布时间" time,
foreign key("软件id") references "地图软件"("词条id")
);

CREATE TABLE "软件支持的打车APP" (
"软件id" int,
"打车app" text,
"车型数量" int,
"日均单数" int,
foreign key("软件id") references "地图软件"("词条id")
);

insert into "地图软件" ("词条id", "名称", "上线时间", "运营公司", "覆盖国家和地区数量", "评分") values ("item_software_12_126", "百度地图", "2008", "百度", "100", "7")

insert into "地图软件" ("词条id", "名称", "上线时间", "运营公司", "覆盖国家和地区数量", "评分") values ("item_software_12_127", "高德地图", "2015年", "阿里巴巴", "1000", "9")

insert into "地图软件" ("词条id", "名称", "上线时间", "运营公司", "覆盖国家和地区数量", "评分") values ("item_software_12_128", "腾讯地图", "2015年", "腾讯科技有限公司", "100", "9")

insert into "地图软件" ("词条id", "名称", "上线时间", "运营公司", "覆盖国家和地区数量", "评分") values ("item_software_12_129", "滴滴地图", "2008", "北京小桔科技有限公司", "1000", "9")

insert into "地图软件" ("词条id", "名称", "上线时间", "运营公司", "覆盖国家和地区数量", "评分") values ("item_software_12_130", "谷歌地图", "2008", "谷歌公司", "1000", "9")

insert into "地图软件支持的平台" ("软件id", "平台", "首次支持版本号", "发布时间") values ("item_software_12_130", "Web", "1.5", "2015年7月1日")

insert into "地图软件支持的平台" ("软件id", "平台", "首次支持版本号", "发布时间") values ("item_software_12_129", "PC", "3.47", "2018年3月1日")

insert into "地图软件支持的平台" ("软件id", "平台", "首次支持版本号", "发布时间") values ("item_software_12_127", "Android", "3.47", "2015年7月1日")

insert into "地图软件支持的平台" ("软件id", "平台", "首次支持版本号", "发布时间") values ("item_software_12_126", "iOS", "1.5", "2015年7月1日")

insert into "地图软件支持的平台" ("软件id", "平台", "首次支持版本号", "发布时间") values ("item_software_12_126", "Web", "1.5", "2018年3月1日")

insert into "地图软件支持的功能" ("软件id", "功能", "是否创新亮点", "首次支持版本号", "发布时间") values ("item_software_12_128", "智能语音", "是", "1.5", "2015年7月1日")

insert into "地图软件支持的功能" ("软件id", "功能", "是否创新亮点", "首次支持版本号", "发布时间") values ("item_software_12_129", "AR步导", "否", "3.47", "2018年3月1日")

insert into "地图软件支持的功能" ("软件id", "功能", "是否创新亮点", "首次支持版本号", "发布时间") values ("item_software_12_126", "智能驾车导航", "是", "1.5", "2018年3月1日")

insert into "地图软件支持的功能" ("软件id", "功能", "是否创新亮点", "首次支持版本号", "发布时间") values ("item_software_12_130", "智能语音", "否", "1.5", "2015年7月1日")

insert into "地图软件支持的功能" ("软件id", "功能", "是否创新亮点", "首次支持版本号", "发布时间") values ("item_software_12_127", "智能语音", "是", "1.5", "2015年7月1日")

insert into "软件支持的打车APP" ("软件id", "打车app", "车型数量", "日均单数") values ("item_software_12_130", "滴滴打车", "1", "1000")

insert into "软件支持的打车APP" ("软件id", "打车app", "车型数量", "日均单数") values ("item_software_12_129", "嘀嗒打车", "9", "50000")

insert into "软件支持的打车APP" ("软件id", "打车app", "车型数量", "日均单数") values ("item_software_12_129", "首汽约车", "1", "50000")

insert into "软件支持的打车APP" ("软件id", "打车app", "车型数量", "日均单数") values ("item_software_12_127", "易到用车", "1", "50000")

insert into "软件支持的打车APP" ("软件id", "打车app", "车型数量", "日均单数") values ("item_software_12_126", "一号专车", "9", "1000")

