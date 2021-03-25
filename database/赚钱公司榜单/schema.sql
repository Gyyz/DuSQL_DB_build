PRAGMA foreign_keys = ON;

CREATE TABLE "国家" (
"词条id" int,
"名称" text,
"所属洲" text,
"注册公司数量" int,
"上市公司数量" int,
primary key ("词条id")
);

CREATE TABLE "世界最赚钱公司" (
"词条id" int,
"名称" text,
"所属国家id" int,
"年利润" int,
"世界排名" int,
primary key ("词条id"),
foreign key("所属国家id") references "国家"("词条id")
);

CREATE TABLE "中国最赚钱公司" (
"词条id" int,
"名称" text,
"位于城市" text,
"所属省份" text,
"年营业额" int,
"国内排名" int,
"世界排名" int,
primary key ("词条id")
);

insert into "国家" ("词条id", "名称", "所属洲", "注册公司数量", "上市公司数量") values ("item_enterprise_18_176", "美国", "北美洲", "5000000", "1百万")

insert into "国家" ("词条id", "名称", "所属洲", "注册公司数量", "上市公司数量") values ("item_enterprise_18_177", "中国", "亚洲", "1亿", "8千万")

insert into "国家" ("词条id", "名称", "所属洲", "注册公司数量", "上市公司数量") values ("item_enterprise_18_178", "韩国", "非洲", "1亿", "8千万")

insert into "国家" ("词条id", "名称", "所属洲", "注册公司数量", "上市公司数量") values ("item_enterprise_18_179", "日本", "欧洲", "1亿", "1百万")

insert into "国家" ("词条id", "名称", "所属洲", "注册公司数量", "上市公司数量") values ("item_enterprise_18_180", "沙特阿拉伯", "北美洲", "1亿", "8千万")

insert into "世界最赚钱公司" ("词条id", "名称", "所属国家id", "年利润", "世界排名") values ("item_enterprise_18_181", "沙特阿美", "item_enterprise_18_178", "160亿", "1")

insert into "世界最赚钱公司" ("词条id", "名称", "所属国家id", "年利润", "世界排名") values ("item_enterprise_18_182", "苹果", "item_enterprise_18_179", "1200亿", "20")

insert into "世界最赚钱公司" ("词条id", "名称", "所属国家id", "年利润", "世界排名") values ("item_enterprise_18_183", "中国工商银行", "item_enterprise_18_178", "1200亿", "1")

insert into "世界最赚钱公司" ("词条id", "名称", "所属国家id", "年利润", "世界排名") values ("item_enterprise_18_184", "三星电子", "item_enterprise_18_178", "1200亿", "20")

insert into "世界最赚钱公司" ("词条id", "名称", "所属国家id", "年利润", "世界排名") values ("item_enterprise_18_185", "摩根大通", "item_enterprise_18_179", "160亿", "1")

insert into "中国最赚钱公司" ("词条id", "名称", "位于城市", "所属省份", "年营业额", "国内排名", "世界排名") values ("item_enterprise_18_186", "中国工商银行", "北京", "北京", "167亿", "1", "3")

insert into "中国最赚钱公司" ("词条id", "名称", "位于城市", "所属省份", "年营业额", "国内排名", "世界排名") values ("item_enterprise_18_187", "中国建设银行", "上海", "上海", "450亿", "5", "20")

insert into "中国最赚钱公司" ("词条id", "名称", "位于城市", "所属省份", "年营业额", "国内排名", "世界排名") values ("item_enterprise_18_188", "中国农业银行", "广州", "广东", "167亿", "5", "20")

insert into "中国最赚钱公司" ("词条id", "名称", "位于城市", "所属省份", "年营业额", "国内排名", "世界排名") values ("item_enterprise_18_189", "中国银行", "上海", "广东", "167亿", "5", "20")

insert into "中国最赚钱公司" ("词条id", "名称", "位于城市", "所属省份", "年营业额", "国内排名", "世界排名") values ("item_enterprise_18_190", "国家开发银行", "上海", "广东", "450亿", "1", "20")

