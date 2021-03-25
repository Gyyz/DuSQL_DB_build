PRAGMA foreign_keys = ON;

CREATE TABLE "河流" (
"词条id" int,
"名称" text,
"全长" int,
"流域面积" int,
"发源地" text,
"所属水系" text,
"所属国家" text,
"所属洲" text,
"流域国家数" int,
primary key ("词条id")
);

CREATE TABLE "城市" (
"词条id" int,
"名称" text,
"所属国家" text,
primary key ("词条id")
);

CREATE TABLE "河流流经的城市" (
"河流id" int,
"城市id" int,
foreign key("城市id") references "城市"("词条id"),
foreign key("河流id") references "河流"("词条id")
);

CREATE TABLE "河流支流" (
"河流id" int,
"所属河流id" int,
primary key ("河流id"),
foreign key("河流id") references "城市"("词条id"),
foreign key("所属河流id") references "河流"("词条id")
);

insert into "河流" ("词条id", "名称", "全长", "流域面积", "发源地", "所属水系", "所属国家", "所属洲", "流域国家数") values ("1", "尼罗河", "6670公里", "3254853平方千米", "非洲东北部", "注入", "埃及", "非洲", "5")

insert into "河流" ("词条id", "名称", "全长", "流域面积", "发源地", "所属水系", "所属国家", "所属洲", "流域国家数") values ("2", "亚马逊河", "6400千米", "705万平方千米", "安第斯山脉", "流程", "巴西", "南美洲", "10")

insert into "河流" ("词条id", "名称", "全长", "流域面积", "发源地", "所属水系", "所属国家", "所属洲", "流域国家数") values ("3", "长江", "6380千米", "180.7万平方千米", "唐古拉山脉", "流域", "中国", "亚洲", "5")

insert into "河流" ("词条id", "名称", "全长", "流域面积", "发源地", "所属水系", "所属国家", "所属洲", "流域国家数") values ("4", "密西西比河", "6020千米", "322万平方千米", "落基山脉", "支流", "美国", "美洲", "10")

insert into "河流" ("词条id", "名称", "全长", "流域面积", "发源地", "所属水系", "所属国家", "所属洲", "流域国家数") values ("5", "黄河", "5464千米", "75.24万平方千米", "巴颜喀拉山脉", "分布", "中国", "亚洲", "10")

insert into "城市" ("词条id", "名称", "所属国家") values ("item_geography.2_10_91", "巴黎", "法国")

insert into "城市" ("词条id", "名称", "所属国家") values ("item_geography.2_10_92", "洛杉矶", "美国")

insert into "城市" ("词条id", "名称", "所属国家") values ("item_geography.2_10_93", "东京", "日本")

insert into "城市" ("词条id", "名称", "所属国家") values ("item_geography.2_10_94", "北京", "中国")

insert into "城市" ("词条id", "名称", "所属国家") values ("item_geography.2_10_95", "安卡拉 ", "土耳其")

insert into "河流流经的城市" ("河流id", "城市id") values ("1", "item_geography.2_10_95")

insert into "河流流经的城市" ("河流id", "城市id") values ("2", "item_geography.2_10_92")

insert into "河流流经的城市" ("河流id", "城市id") values ("2", "item_geography.2_10_95")

insert into "河流流经的城市" ("河流id", "城市id") values ("4", "item_geography.2_10_91")

insert into "河流流经的城市" ("河流id", "城市id") values ("5", "item_geography.2_10_94")

insert into "河流支流" ("河流id", "所属河流id") values ("item_geography.2_10_91", "3")

insert into "河流支流" ("河流id", "所属河流id") values ("item_geography.2_10_92", "4")

insert into "河流支流" ("河流id", "所属河流id") values ("item_geography.2_10_93", "1")

insert into "河流支流" ("河流id", "所属河流id") values ("item_geography.2_10_94", "2")

insert into "河流支流" ("河流id", "所属河流id") values ("item_geography.2_10_95", "5")

