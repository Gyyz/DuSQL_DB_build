PRAGMA foreign_keys = ON;

CREATE TABLE "城市" (
"词条id" int,
"名称" text,
"所属省份" text,
"餐饮收入" int,
"同比增长" int,
primary key ("词条id")
);

CREATE TABLE "餐饮公司" (
"词条id" int,
"名称" text,
"总部城市id" text,
"所属集团" text,
"上市股市" text,
"经营范围" text,
"经营年数" int,
primary key ("词条id"),
foreign key("总部城市id") references "城市"("词条id")
);

CREATE TABLE "餐饮公司城市连锁" (
"公司id" int,
"城市id" int,
"分店数量" int,
"占地面积" int,
"餐位数量" int,
"员工数量" int,
foreign key("公司id") references "餐饮公司"("词条id"),
foreign key("城市id") references "城市"("词条id")
);

CREATE TABLE "餐饮公司城市消费" (
"公司id" int,
"城市id" int,
"总消费额" int,
"人均消费额" int,
"人气" int,
"排名" int,
foreign key("城市id") references "城市"("词条id"),
foreign key("公司id") references "餐饮公司"("词条id")
);

insert into "城市" ("词条id", "名称", "所属省份", "餐饮收入", "同比增长") values ("item_enterprise_9_91", "青岛", "山东", "1020亿", "4.2%")

insert into "城市" ("词条id", "名称", "所属省份", "餐饮收入", "同比增长") values ("item_enterprise_9_92", "杭州", "浙江", "3995亿", "9.5%")

insert into "城市" ("词条id", "名称", "所属省份", "餐饮收入", "同比增长") values ("item_enterprise_9_93", "南昌", "江西", "1020亿", "9.5%")

insert into "城市" ("词条id", "名称", "所属省份", "餐饮收入", "同比增长") values ("item_enterprise_9_94", "武汉", "湖北", "1020亿", "9.5%")

insert into "城市" ("词条id", "名称", "所属省份", "餐饮收入", "同比增长") values ("item_enterprise_9_95", "成都", "四川", "3995亿", "4.2%")

insert into "餐饮公司" ("词条id", "名称", "总部城市id", "所属集团", "上市股市", "经营范围", "经营年数") values ("item_enterprise_9_96", "内蒙古小肥羊餐饮连锁公司", "item_enterprise_9_95", "百胜集团", "港股", "火锅", "20")

insert into "餐饮公司" ("词条id", "名称", "总部城市id", "所属集团", "上市股市", "经营范围", "经营年数") values ("item_enterprise_9_97", "金拱门(中国", "item_enterprise_9_94", "麦当劳", "美股", "西式快餐", "50年")

insert into "餐饮公司" ("词条id", "名称", "总部城市id", "所属集团", "上市股市", "经营范围", "经营年数") values ("item_enterprise_9_98", "内蒙古小肥羊餐饮连锁公司", "item_enterprise_9_91", "快乐峰集团", "A股", "中式快餐", "20")

insert into "餐饮公司" ("词条id", "名称", "总部城市id", "所属集团", "上市股市", "经营范围", "经营年数") values ("item_enterprise_9_99", "内蒙古小肥羊餐饮连锁公司", "item_enterprise_9_92", "大娘水饺餐饮集团", "A股", "中餐", "50年")

insert into "餐饮公司" ("词条id", "名称", "总部城市id", "所属集团", "上市股市", "经营范围", "经营年数") values ("item_enterprise_9_100", "内蒙古小肥羊餐饮连锁公司", "item_enterprise_9_92", "味千拉面", "港股", "火锅", "50年")

insert into "餐饮公司城市连锁" ("公司id", "城市id", "分店数量", "占地面积", "餐位数量", "员工数量") values ("item_enterprise_9_96", "item_enterprise_9_95", "5", "800", "400", "6")

insert into "餐饮公司城市连锁" ("公司id", "城市id", "分店数量", "占地面积", "餐位数量", "员工数量") values ("item_enterprise_9_97", "item_enterprise_9_95", "100", "56000平米", "24000", "5000")

insert into "餐饮公司城市连锁" ("公司id", "城市id", "分店数量", "占地面积", "餐位数量", "员工数量") values ("item_enterprise_9_97", "item_enterprise_9_93", "5", "56000平米", "24000", "5000")

insert into "餐饮公司城市连锁" ("公司id", "城市id", "分店数量", "占地面积", "餐位数量", "员工数量") values ("item_enterprise_9_97", "item_enterprise_9_93", "5", "800", "400", "5000")

insert into "餐饮公司城市连锁" ("公司id", "城市id", "分店数量", "占地面积", "餐位数量", "员工数量") values ("item_enterprise_9_96", "item_enterprise_9_92", "5", "800", "400", "6")

insert into "餐饮公司城市消费" ("公司id", "城市id", "总消费额", "人均消费额", "人气", "排名") values ("item_enterprise_9_97", "item_enterprise_9_92", "100亿", "1000", "2000", "1")

insert into "餐饮公司城市消费" ("公司id", "城市id", "总消费额", "人均消费额", "人气", "排名") values ("item_enterprise_9_96", "item_enterprise_9_95", "5000亿", "20000", "400000", "50")

insert into "餐饮公司城市消费" ("公司id", "城市id", "总消费额", "人均消费额", "人气", "排名") values ("item_enterprise_9_97", "item_enterprise_9_94", "5000亿", "1000", "2000", "1")

insert into "餐饮公司城市消费" ("公司id", "城市id", "总消费额", "人均消费额", "人气", "排名") values ("item_enterprise_9_97", "item_enterprise_9_94", "5000亿", "20000", "400000", "50")

insert into "餐饮公司城市消费" ("公司id", "城市id", "总消费额", "人均消费额", "人气", "排名") values ("item_enterprise_9_97", "item_enterprise_9_95", "5000亿", "20000", "400000", "50")

