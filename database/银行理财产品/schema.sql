PRAGMA foreign_keys = ON;

CREATE TABLE "银行" (
"词条id" int,
"名称" text,
"成立时间" time,
"公司类型" text,
"年营业额" int,
primary key ("词条id")
);

CREATE TABLE "银行转账手续费" (
"原银行id" int,
"转账银行id" int,
"同省手续费" int,
"跨省手续费" int,
"单笔最高转账金额" int,
foreign key("原银行id") references "银行"("词条id"),
foreign key("转账银行id") references "银行"("词条id")
);

CREATE TABLE "理财产品" (
"词条id" int,
"名称" text,
"所属公司" text,
"年化收益率" int,
"存储时间" int,
primary key ("词条id")
);

CREATE TABLE "理财产品与银行" (
"产品id" int,
"银行id" int,
"单笔最高限额" int,
"每日限转次数" int,
foreign key("产品id") references "理财产品"("词条id"),
foreign key("银行id") references "银行"("词条id")
);

insert into "银行" ("词条id", "名称", "成立时间", "公司类型", "年营业额") values ("item_mechanism_8_76", "中国工商银行", "1984-01-01", "中央企业", "120万亿")

insert into "银行" ("词条id", "名称", "成立时间", "公司类型", "年营业额") values ("item_mechanism_8_77", "中国建设银行", "1954-10-01", "中央企业", "220万亿")

insert into "银行" ("词条id", "名称", "成立时间", "公司类型", "年营业额") values ("item_mechanism_8_78", "中国农业银行", "1951-09-08", "中央企业", "250万亿")

insert into "银行" ("词条id", "名称", "成立时间", "公司类型", "年营业额") values ("item_mechanism_8_79", "招商银行", "1987-04-08", "股份制商业银行", "300万亿")

insert into "银行" ("词条id", "名称", "成立时间", "公司类型", "年营业额") values ("item_mechanism_8_80", "浦发银行", "1992-08-07", "股份制商业银行", "450万亿")

insert into "银行转账手续费" ("原银行id", "转账银行id", "同省手续费", "跨省手续费", "单笔最高转账金额") values ("item_mechanism_8_80", "item_mechanism_8_80", "0", "0.2%", "10万")

insert into "银行转账手续费" ("原银行id", "转账银行id", "同省手续费", "跨省手续费", "单笔最高转账金额") values ("item_mechanism_8_76", "item_mechanism_8_80", "0.02%", "0.8%", "15万")

insert into "银行转账手续费" ("原银行id", "转账银行id", "同省手续费", "跨省手续费", "单笔最高转账金额") values ("item_mechanism_8_78", "item_mechanism_8_80", "0.87%", "0.4%", "20万")

insert into "银行转账手续费" ("原银行id", "转账银行id", "同省手续费", "跨省手续费", "单笔最高转账金额") values ("item_mechanism_8_77", "item_mechanism_8_77", "0.92%", "0.5%", "50万")

insert into "银行转账手续费" ("原银行id", "转账银行id", "同省手续费", "跨省手续费", "单笔最高转账金额") values ("item_mechanism_8_77", "item_mechanism_8_77", "0.1%", " 1%", "100万")

insert into "理财产品" ("词条id", "名称", "所属公司", "年化收益率", "存储时间") values ("item_mechanism_8_81", "富多利", "度小满", "4.7%", "3个月")

insert into "理财产品" ("词条id", "名称", "所属公司", "年化收益率", "存储时间") values ("item_mechanism_8_82", "金城金惠存", "度小满", "4.3%", "1个月")

insert into "理财产品" ("词条id", "名称", "所属公司", "年化收益率", "存储时间") values ("item_mechanism_8_83", "华瑞双月享", "余额宝", "4.3%", "2个月")

insert into "理财产品" ("词条id", "名称", "所属公司", "年化收益率", "存储时间") values ("item_mechanism_8_84", "华瑞月月享", "京东白条", "4.25%", "1个月")

insert into "理财产品" ("词条id", "名称", "所属公司", "年化收益率", "存储时间") values ("item_mechanism_8_85", "月薪宝", "腾讯理财", "4.5%", "3个月")

insert into "理财产品与银行" ("产品id", "银行id", "单笔最高限额", "每日限转次数") values ("item_mechanism_8_81", "item_mechanism_8_80", "5000", "1")

insert into "理财产品与银行" ("产品id", "银行id", "单笔最高限额", "每日限转次数") values ("item_mechanism_8_82", "item_mechanism_8_76", "10000", "2")

insert into "理财产品与银行" ("产品id", "银行id", "单笔最高限额", "每日限转次数") values ("item_mechanism_8_85", "item_mechanism_8_78", "150000", "3")

insert into "理财产品与银行" ("产品id", "银行id", "单笔最高限额", "每日限转次数") values ("item_mechanism_8_84", "item_mechanism_8_79", "200000", "4")

insert into "理财产品与银行" ("产品id", "银行id", "单笔最高限额", "每日限转次数") values ("item_mechanism_8_83", "item_mechanism_8_79", "50000", "5")

