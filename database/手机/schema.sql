PRAGMA foreign_keys = ON;

CREATE TABLE "公司" (
"词条id" int,
"名称" text,
"创始人" text,
"所属国家" text,
"年营业额" int,
primary key ("词条id")
);

CREATE TABLE "手机品牌" (
"词条id" int,
"名称" text,
"发布时间" time,
"研发公司id" int,
primary key ("词条id"),
foreign key("研发公司id") references "公司"("词条id")
);

CREATE TABLE "手机型号" (
"词条id" int,
"名称" text,
"主频尺寸" int,
"像素" int,
"内存容量" int,
"操作系统" text,
"解锁方式" text,
"售价" int,
"售出量" int,
"品牌id" int,
primary key ("词条id"),
foreign key("品牌id") references "手机品牌"("词条id")
);

CREATE TABLE "型号使用人群" (
"型号id" int,
"人群" text,
"使用占比" int,
foreign key("型号id") references "手机型号"("词条id")
);

insert into "公司" ("词条id", "名称", "创始人", "所属国家", "年营业额") values ("item_product_11_96", "微软公司", "比尔盖茨", "中国", "2500亿")

insert into "公司" ("词条id", "名称", "创始人", "所属国家", "年营业额") values ("item_product_11_97", "联想集团", "柳传志", "美国", "4000亿")

insert into "公司" ("词条id", "名称", "创始人", "所属国家", "年营业额") values ("item_product_11_98", "华为公司", "任正非", "日本", "2500亿")

insert into "公司" ("词条id", "名称", "创始人", "所属国家", "年营业额") values ("item_product_11_99", "苹果公司", "乔布斯", "韩国", "2500亿")

insert into "公司" ("词条id", "名称", "创始人", "所属国家", "年营业额") values ("item_product_11_100", "三星集团", "李秉喆", "英国", "2500亿")

insert into "手机品牌" ("词条id", "名称", "发布时间", "研发公司id") values ("item_product_11_101", "三星", "2015年9月11号", "item_product_11_98")

insert into "手机品牌" ("词条id", "名称", "发布时间", "研发公司id") values ("item_product_11_102", "华为", "2018年9月9号", "item_product_11_100")

insert into "手机品牌" ("词条id", "名称", "发布时间", "研发公司id") values ("item_product_11_103", "苹果", "2015年9月11号", "item_product_11_100")

insert into "手机品牌" ("词条id", "名称", "发布时间", "研发公司id") values ("item_product_11_104", "诺基亚", "2015年9月11号", "item_product_11_98")

insert into "手机品牌" ("词条id", "名称", "发布时间", "研发公司id") values ("item_product_11_105", "Oppo", "2015年9月11号", "item_product_11_96")

insert into "手机型号" ("词条id", "名称", "主频尺寸", "像素", "内存容量", "操作系统", "解锁方式", "售价", "售出量", "品牌id") values ("item_product_11_106", "诺基亚920", "4.5英寸", "100万", "32GB", "ios系统", "指纹识别", "1999", "10万", "item_product_11_105")

insert into "手机型号" ("词条id", "名称", "主频尺寸", "像素", "内存容量", "操作系统", "解锁方式", "售价", "售出量", "品牌id") values ("item_product_11_107", "三星GALAXY note2", "5.5英寸", "800万", "64GB", "安卓系统", "人脸识别", "8900", "100万", "item_product_11_101")

insert into "手机型号" ("词条id", "名称", "主频尺寸", "像素", "内存容量", "操作系统", "解锁方式", "售价", "售出量", "品牌id") values ("item_product_11_108", "iPhone11", "4.5英寸", "800万", "128GB", "Windows phone系统", "密码解锁", "8900", "10万", "item_product_11_102")

insert into "手机型号" ("词条id", "名称", "主频尺寸", "像素", "内存容量", "操作系统", "解锁方式", "售价", "售出量", "品牌id") values ("item_product_11_109", "华为Mate30", "5.5英寸", "100万", "521GB", "Windows phone系统", "人脸识别", "8900", "10万", "item_product_11_105")

insert into "手机型号" ("词条id", "名称", "主频尺寸", "像素", "内存容量", "操作系统", "解锁方式", "售价", "售出量", "品牌id") values ("item_product_11_110", "Oppo P20", "5.5英寸", "100万", "1T", "安卓系统", "人脸识别", "1999", "100万", "item_product_11_101")

insert into "型号使用人群" ("型号id", "人群", "使用占比") values ("item_product_11_108", "高收入", "10%")

insert into "型号使用人群" ("型号id", "人群", "使用占比") values ("item_product_11_108", "中等收入", "30%")

insert into "型号使用人群" ("型号id", "人群", "使用占比") values ("item_product_11_106", "低收入", "10%")

insert into "型号使用人群" ("型号id", "人群", "使用占比") values ("item_product_11_109", "学生", "30%")

insert into "型号使用人群" ("型号id", "人群", "使用占比") values ("item_product_11_106", "低收入", "10%")

