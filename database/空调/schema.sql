PRAGMA foreign_keys = ON;

CREATE TABLE "空调品牌" (
"词条id" int,
"名称" text,
"所属公司" text,
"国家" text,
"亚洲企业排名" int,
"中国上市公司排名" int,
primary key ("词条id")
);

CREATE TABLE "空调型号" (
"词条id" int,
"名称" text,
"毛重" int,
"频数类型" text,
"匹数" int,
"类别" text,
"用途" text,
"制冷量" int,
"制热量" int,
"定价" int,
"制冷剂" text,
"品牌id" int,
primary key ("词条id"),
foreign key("品牌id") references "空调品牌"("词条id")
);

CREATE TABLE "匹数对应面积" (
"匹数" int,
"最小面积" int,
"最大面积" int
);

CREATE TABLE "空调各季度售卖" (
"型号id" int,
"季度" text,
"售价" int,
"最高价格" int,
"最低价格" int,
"售卖量" int,
foreign key("型号id") references "空调型号"("词条id")
);

CREATE TABLE "空调各城市售卖" (
"城市" text,
"空调售卖量" int,
"空调日平均用时" int
);

insert into "空调品牌" ("词条id", "名称", "所属公司", "国家", "亚洲企业排名", "中国上市公司排名") values ("item_product_6_36", "格力", "珠海格力电器股份有限公司", "中国", "1", "1")

insert into "空调品牌" ("词条id", "名称", "所属公司", "国家", "亚洲企业排名", "中国上市公司排名") values ("item_product_6_37", "美的", "美的集团有限公司", "日本", "500", "500")

insert into "空调品牌" ("词条id", "名称", "所属公司", "国家", "亚洲企业排名", "中国上市公司排名") values ("item_product_6_38", "海尔", "海尔集团公司", "美国", "500", "1")

insert into "空调品牌" ("词条id", "名称", "所属公司", "国家", "亚洲企业排名", "中国上市公司排名") values ("item_product_6_39", "大金", "大金(中国", "加拿大", "1", "500")

insert into "空调品牌" ("词条id", "名称", "所属公司", "国家", "亚洲企业排名", "中国上市公司排名") values ("item_product_6_40", "志高", "美的集团有限公司", "德国", "1", "500")

insert into "空调型号" ("词条id", "名称", "毛重", "频数类型", "匹数", "类别", "用途", "制冷量", "制热量", "定价", "制冷剂", "品牌id") values ("item_product_6_41", "格力KFR-35GW", "11kg", "变频", "1匹", "壁挂式", "商用", "2300", "2300", "2300", "R22", "item_product_6_38")

insert into "空调型号" ("词条id", "名称", "毛重", "频数类型", "匹数", "类别", "用途", "制冷量", "制热量", "定价", "制冷剂", "品牌id") values ("item_product_6_42", "奥克斯KFR-35GW", "17kg", "定频", "1.5匹", "立式", "家用", "7200W", "7200W", "15600元", "R410a", "item_product_6_40")

insert into "空调型号" ("词条id", "名称", "毛重", "频数类型", "匹数", "类别", "用途", "制冷量", "制热量", "定价", "制冷剂", "品牌id") values ("item_product_6_43", "美的KFR-35GW", "17kg", "变频", "2匹", "嵌入式", "家用", "7200W", "2300", "2300", "R32", "item_product_6_38")

insert into "空调型号" ("词条id", "名称", "毛重", "频数类型", "匹数", "类别", "用途", "制冷量", "制热量", "定价", "制冷剂", "品牌id") values ("item_product_6_44", "格力GMV-H200WL", "17kg", "变频", "1匹", "移动", "家用", "7200W", "2300", "2300", "R32", "item_product_6_40")

insert into "空调型号" ("词条id", "名称", "毛重", "频数类型", "匹数", "类别", "用途", "制冷量", "制热量", "定价", "制冷剂", "品牌id") values ("item_product_6_45", "大金FNVQ205ABK", "11kg", "定频", "2匹", "中央", "家用", "2300", "2300", "2300", "R410a", "item_product_6_40")

insert into "匹数对应面积" ("匹数", "最小面积", "最大面积") values ("1匹", "10平方米", "15")

insert into "匹数对应面积" ("匹数", "最小面积", "最大面积") values ("1.5匹", "30平方米", "100平方米")

insert into "匹数对应面积" ("匹数", "最小面积", "最大面积") values ("2匹", "10平方米", "100平方米")

insert into "匹数对应面积" ("匹数", "最小面积", "最大面积") values (" 2.5匹", "30平方米", "100平方米")

insert into "匹数对应面积" ("匹数", "最小面积", "最大面积") values ("3匹", "30平方米", "100平方米")

insert into "空调各季度售卖" ("型号id", "季度", "售价", "最高价格", "最低价格", "售卖量") values ("item_product_6_43", "1", "3000", "500", "-500", "100~1000")

insert into "空调各季度售卖" ("型号id", "季度", "售价", "最高价格", "最低价格", "售卖量") values ("item_product_6_42", "2", "15000", "+500", "-500", " 100000~1000000")

insert into "空调各季度售卖" ("型号id", "季度", "售价", "最高价格", "最低价格", "售卖量") values ("item_product_6_41", "3", "3000", "+500", "-500", " 100~1000")

insert into "空调各季度售卖" ("型号id", "季度", "售价", "最高价格", "最低价格", "售卖量") values ("item_product_6_42", "4", "3000", "+500", "-500", "5000~50000")

insert into "空调各季度售卖" ("型号id", "季度", "售价", "最高价格", "最低价格", "售卖量") values ("item_product_6_41", "3", "3000", "500", "-500", " 100~1000")

insert into "空调各城市售卖" ("城市", "空调售卖量", "空调日平均用时") values ("齐齐哈尔", "10万", "0")

insert into "空调各城市售卖" ("城市", "空调售卖量", "空调日平均用时") values ("四平", "100万", "8小时")

insert into "空调各城市售卖" ("城市", "空调售卖量", "空调日平均用时") values ("天水", "10万", "8小时")

insert into "空调各城市售卖" ("城市", "空调售卖量", "空调日平均用时") values ("荆州", "100万", "8小时")

insert into "空调各城市售卖" ("城市", "空调售卖量", "空调日平均用时") values ("徐州", "10万", "8小时")

