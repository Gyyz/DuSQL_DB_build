PRAGMA foreign_keys = ON;

CREATE TABLE "民族" (
"词条id" int,
"名称" text,
"人口" int,
"语言" text,
"宗教信仰" text,
primary key ("词条id")
);

CREATE TABLE "民族城市" (
"民族id" int,
"城市名称" text,
"人口" int,
"比例" int,
foreign key("民族id") references "民族"("词条id")
);

CREATE TABLE "民俗节日" (
"节日" text,
"民族id" int,
"时间" time,
"纪念" text,
foreign key("民族id") references "民族"("词条id")
);

insert into "民族" ("词条id", "名称", "人口", "语言", "宗教信仰") values ("item_geography.2_14_126", "汉族", "13亿", "汉语", "祖先崇拜")

insert into "民族" ("词条id", "名称", "人口", "语言", "宗教信仰") values ("item_geography.2_14_127", "满族", "1041.0585万", "汉语", "儒")

insert into "民族" ("词条id", "名称", "人口", "语言", "宗教信仰") values ("item_geography.2_14_128", "蒙古族", "1000万", "蒙古语", "释")

insert into "民族" ("词条id", "名称", "人口", "语言", "宗教信仰") values ("item_geography.2_14_129", "回族", "1058万", "汉语", "萨满教")

insert into "民族" ("词条id", "名称", "人口", "语言", "宗教信仰") values ("item_geography.2_14_130", "藏族", "750万", "藏语", "佛教")

insert into "民族城市" ("民族id", "城市名称", "人口", "比例") values ("item_geography.2_14_129", "全国", "13亿", "98%")

insert into "民族城市" ("民族id", "城市名称", "人口", "比例") values ("item_geography.2_14_128", "辽宁省", "1041.0585万", "0.77%")

insert into "民族城市" ("民族id", "城市名称", "人口", "比例") values ("item_geography.2_14_127", "内蒙古", "1000万", "18.4%")

insert into "民族城市" ("民族id", "城市名称", "人口", "比例") values ("item_geography.2_14_130", "宁夏", "1058万", "18.9%")

insert into "民族城市" ("民族id", "城市名称", "人口", "比例") values ("item_geography.2_14_126", "拉萨", "750万", "14&")

insert into "民俗节日" ("节日", "民族id", "时间", "纪念") values ("端午节", "item_geography.2_14_127", "农历五月初五", "屈原")

insert into "民俗节日" ("节日", "民族id", "时间", "纪念") values ("清明节", "item_geography.2_14_130", "公历4月5日前后", "祖先")

insert into "民俗节日" ("节日", "民族id", "时间", "纪念") values ("元宵节", "item_geography.2_14_128", "农历正月十五", "佛教")

insert into "民俗节日" ("节日", "民族id", "时间", "纪念") values ("春节", "item_geography.2_14_126", "农历正月初一", "祭祀")

insert into "民俗节日" ("节日", "民族id", "时间", "纪念") values ("中秋节", "item_geography.2_14_128", "农历八月十五", "祭月")

