PRAGMA foreign_keys = ON;

CREATE TABLE "打车APP" (
"词条id" int,
"app名称" text,
"所属公司" text,
"上线时间" time,
"覆盖城市数" int,
"服务用户数量" int,
primary key ("词条id")
);

CREATE TABLE "打车方式" (
"词条id" int,
"名称" text,
"理念" text,
"每公里价格" int,
primary key ("词条id")
);

CREATE TABLE "各打车APP支持的方式" (
"appid" int,
"方式id" int,
"车数量" int,
"每日打车单数" int,
"每日营收" int,
"市场份额" int,
foreign key("方式id") references "打车方式"("词条id")
);

CREATE TABLE "打车软件开通城市" (
"appid" int,
"城市" text,
"开通时间" time,
"占所在城市份额" int
);

CREATE TABLE "软件对租车的支持" (
"appid" int,
"城市" text,
"是否支持租车" binary,
"是否支持异地还车" binary
);

insert into "打车APP" ("词条id", "app名称", "所属公司", "上线时间", "覆盖城市数", "服务用户数量") values ("item_software_4_36", "滴滴专车", "滴滴", "2014年", "100", "1000万")

insert into "打车APP" ("词条id", "app名称", "所属公司", "上线时间", "覆盖城市数", "服务用户数量") values ("item_software_4_37", "神州专车", "首汽", "2018年", "400", "3亿")

insert into "打车APP" ("词条id", "app名称", "所属公司", "上线时间", "覆盖城市数", "服务用户数量") values ("item_software_4_38", "易到用车", "一号专车", "2018年", "400", "1000万")

insert into "打车APP" ("词条id", "app名称", "所属公司", "上线时间", "覆盖城市数", "服务用户数量") values ("item_software_4_39", "嘀嗒打车", "优步", "2018年", "100", "1000万")

insert into "打车APP" ("词条id", "app名称", "所属公司", "上线时间", "覆盖城市数", "服务用户数量") values ("item_software_4_40", "一号专车", "易用车", "2018年", "400", "1000万")

insert into "打车方式" ("词条id", "名称", "理念", "每公里价格") values ("item_software_4_41", "顺风车", "共享出行", "8元")

insert into "打车方式" ("词条id", "名称", "理念", "每公里价格") values ("item_software_4_42", "拼车", "优惠出行", "12元")

insert into "打车方式" ("词条id", "名称", "理念", "每公里价格") values ("item_software_4_43", "快车", "方便出行", "15元")

insert into "打车方式" ("词条id", "名称", "理念", "每公里价格") values ("item_software_4_44", "专车", "中高端商务出行", "25元")

insert into "打车方式" ("词条id", "名称", "理念", "每公里价格") values ("item_software_4_45", "豪华车", "豪华舒适出行", "40元")

insert into "各打车APP支持的方式" ("appid", "方式id", "车数量", "每日打车单数", "每日营收", "市场份额") values ("", "item_software_4_43", "10000", "10000", "10万", "item_software_4_38")

insert into "各打车APP支持的方式" ("appid", "方式id", "车数量", "每日打车单数", "每日营收", "市场份额") values ("", "item_software_4_41", "100000", "100000", "100万", "item_software_4_40")

insert into "各打车APP支持的方式" ("appid", "方式id", "车数量", "每日打车单数", "每日营收", "市场份额") values ("", "item_software_4_44", "100000", "10000", "10万", "item_software_4_37")

insert into "各打车APP支持的方式" ("appid", "方式id", "车数量", "每日打车单数", "每日营收", "市场份额") values ("", "item_software_4_43", "10000", "10000", "10万", "item_software_4_36")

insert into "各打车APP支持的方式" ("appid", "方式id", "车数量", "每日打车单数", "每日营收", "市场份额") values ("", "item_software_4_45", "10000", "10000", "10万", "item_software_4_38")

insert into "打车软件开通城市" ("appid", "城市", "开通时间", "占所在城市份额") values ("", "北京", "2015年1月", "item_software_4_40")

insert into "打车软件开通城市" ("appid", "城市", "开通时间", "占所在城市份额") values ("", "上海", "2018年7月", "item_software_4_39")

insert into "打车软件开通城市" ("appid", "城市", "开通时间", "占所在城市份额") values ("", "杭州", "2015年1月", "item_software_4_38")

insert into "打车软件开通城市" ("appid", "城市", "开通时间", "占所在城市份额") values ("", "苏州", "2018年7月", "item_software_4_39")

insert into "打车软件开通城市" ("appid", "城市", "开通时间", "占所在城市份额") values ("", "大连", "2015年1月", "item_software_4_36")

insert into "软件对租车的支持" ("appid", "城市", "是否支持租车", "是否支持异地还车") values ("", "北京", "是", "item_software_4_36")

insert into "软件对租车的支持" ("appid", "城市", "是否支持租车", "是否支持异地还车") values ("", "上海", "否", "item_software_4_38")

insert into "软件对租车的支持" ("appid", "城市", "是否支持租车", "是否支持异地还车") values ("", "杭州", "是", "item_software_4_37")

insert into "软件对租车的支持" ("appid", "城市", "是否支持租车", "是否支持异地还车") values ("", "苏州", "否", "item_software_4_39")

insert into "软件对租车的支持" ("appid", "城市", "是否支持租车", "是否支持异地还车") values ("", "大连", "是", "item_software_4_39")

