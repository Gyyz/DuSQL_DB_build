PRAGMA foreign_keys = ON;

CREATE TABLE "笔记本公司" (
"词条id" int,
"名称" text,
"创始人" text,
"所属国家" text,
"世界500强排名" int,
primary key ("词条id")
);

CREATE TABLE "笔记本产品" (
"词条id" int,
"名称" text,
"代言人" text,
"公司id" int,
primary key ("词条id"),
foreign key("公司id") references "笔记本公司"("词条id")
);

CREATE TABLE "笔记本型号系列" (
"词条id" int,
"名称" text,
"屏幕尺寸" int,
"分辨率" int,
"内存容量" int,
"硬盘容量" int,
"CPU主频" int,
"CPU型号" text,
"售价" int,
"上市时间" time,
"产品id" int,
primary key ("词条id"),
foreign key("产品id") references "笔记本产品"("词条id")
);

CREATE TABLE "笔记本型号平台售卖" (
"型号id" int,
"平台" text,
"售卖量" int,
"评分" int,
"最好评价" time,
"最差评价" text,
foreign key("型号id") references "笔记本型号系列"("词条id")
);

insert into "笔记本公司" ("词条id", "名称", "创始人", "所属国家", "世界500强排名") values ("item_product_9_66", "联想集团", "柳传志", "中国", "1")

insert into "笔记本公司" ("词条id", "名称", "创始人", "所属国家", "世界500强排名") values ("item_product_9_67", "华为公司", "任正非", "美国", "500")

insert into "笔记本公司" ("词条id", "名称", "创始人", "所属国家", "世界500强排名") values ("item_product_9_68", "宏基集团", "施振荣", "日本", "1")

insert into "笔记本公司" ("词条id", "名称", "创始人", "所属国家", "世界500强排名") values ("item_product_9_69", "华硕公司", "徐世昌", "韩国", "500")

insert into "笔记本公司" ("词条id", "名称", "创始人", "所属国家", "世界500强排名") values ("item_product_9_70", "惠普集团", "雷·兰恩", "英国", "1")

insert into "笔记本产品" ("词条id", "名称", "代言人", "公司id") values ("item_product_9_71", "thinkpad", "李易峰", "item_product_9_69")

insert into "笔记本产品" ("词条id", "名称", "代言人", "公司id") values ("item_product_9_72", "戴尔", "杨幂", "item_product_9_70")

insert into "笔记本产品" ("词条id", "名称", "代言人", "公司id") values ("item_product_9_73", "神州", "吴亦凡", "item_product_9_67")

insert into "笔记本产品" ("词条id", "名称", "代言人", "公司id") values ("item_product_9_74", "华为mate", "王俊凯", "item_product_9_68")

insert into "笔记本产品" ("词条id", "名称", "代言人", "公司id") values ("item_product_9_75", "苹果macbook", "易洋千玺", "item_product_9_69")

insert into "笔记本型号系列" ("词条id", "名称", "屏幕尺寸", "分辨率", "内存容量", "硬盘容量", "CPU主频", "CPU型号", "售价", "上市时间", "产品id") values ("item_product_9_76", "华为MateBook14", "14", "1920x1080", "4G", "128G", "1.5G", "Intel酷睿i58300H", "6000", "2015年9月10日", "item_product_9_72")

insert into "笔记本型号系列" ("词条id", "名称", "屏幕尺寸", "分辨率", "内存容量", "硬盘容量", "CPU主频", "CPU型号", "售价", "上市时间", "产品id") values ("item_product_9_77", "联想拯救者Y7000", "15.6英寸", "2160x1440", "8G", "256G", "2.3Ghz", "Intel酷睿i78750H", "12000", "2018年7月31日", "item_product_9_75")

insert into "笔记本型号系列" ("词条id", "名称", "屏幕尺寸", "分辨率", "内存容量", "硬盘容量", "CPU主频", "CPU型号", "售价", "上市时间", "产品id") values ("item_product_9_78", "惠普星14", "14", "2160x1440", "16G", "512G", "2.3Ghz", "Intel酷睿i58300H", "12000", "2015年9月10日", "item_product_9_75")

insert into "笔记本型号系列" ("词条id", "名称", "屏幕尺寸", "分辨率", "内存容量", "硬盘容量", "CPU主频", "CPU型号", "售价", "上市时间", "产品id") values ("item_product_9_79", "华硕灵耀", "15.6英寸", "2160x1440", "32G", "1T", "2.3Ghz", "Intel酷睿i58300H", "6000", "2015年9月10日", "item_product_9_75")

insert into "笔记本型号系列" ("词条id", "名称", "屏幕尺寸", "分辨率", "内存容量", "硬盘容量", "CPU主频", "CPU型号", "售价", "上市时间", "产品id") values ("item_product_9_80", "惠普战66", "15.6英寸", "2160x1440", "64G", "128G", "1.5G", "Intel酷睿i78750H", "6000", "2015年9月10日", "item_product_9_74")

insert into "笔记本型号平台售卖" ("型号id", "平台", "售卖量", "评分", "最好评价", "最差评价") values ("item_product_9_76", "天猫商城", "10万", "1", "外观美", "开机即死")

insert into "笔记本型号平台售卖" ("型号id", "平台", "售卖量", "评分", "最好评价", "最差评价") values ("item_product_9_79", "京东商城", "100万", "9", "超薄超轻", "屏幕闪烁")

insert into "笔记本型号平台售卖" ("型号id", "平台", "售卖量", "评分", "最好评价", "最差评价") values ("item_product_9_79", "苏宁易购", "10万", "9", "显卡超赞", "游戏卡死")

insert into "笔记本型号平台售卖" ("型号id", "平台", "售卖量", "评分", "最好评价", "最差评价") values ("item_product_9_77", "天猫商城", "10万", "9", "外观美", "开机即死")

insert into "笔记本型号平台售卖" ("型号id", "平台", "售卖量", "评分", "最好评价", "最差评价") values ("item_product_9_80", "苏宁易购", "10万", "1", "外观美", "屏幕闪烁")

