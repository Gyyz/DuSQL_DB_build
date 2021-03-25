PRAGMA foreign_keys = ON;

CREATE TABLE "城市" (
"词条id" int,
"城市" text,
"所属省份" text,
"建交国家数量" int,
"建交城市数量" int,
"国外驻华大使馆数量" int,
"留学生数量" int,
"跨国公司数量" int,
primary key ("词条id")
);

CREATE TABLE "一带一路线路上的国家" (
"国家" text,
"线路" text
);

CREATE TABLE "一带一路的中国城市" (
"城市id" int,
"所属省" text,
"线路" text,
foreign key("城市id") references "城市"("词条id")
);

CREATE TABLE "对口帮扶城市" (
"贫困城市id" text,
"所属省" text,
"帮助城市id" text,
primary key ("贫困城市id"),
foreign key("贫困城市id") references "城市"("词条id"),
foreign key("帮助城市id") references "城市"("词条id")
);

insert into "城市" ("词条id", "城市", "所属省份", "建交国家数量", "建交城市数量", "国外驻华大使馆数量", "留学生数量", "跨国公司数量") values ("item_geostatistics_5_36", "北京", "北京", "10", "13", "0", "7000", "10")

insert into "城市" ("词条id", "城市", "所属省份", "建交国家数量", "建交城市数量", "国外驻华大使馆数量", "留学生数量", "跨国公司数量") values ("item_geostatistics_5_37", "上海", "上海", "72", "124", "137", "25000", "183")

insert into "城市" ("词条id", "城市", "所属省份", "建交国家数量", "建交城市数量", "国外驻华大使馆数量", "留学生数量", "跨国公司数量") values ("item_geostatistics_5_38", "深圳", "广东", "10", "124", "137", "25000", "183")

insert into "城市" ("词条id", "城市", "所属省份", "建交国家数量", "建交城市数量", "国外驻华大使馆数量", "留学生数量", "跨国公司数量") values ("item_geostatistics_5_39", "哈尔滨", "黑龙江", "72", "124", "137", "7000", "10")

insert into "城市" ("词条id", "城市", "所属省份", "建交国家数量", "建交城市数量", "国外驻华大使馆数量", "留学生数量", "跨国公司数量") values ("item_geostatistics_5_40", "乌鲁木齐", "新疆", "10", "13", "137", "25000", "183")

insert into "一带一路线路上的国家" ("国家", "线路") values ("中国", "北线A")

insert into "一带一路线路上的国家" ("国家", "线路") values ("日本", "北线B")

insert into "一带一路线路上的国家" ("国家", "线路") values ("韩国", "中线")

insert into "一带一路线路上的国家" ("国家", "线路") values ("蒙古", "南线")

insert into "一带一路线路上的国家" ("国家", "线路") values ("俄罗斯", "中心线")

insert into "一带一路的中国城市" ("城市id", "所属省", "线路") values ("item_geostatistics_5_36", "吉林", "北线A")

insert into "一带一路的中国城市" ("城市id", "所属省", "线路") values ("item_geostatistics_5_37", "吉林", "北线B")

insert into "一带一路的中国城市" ("城市id", "所属省", "线路") values ("item_geostatistics_5_38", "河南", "中线")

insert into "一带一路的中国城市" ("城市id", "所属省", "线路") values ("item_geostatistics_5_39", "山西", "南线")

insert into "一带一路的中国城市" ("城市id", "所属省", "线路") values ("item_geostatistics_5_36", "海南", "中心线")

insert into "对口帮扶城市" ("贫困城市id", "所属省", "帮助城市id") values ("item_geostatistics_5_36", "河北", "item_geostatistics_5_40")

insert into "对口帮扶城市" ("贫困城市id", "所属省", "帮助城市id") values ("item_geostatistics_5_36", "河北", "item_geostatistics_5_37")

insert into "对口帮扶城市" ("贫困城市id", "所属省", "帮助城市id") values ("item_geostatistics_5_37", "贵州", "item_geostatistics_5_37")

insert into "对口帮扶城市" ("贫困城市id", "所属省", "帮助城市id") values ("item_geostatistics_5_39", "贵州", "item_geostatistics_5_39")

insert into "对口帮扶城市" ("贫困城市id", "所属省", "帮助城市id") values ("item_geostatistics_5_39", "青海", "item_geostatistics_5_36")

