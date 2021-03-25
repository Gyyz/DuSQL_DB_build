PRAGMA foreign_keys = ON;

CREATE TABLE "中国电视剧奖" (
"词条id" int,
"名称" text,
"主办单位" text,
"创办时间" time,
primary key ("词条id")
);

CREATE TABLE "演职员" (
"词条id" int,
"姓名" text,
"出生地" text,
"出生日期" time,
"毕业院校" text,
"职业" text,
primary key ("词条id")
);

CREATE TABLE "电视剧" (
"词条id" int,
"名称" text,
"类型" text,
"首播时间" time,
"集数" int,
"豆瓣评分" int,
primary key ("词条id")
);

CREATE TABLE "历届颁奖晚会" (
"年份" time,
"届数" int,
"电视剧奖id" int,
"颁奖地点" text,
foreign key("电视剧奖id") references "中国电视剧奖"("词条id")
);

CREATE TABLE "历届获奖演职员名单" (
"年份" time,
"届数" int,
"电视剧奖id" int,
"具体奖项" text,
"获奖人id" int,
"来自电视剧id" int,
foreign key("电视剧奖id") references "中国电视剧奖"("词条id"),
foreign key("获奖人id") references "演职员"("词条id")
);

CREATE TABLE "历届获奖影视剧名单" (
"年份" time,
"届数" int,
"电视剧奖id" int,
"具体奖项" text,
"获奖电视剧id" int,
foreign key("获奖电视剧id") references "电视剧"("词条id"),
foreign key("电视剧奖id") references "中国电视剧奖"("词条id")
);

insert into "中国电视剧奖" ("词条id", "名称", "主办单位", "创办时间") values ("item_prize_6_51", "上海电视节白玉兰奖与中国电视剧飞天奖", "广播电影电视总局", "1986年")

insert into "中国电视剧奖" ("词条id", "名称", "主办单位", "创办时间") values ("item_prize_6_52", "中国电视金鹰奖", "国家新闻出版广电总局", "1981年")

insert into "中国电视剧奖" ("词条id", "名称", "主办单位", "创办时间") values ("item_prize_6_53", "上海电视节白玉兰奖与中国电视剧飞天奖", "中国文学艺术界联合会", "1983年")

insert into "中国电视剧奖" ("词条id", "名称", "主办单位", "创办时间") values ("item_prize_6_54", "上海电视节白玉兰奖与中国电视剧飞天奖", "国家新闻出版广电总局", "1986年")

insert into "中国电视剧奖" ("词条id", "名称", "主办单位", "创办时间") values ("item_prize_6_55", "中国电视金鹰奖", "国家新闻出版广电总局", "1981年")

insert into "演职员" ("词条id", "姓名", "出生地", "出生日期", "毕业院校", "职业") values ("item_prize_6_56", "张译", "黑龙江哈尔滨", "1978年2月17日", "北京电影学院", "演员")

insert into "演职员" ("词条id", "姓名", "出生地", "出生日期", "毕业院校", "职业") values ("item_prize_6_57", "李易峰", "四川成都", "1987年8月17日", "中国传媒大学", "编剧")

insert into "演职员" ("词条id", "姓名", "出生地", "出生日期", "毕业院校", "职业") values ("item_prize_6_58", "迪丽热巴", "新疆乌鲁木齐", "1992年2月4日", "中央戏剧学院", "导演")

insert into "演职员" ("词条id", "姓名", "出生地", "出生日期", "毕业院校", "职业") values ("item_prize_6_59", "丁柳元", "湖南长沙", "1972年5月17日", "上海戏剧学院", "编剧")

insert into "演职员" ("词条id", "姓名", "出生地", "出生日期", "毕业院校", "职业") values ("item_prize_6_60", "陈力", "河北石家庄", "1962年1月17日", "南京艺术学院", "演员")

insert into "电视剧" ("词条id", "名称", "类型", "首播时间", "集数", "豆瓣评分") values ("item_prize_6_61", "鸡毛飞上天", "商业", "2010年3月1日", "40", "3.2")

insert into "电视剧" ("词条id", "名称", "类型", "首播时间", "集数", "豆瓣评分") values ("item_prize_6_62", "白鹿原", "都市", "2017年3月3日", "55", "8.5")

insert into "电视剧" ("词条id", "名称", "类型", "首播时间", "集数", "豆瓣评分") values ("item_prize_6_63", "绝命后卫师", "年代", "2017年3月3日", "55", "8.5")

insert into "电视剧" ("词条id", "名称", "类型", "首播时间", "集数", "豆瓣评分") values ("item_prize_6_64", "换了人间", "战争", "2010年3月1日", "55", "3.2")

insert into "电视剧" ("词条id", "名称", "类型", "首播时间", "集数", "豆瓣评分") values ("item_prize_6_65", "情满四合院", "革命", "2010年3月1日", "40", "3.2")

insert into "历届颁奖晚会" ("年份", "届数", "电视剧奖id", "颁奖地点") values ("2019", "1", "item_prize_6_52", "上海")

insert into "历届颁奖晚会" ("年份", "届数", "电视剧奖id", "颁奖地点") values ("2018", "2", "item_prize_6_51", "长沙")

insert into "历届颁奖晚会" ("年份", "届数", "电视剧奖id", "颁奖地点") values ("2017", "3", "item_prize_6_51", "北京")

insert into "历届颁奖晚会" ("年份", "届数", "电视剧奖id", "颁奖地点") values ("2016", "4", "item_prize_6_52", "苏州")

insert into "历届颁奖晚会" ("年份", "届数", "电视剧奖id", "颁奖地点") values ("2014", "5", "item_prize_6_51", "武汉")

insert into "历届获奖演职员名单" ("年份", "届数", "电视剧奖id", "具体奖项", "获奖人id", "来自电视剧id") values ("2019", "1", "item_prize_6_51", "最佳导演", "item_prize_6_56", "item_prize_6_63")

insert into "历届获奖演职员名单" ("年份", "届数", "电视剧奖id", "具体奖项", "获奖人id", "来自电视剧id") values ("2018", "2", "item_prize_6_52", "最佳编剧", "item_prize_6_60", "item_prize_6_62")

insert into "历届获奖演职员名单" ("年份", "届数", "电视剧奖id", "具体奖项", "获奖人id", "来自电视剧id") values ("2017", "3", "item_prize_6_51", "最佳男主角", "item_prize_6_59", "item_prize_6_62")

insert into "历届获奖演职员名单" ("年份", "届数", "电视剧奖id", "具体奖项", "获奖人id", "来自电视剧id") values ("2016", "4", "item_prize_6_51", "最佳女主角", "item_prize_6_60", "item_prize_6_62")

insert into "历届获奖演职员名单" ("年份", "届数", "电视剧奖id", "具体奖项", "获奖人id", "来自电视剧id") values ("2014", "5", "item_prize_6_51", "最佳男配角", "item_prize_6_57", "item_prize_6_64")

insert into "历届获奖影视剧名单" ("年份", "届数", "电视剧奖id", "具体奖项", "获奖电视剧id") values ("2019", "1", "item_prize_6_52", "最佳电视剧", "item_prize_6_65")

insert into "历届获奖影视剧名单" ("年份", "届数", "电视剧奖id", "具体奖项", "获奖电视剧id") values ("2018", "2", "item_prize_6_51", "最佳纪录片", "item_prize_6_64")

insert into "历届获奖影视剧名单" ("年份", "届数", "电视剧奖id", "具体奖项", "获奖电视剧id") values ("2017", "3", "item_prize_6_51", "最佳海外剧", "item_prize_6_63")

insert into "历届获奖影视剧名单" ("年份", "届数", "电视剧奖id", "具体奖项", "获奖电视剧id") values ("2016", "4", "item_prize_6_51", "最佳动画片", "item_prize_6_62")

insert into "历届获奖影视剧名单" ("年份", "届数", "电视剧奖id", "具体奖项", "获奖电视剧id") values ("2014", "5", "item_prize_6_52", "最佳动画片", "item_prize_6_63")

