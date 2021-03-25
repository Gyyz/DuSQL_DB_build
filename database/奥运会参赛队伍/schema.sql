PRAGMA foreign_keys = ON;

CREATE TABLE "国家" (
"词条id" int,
"名称" text,
"所属洲" text,
primary key ("词条id")
);

CREATE TABLE "夏季奥运会" (
"词条id" int,
"名称" text,
"举办国家id" int,
"举办城市" text,
"吉祥物" text,
"参赛国家数量" int,
"参赛运动员数量" int,
"大项项目数" int,
"小项项目数" int,
primary key ("词条id"),
foreign key("举办国家id") references "国家"("词条id")
);

CREATE TABLE "公司" (
"词条id" int,
"名称" text,
"国家id" int,
primary key ("词条id"),
foreign key("国家id") references "国家"("词条id")
);

CREATE TABLE "2008北京奥运会奖牌榜" (
"排名" int,
"国家id" int,
"金牌数" int,
"银牌数" int,
"铜牌数" int,
"奖牌总数" int,
primary key ("国家id"),
foreign key("国家id") references "国家"("词条id")
);

CREATE TABLE "奥运会赞助商" (
"奥运会id" int,
"赞助商id" int,
foreign key("奥运会id") references "夏季奥运会"("词条id"),
foreign key("赞助商id") references "公司"("词条id")
);

insert into "国家" ("词条id", "名称", "所属洲") values ("item_sports.2_4_21", "中国", "欧洲")

insert into "国家" ("词条id", "名称", "所属洲") values ("item_sports.2_4_22", "日本", "亚洲")

insert into "国家" ("词条id", "名称", "所属洲") values ("item_sports.2_4_23", "美国", "北美洲")

insert into "国家" ("词条id", "名称", "所属洲") values ("item_sports.2_4_24", "德国", "大洋洲")

insert into "国家" ("词条id", "名称", "所属洲") values ("item_sports.2_4_25", "希腊", "非洲")

insert into "夏季奥运会" ("词条id", "名称", "举办国家id", "举办城市", "吉祥物", "参赛国家数量", "参赛运动员数量", "大项项目数", "小项项目数") values ("item_sports.2_4_26", "2000年悉尼", "item_sports.2_4_24", "悉尼", "奥利", "13", "311", "9", "43")

insert into "夏季奥运会" ("词条id", "名称", "举办国家id", "举办城市", "吉祥物", "参赛国家数量", "参赛运动员数量", "大项项目数", "小项项目数") values ("item_sports.2_4_27", "2004年雅典", "item_sports.2_4_23", "北京", "米利", "30", "400", "11", "50")

insert into "夏季奥运会" ("词条id", "名称", "举办国家id", "举办城市", "吉祥物", "参赛国家数量", "参赛运动员数量", "大项项目数", "小项项目数") values ("item_sports.2_4_28", "2008年北京", "item_sports.2_4_21", "雅典", "贝贝", "40", "500", "15", "60")

insert into "夏季奥运会" ("词条id", "名称", "举办国家id", "举办城市", "吉祥物", "参赛国家数量", "参赛运动员数量", "大项项目数", "小项项目数") values ("item_sports.2_4_29", "2012年伦敦", "item_sports.2_4_21", "伦敦", "欢欢", "50", "6000", "16", "80")

insert into "夏季奥运会" ("词条id", "名称", "举办国家id", "举办城市", "吉祥物", "参赛国家数量", "参赛运动员数量", "大项项目数", "小项项目数") values ("item_sports.2_4_30", "2016年里约热内卢+奥运会", "item_sports.2_4_21", "里约热内卢", "晶晶", "205", "10303", "28", "306")

insert into "公司" ("词条id", "名称", "国家id") values ("item_sports.2_4_31", "BMW", "item_sports.2_4_21")

insert into "公司" ("词条id", "名称", "国家id") values ("item_sports.2_4_32", "BT", "item_sports.2_4_23")

insert into "公司" ("词条id", "名称", "国家id") values ("item_sports.2_4_33", "Acer", "item_sports.2_4_21")

insert into "公司" ("词条id", "名称", "国家id") values ("item_sports.2_4_34", "Adidas", "item_sports.2_4_23")

insert into "公司" ("词条id", "名称", "国家id") values ("item_sports.2_4_35", "British Airways", "item_sports.2_4_24")

insert into "2008北京奥运会奖牌榜" ("排名", "国家id", "金牌数", "银牌数", "铜牌数", "奖牌总数") values ("1", "item_sports.2_4_25", "51", "21", "28", "100")

insert into "2008北京奥运会奖牌榜" ("排名", "国家id", "金牌数", "银牌数", "铜牌数", "奖牌总数") values ("2", "item_sports.2_4_24", "36", "38", "36", "110")

insert into "2008北京奥运会奖牌榜" ("排名", "国家id", "金牌数", "银牌数", "铜牌数", "奖牌总数") values ("3", "item_sports.2_4_21", "23", "21", "28", "72")

insert into "2008北京奥运会奖牌榜" ("排名", "国家id", "金牌数", "银牌数", "铜牌数", "奖牌总数") values ("4", "item_sports.2_4_22", "19", "13", "15", "47")

insert into "2008北京奥运会奖牌榜" ("排名", "国家id", "金牌数", "银牌数", "铜牌数", "奖牌总数") values ("5", "item_sports.2_4_21", "16", "10", "15", "41")

insert into "奥运会赞助商" ("奥运会id", "赞助商id") values ("item_sports.2_4_28", "item_sports.2_4_35")

insert into "奥运会赞助商" ("奥运会id", "赞助商id") values ("item_sports.2_4_29", "item_sports.2_4_31")

insert into "奥运会赞助商" ("奥运会id", "赞助商id") values ("item_sports.2_4_28", "item_sports.2_4_35")

insert into "奥运会赞助商" ("奥运会id", "赞助商id") values ("item_sports.2_4_28", "item_sports.2_4_34")

insert into "奥运会赞助商" ("奥运会id", "赞助商id") values ("item_sports.2_4_30", "item_sports.2_4_34")

