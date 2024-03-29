PRAGMA foreign_keys = ON;

CREATE TABLE "游戏公司" (
"词条id" int,
"名称" text,
"国家" text,
"公司性质" text,
"年收益" int,
"游戏数量" int,
primary key ("词条id")
);

CREATE TABLE "游戏" (
"词条id" int,
"名称" text,
"注册玩家数量" int,
"日在线玩家数量" int,
"游戏画面评分" int,
"游戏音乐评分" int,
"游戏性评分" int,
"游戏特色评分" int,
"相关服务评分" int,
primary key ("词条id")
);

CREATE TABLE "公司和游戏" (
"游戏id" int,
"公司id" int,
"发行形式" text,
"收益额" int,
"收益占公司比例" int,
foreign key("游戏id") references "游戏"("词条id"),
foreign key("公司id") references "游戏公司"("词条id")
);

insert into "游戏公司" ("词条id", "名称", "国家", "公司性质", "年收益", "游戏数量") values ("item_software_5_46", "动视暴雪", "美国", "游戏开发商", "65亿", "60")

insert into "游戏公司" ("词条id", "名称", "国家", "公司性质", "年收益", "游戏数量") values ("item_software_5_47", "微软游戏工作制", "日本", "游戏平台", "181亿美元", "100")

insert into "游戏公司" ("词条id", "名称", "国家", "公司性质", "年收益", "游戏数量") values ("item_software_5_48", "苹果", "中国", "游戏开发商", "181亿美元", "100")

insert into "游戏公司" ("词条id", "名称", "国家", "公司性质", "年收益", "游戏数量") values ("item_software_5_49", "索尼", "日本", "游戏开发商", "181亿美元", "100")

insert into "游戏公司" ("词条id", "名称", "国家", "公司性质", "年收益", "游戏数量") values ("item_software_5_50", "腾讯游戏", "中国", "游戏平台", "181亿美元", "100")

insert into "游戏" ("词条id", "名称", "注册玩家数量", "日在线玩家数量", "游戏画面评分", "游戏音乐评分", "游戏性评分", "游戏特色评分", "相关服务评分") values ("item_software_5_51", "堡垒之夜", "500万", "60万", "6.1", "6.1", "6.1", "6.1", "6.1")

insert into "游戏" ("词条id", "名称", "注册玩家数量", "日在线玩家数量", "游戏画面评分", "游戏音乐评分", "游戏性评分", "游戏特色评分", "相关服务评分") values ("item_software_5_52", "英雄联盟", "3亿", "830万", "9.5", "9.5", "9.5", "9.5", "9.5")

insert into "游戏" ("词条id", "名称", "注册玩家数量", "日在线玩家数量", "游戏画面评分", "游戏音乐评分", "游戏性评分", "游戏特色评分", "相关服务评分") values ("item_software_5_53", "绝地求生", "500万", "60万", "9.5", "9.5", "9.5", "6.1", "9.5")

insert into "游戏" ("词条id", "名称", "注册玩家数量", "日在线玩家数量", "游戏画面评分", "游戏音乐评分", "游戏性评分", "游戏特色评分", "相关服务评分") values ("item_software_5_54", "dota2", "500万", "60万", "9.5", "9.5", "9.5", "9.5", "6.1")

insert into "游戏" ("词条id", "名称", "注册玩家数量", "日在线玩家数量", "游戏画面评分", "游戏音乐评分", "游戏性评分", "游戏特色评分", "相关服务评分") values ("item_software_5_55", "魔兽世界", "3亿", "830万", "6.1", "6.1", "9.5", "6.1", "6.1")

insert into "公司和游戏" ("游戏id", "公司id", "发行形式", "收益额", "收益占公司比例") values ("item_software_5_54", "item_software_5_49", "开发", "1000万", "10")

insert into "公司和游戏" ("游戏id", "公司id", "发行形式", "收益额", "收益占公司比例") values ("item_software_5_55", "item_software_5_48", "平台", "1亿美元", "70%")

insert into "公司和游戏" ("游戏id", "公司id", "发行形式", "收益额", "收益占公司比例") values ("item_software_5_55", "item_software_5_50", "开发", "1000万", "70%")

insert into "公司和游戏" ("游戏id", "公司id", "发行形式", "收益额", "收益占公司比例") values ("item_software_5_55", "item_software_5_48", "平台", "1000万", "70%")

insert into "公司和游戏" ("游戏id", "公司id", "发行形式", "收益额", "收益占公司比例") values ("item_software_5_54", "item_software_5_46", "开发", "1亿美元", "10")

