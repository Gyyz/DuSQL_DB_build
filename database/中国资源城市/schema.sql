PRAGMA foreign_keys = ON;

CREATE TABLE "城市" (
"词条id" int,
"名称" text,
"行政区划" text,
"所属省份" text,
"类型" text,
primary key ("词条id")
);

CREATE TABLE "资源" (
"名称" text,
"城市id" int,
"资源所占面积" int,
"储量" int,
"已开采量" int,
foreign key("城市id") references "城市"("词条id")
);

insert into "城市" ("词条id", "名称", "行政区划", "所属省份", "类型") values ("item_geography.2_7_71", "乌海市", "地级行政区", "河北", "成长型")

insert into "城市" ("词条id", "名称", "行政区划", "所属省份", "类型") values ("item_geography.2_7_72", "阜新市", "县级市", "辽宁", "成熟型")

insert into "城市" ("词条id", "名称", "行政区划", "所属省份", "类型") values ("item_geography.2_7_73", "抚顺市", "县", "吉林", "衰退型")

insert into "城市" ("词条id", "名称", "行政区划", "所属省份", "类型") values ("item_geography.2_7_74", "辽源市", "县", "黑龙江", "再生型")

insert into "城市" ("词条id", "名称", "行政区划", "所属省份", "类型") values ("item_geography.2_7_75", "白山市", "地级行政区", "陕西", "成长型")

insert into "资源" ("名称", "城市id", "资源所占面积", "储量", "已开采量") values ("阜新", "item_geography.2_7_71", "1320", "673", "213")

insert into "资源" ("名称", "城市id", "资源所占面积", "储量", "已开采量") values ("伊春", "item_geography.2_7_74", "2610", "546", "421")

insert into "资源" ("名称", "城市id", "资源所占面积", "储量", "已开采量") values ("辽源", "item_geography.2_7_73", "3070", "785", "231")

insert into "资源" ("名称", "城市id", "资源所占面积", "储量", "已开采量") values ("白山", "item_geography.2_7_73", "1400", "687", "123")

insert into "资源" ("名称", "城市id", "资源所占面积", "储量", "已开采量") values ("盘锦", "item_geography.2_7_71", "1670.8", "534", "135")

