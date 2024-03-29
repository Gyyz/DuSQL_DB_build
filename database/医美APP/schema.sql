PRAGMA foreign_keys = ON;

CREATE TABLE "医美APP" (
"词条id" int,
"名称" text,
"认知度排名" int,
"市场占有率" int,
"入驻的医疗美容机构数量" int,
primary key ("词条id")
);

CREATE TABLE "美容产品" (
"词条id" int,
"名称" text,
"国家" text,
"认知度" int,
primary key ("词条id")
);

CREATE TABLE "各国美容市场" (
"词条id" int,
"国家" text,
"美容渗透率" int,
"美容医生数量" int,
"美容产品数量" int,
"整容项目数" int,
primary key ("词条id")
);

CREATE TABLE "整容人员年龄" (
"国家id" int,
"性别" text,
"年龄段" text,
"美容渗透率" int,
"整容意向人群占比" int,
"整容人数" int,
"消费金额" int,
foreign key("国家id") references "各国美容市场"("词条id")
);

CREATE TABLE "各类美容形式分布" (
"年份" time,
"国家id" int,
"手术整容占比" int,
"手术需求增长率" int,
"微整形占比" int,
"微整形需求增长率" int,
foreign key("国家id") references "各国美容市场"("词条id")
);

CREATE TABLE "中国美容关注" (
"平台" text,
"发布文章数量" int,
"文章阅读人次" int,
"科普视频数" int,
"视频观看人次" int
);

insert into "医美APP" ("词条id", "名称", "认知度排名", "市场占有率", "入驻的医疗美容机构数量") values ("item_software_10_106", "新氧", "1", "10%", "800")

insert into "医美APP" ("词条id", "名称", "认知度排名", "市场占有率", "入驻的医疗美容机构数量") values ("item_software_10_107", "悦美", "600", "40%", "1500")

insert into "医美APP" ("词条id", "名称", "认知度排名", "市场占有率", "入驻的医疗美容机构数量") values ("item_software_10_108", "更美", "1", "10%", "1500")

insert into "医美APP" ("词条id", "名称", "认知度排名", "市场占有率", "入驻的医疗美容机构数量") values ("item_software_10_109", "美丽神器", "600", "40%", "800")

insert into "医美APP" ("词条id", "名称", "认知度排名", "市场占有率", "入驻的医疗美容机构数量") values ("item_software_10_110", "美呗", "600", "40%", "800")

insert into "美容产品" ("词条id", "名称", "国家", "认知度") values ("item_software_10_111", "乔雅登", "美国", "10%")

insert into "美容产品" ("词条id", "名称", "国家", "认知度") values ("item_software_10_112", "海薇", "韩国", "25%")

insert into "美容产品" ("词条id", "名称", "国家", "认知度") values ("item_software_10_113", "伊婉", "加拿大", "25%")

insert into "美容产品" ("词条id", "名称", "国家", "认知度") values ("item_software_10_114", "舒颜", "中国", "25%")

insert into "美容产品" ("词条id", "名称", "国家", "认知度") values ("item_software_10_115", "逸美", "日本", "10%")

insert into "各国美容市场" ("词条id", "国家", "美容渗透率", "美容医生数量", "美容产品数量", "整容项目数") values ("item_software_10_116", "美国", "1%", "3万", "5", "5")

insert into "各国美容市场" ("词条id", "国家", "美容渗透率", "美容医生数量", "美容产品数量", "整容项目数") values ("item_software_10_117", "巴西", "13%", "30万", "50", "30个")

insert into "各国美容市场" ("词条id", "国家", "美容渗透率", "美容医生数量", "美容产品数量", "整容项目数") values ("item_software_10_118", "韩国", "13%", "3万", "50", "30个")

insert into "各国美容市场" ("词条id", "国家", "美容渗透率", "美容医生数量", "美容产品数量", "整容项目数") values ("item_software_10_119", "中国", "13%", "3万", "5", "5")

insert into "各国美容市场" ("词条id", "国家", "美容渗透率", "美容医生数量", "美容产品数量", "整容项目数") values ("item_software_10_120", "印度", "1%", "3万", "50", "30个")

insert into "整容人员年龄" ("国家id", "性别", "年龄段", "美容渗透率", "整容意向人群占比", "整容人数", "消费金额") values ("item_software_10_119", "男", "60后", "0.2%", "10%", "50万", "1000万")

insert into "整容人员年龄" ("国家id", "性别", "年龄段", "美容渗透率", "整容意向人群占比", "整容人数", "消费金额") values ("item_software_10_118", "女", "70后", "8%", "50%", "1000万", "10亿元")

insert into "整容人员年龄" ("国家id", "性别", "年龄段", "美容渗透率", "整容意向人群占比", "整容人数", "消费金额") values ("item_software_10_120", "女", "80后", "0.2%", "50%", "1000万", "10亿元")

insert into "整容人员年龄" ("国家id", "性别", "年龄段", "美容渗透率", "整容意向人群占比", "整容人数", "消费金额") values ("item_software_10_120", "女", "85后", "0.2%", "10%", "50万", "10亿元")

insert into "整容人员年龄" ("国家id", "性别", "年龄段", "美容渗透率", "整容意向人群占比", "整容人数", "消费金额") values ("item_software_10_118", "男", "90后", "8%", "50%", "50万", "10亿元")

insert into "各类美容形式分布" ("年份", "国家id", "手术整容占比", "手术需求增长率", "微整形占比", "微整形需求增长率") values ("2015", "item_software_10_118", "20%", "10%", "30%", "100%")

insert into "各类美容形式分布" ("年份", "国家id", "手术整容占比", "手术需求增长率", "微整形占比", "微整形需求增长率") values ("2019年", "item_software_10_118", "70%", "30%", "80%", "500%")

insert into "各类美容形式分布" ("年份", "国家id", "手术整容占比", "手术需求增长率", "微整形占比", "微整形需求增长率") values ("2015", "item_software_10_120", "20%", "10%", "30%", "500%")

insert into "各类美容形式分布" ("年份", "国家id", "手术整容占比", "手术需求增长率", "微整形占比", "微整形需求增长率") values ("2019年", "item_software_10_120", "70%", "30%", "80%", "100%")

insert into "各类美容形式分布" ("年份", "国家id", "手术整容占比", "手术需求增长率", "微整形占比", "微整形需求增长率") values ("2019年", "item_software_10_118", "20%", "10%", "80%", "100%")

insert into "中国美容关注" ("平台", "发布文章数量", "文章阅读人次", "科普视频数", "视频观看人次") values ("新浪微整形频道", "3000", "5亿", "40场", "1000万")

insert into "中国美容关注" ("平台", "发布文章数量", "文章阅读人次", "科普视频数", "视频观看人次") values ("搜狐微整形频道", "8000篇", "8亿", "80场", "5000万")

insert into "中国美容关注" ("平台", "发布文章数量", "文章阅读人次", "科普视频数", "视频观看人次") values ("网易微整形频道", "3000", "5亿", "40场", "1000万")

insert into "中国美容关注" ("平台", "发布文章数量", "文章阅读人次", "科普视频数", "视频观看人次") values ("医美微整形公众号", "8000篇", "5亿", "40场", "5000万")

insert into "中国美容关注" ("平台", "发布文章数量", "文章阅读人次", "科普视频数", "视频观看人次") values ("更美微整形公众号", "3000", "8亿", "80场", "1000万")

