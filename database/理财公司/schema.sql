PRAGMA foreign_keys = ON;

CREATE TABLE "理财公司" (
"词条id" int,
"公司名称" text,
"创立时间" time,
"官网" text,
"所属集团" text,
primary key ("词条id")
);

CREATE TABLE "银行" (
"词条id" int,
"名称" text,
"总部地点" text,
"所属城市" text,
"所属省份" text,
"成立时间" time,
"公司类型" text,
primary key ("词条id")
);

CREATE TABLE "理财公司合作银行" (
"公司id" int,
"银行id" int,
"合作时间" time,
"是否有电子银行" binary,
foreign key("银行id") references "银行"("词条id"),
foreign key("公司id") references "理财公司"("词条id")
);

CREATE TABLE "理财产品" (
"产品" text,
"公司id" int,
"支持银行id" int,
"年化收益率" int,
"期限" int,
"起投金额" int,
foreign key("支持银行id") references "银行"("词条id"),
foreign key("公司id") references "理财公司"("词条id")
);

insert into "理财公司" ("词条id", "公司名称", "创立时间", "官网", "所属集团") values ("item_enterprise_6_46", "度小满", "2012", "www.duxiaoman.com", "百度")

insert into "理财公司" ("词条id", "公司名称", "创立时间", "官网", "所属集团") values ("item_enterprise_6_47", "蚂蚁金服", "2018", " www.mayijinfu.com", "阿里巴巴")

insert into "理财公司" ("词条id", "公司名称", "创立时间", "官网", "所属集团") values ("item_enterprise_6_48", "京东白条", "2012", " www.jingdongbaitiao.com", "京东科技")

insert into "理财公司" ("词条id", "公司名称", "创立时间", "官网", "所属集团") values ("item_enterprise_6_49", "腾讯微众银行", "2012", " www.webank.com", "腾讯有限公司")

insert into "理财公司" ("词条id", "公司名称", "创立时间", "官网", "所属集团") values ("item_enterprise_6_50", "易信", "2018", " www.yixin.com", "易信集团")

insert into "银行" ("词条id", "名称", "总部地点", "所属城市", "所属省份", "成立时间", "公司类型") values ("item_enterprise_6_51", "中国工商银行", "北京西城区", "北京", "北京", "1990", "股份有限银行")

insert into "银行" ("词条id", "名称", "总部地点", "所属城市", "所属省份", "成立时间", "公司类型") values ("item_enterprise_6_52", "包商银行", "包头满都拉大街", "包头", "内蒙古", "2010年", "国有银行")

insert into "银行" ("词条id", "名称", "总部地点", "所属城市", "所属省份", "成立时间", "公司类型") values ("item_enterprise_6_53", "浦发银行", "上海浦东区西大街", "上海", "上海", "2010年", "股份有限银行")

insert into "银行" ("词条id", "名称", "总部地点", "所属城市", "所属省份", "成立时间", "公司类型") values ("item_enterprise_6_54", "武汉众邦银行", "武汉武昌区火车站前街", "武汉", "湖北", "1990", "股份有限银行")

insert into "银行" ("词条id", "名称", "总部地点", "所属城市", "所属省份", "成立时间", "公司类型") values ("item_enterprise_6_55", "哈尔滨银行", "哈尔滨南岗区西大直街", "宁夏", "黑龙江", "1990", "国有银行")

insert into "理财公司合作银行" ("公司id", "银行id", "合作时间", "是否有电子银行") values ("item_enterprise_6_46", "item_enterprise_6_51", "2015", "有")

insert into "理财公司合作银行" ("公司id", "银行id", "合作时间", "是否有电子银行") values ("item_enterprise_6_47", "item_enterprise_6_51", "2018", "没有")

insert into "理财公司合作银行" ("公司id", "银行id", "合作时间", "是否有电子银行") values ("item_enterprise_6_49", "item_enterprise_6_53", "2015", "没有")

insert into "理财公司合作银行" ("公司id", "银行id", "合作时间", "是否有电子银行") values ("item_enterprise_6_49", "item_enterprise_6_55", "2018", "没有")

insert into "理财公司合作银行" ("公司id", "银行id", "合作时间", "是否有电子银行") values ("item_enterprise_6_50", "item_enterprise_6_54", "2015", "有")

insert into "理财产品" ("产品", "公司id", "支持银行id", "年化收益率", "期限", "起投金额") values ("黄金看涨三层区间十二个月结构性存款", "item_enterprise_6_48", "item_enterprise_6_53", "3.3%", "35天", "1")

insert into "理财产品" ("产品", "公司id", "支持银行id", "年化收益率", "期限", "起投金额") values ("黄金三层12M存款", "item_enterprise_6_47", "item_enterprise_6_51", "4.7%", "60天", "1000")

insert into "理财产品" ("产品", "公司id", "支持银行id", "年化收益率", "期限", "起投金额") values ("中证500鲨鱼鳍", "item_enterprise_6_48", "item_enterprise_6_53", "4.7%", "90天", "1000")

insert into "理财产品" ("产品", "公司id", "支持银行id", "年化收益率", "期限", "起投金额") values ("沪深300鲨鱼鳍", "item_enterprise_6_48", "item_enterprise_6_52", "4.7%", "120天", "1000")

insert into "理财产品" ("产品", "公司id", "支持银行id", "年化收益率", "期限", "起投金额") values ("瑞源平衡12期", "item_enterprise_6_49", "item_enterprise_6_55", "4.7%", "180天", "1")

