PRAGMA foreign_keys = ON;

CREATE TABLE "综艺节目" (
"词条id" int,
"节目名称" text,
"系列名" text,
"导演" text,
"首播时间" time,
"播出频道" text,
"播出时间" time,
"期数" int,
"冠名商" text,
primary key ("词条id")
);

CREATE TABLE "明星" (
"词条id" int,
"姓名" text,
"民族" text,
"身高" int,
"体重" int,
"出生地" text,
"年龄" int,
"职业" text,
primary key ("词条id")
);

CREATE TABLE "收视率" (
"节目id" int,
"在线平台" text,
"播放数" int,
"收视率" int,
"收视份额" int,
foreign key("节目id") references "综艺节目"("词条id")
);

CREATE TABLE "接档节目" (
"节目id" int,
"接档节目id" int,
"被接档节目id" int,
primary key ("节目id"),
foreign key("被接档节目id") references "综艺节目"("词条id"),
foreign key("节目id") references "综艺节目"("词条id"),
foreign key("接档节目id") references "综艺节目"("词条id")
);

CREATE TABLE "综艺节目嘉宾" (
"明星id" int,
"节目id" int,
"身份" text,
"出场期数" int,
foreign key("明星id") references "明星"("词条id"),
foreign key("节目id") references "综艺节目"("词条id")
);

insert into "综艺节目" ("词条id", "节目名称", "系列名", "导演", "首播时间", "播出频道", "播出时间", "期数", "冠名商") values ("item_entertainment_13_146", "我就是演员2", "我就是演员", "徐晴", "2014年10月1日", "湖南卫视", "20:00", "10", "拼多多")

insert into "综艺节目" ("词条id", "节目名称", "系列名", "导演", "首播时间", "播出频道", "播出时间", "期数", "冠名商") values ("item_entertainment_13_147", "欢乐喜剧人3", "欢乐喜剧人", "施嘉宁", "2018年12月20日", "北京卫视", "21:00", "12期", "vivo")

insert into "综艺节目" ("词条id", "节目名称", "系列名", "导演", "首播时间", "播出频道", "播出时间", "期数", "冠名商") values ("item_entertainment_13_148", "声临其境2", "声临其境", "吴彤", "2018年12月20日", "浙江卫视", "22:00", "10", "oppo")

insert into "综艺节目" ("词条id", "节目名称", "系列名", "导演", "首播时间", "播出频道", "播出时间", "期数", "冠名商") values ("item_entertainment_13_149", "王牌对王牌4", "王牌对王牌", "王征宇", "2018年12月20日", "江苏卫视", "12:00", "12期", "安慕希")

insert into "综艺节目" ("词条id", "节目名称", "系列名", "导演", "首播时间", "播出频道", "播出时间", "期数", "冠名商") values ("item_entertainment_13_150", "向往的生活3", "向往的生活", "陈格洲", "2018年12月20日", "东方卫视", "14:00", "10", "豆本豆")

insert into "明星" ("词条id", "姓名", "民族", "身高", "体重", "出生地", "年龄", "职业") values ("item_entertainment_13_151", "李晨", "汉", "160", "50", "北京", "22", "演员")

insert into "明星" ("词条id", "姓名", "民族", "身高", "体重", "出生地", "年龄", "职业") values ("item_entertainment_13_152", "邓超", "维族", "170", "51", "上海", "45岁", "导演")

insert into "明星" ("词条id", "姓名", "民族", "身高", "体重", "出生地", "年龄", "职业") values ("item_entertainment_13_153", "王祖蓝", "维族", "165", "52", "天津", "45岁", "歌手")

insert into "明星" ("词条id", "姓名", "民族", "身高", "体重", "出生地", "年龄", "职业") values ("item_entertainment_13_154", "黄磊", "维族", "160", "50", "江苏苏州", "45岁", "主持人")

insert into "明星" ("词条id", "姓名", "民族", "身高", "体重", "出生地", "年龄", "职业") values ("item_entertainment_13_155", "杨幂", "维族", "160", "50", "湖北武汉", "45岁", "体育明星")

insert into "收视率" ("节目id", "在线平台", "播放数", "收视率", "收视份额") values ("item_entertainment_13_150", "爱奇艺", "10万", "0.01%", "1%")

insert into "收视率" ("节目id", "在线平台", "播放数", "收视率", "收视份额") values ("item_entertainment_13_149", "优酷", "100万", "0.75%", "5%")

insert into "收视率" ("节目id", "在线平台", "播放数", "收视率", "收视份额") values ("item_entertainment_13_150", "腾讯", "100万", "0.01%", "1%")

insert into "收视率" ("节目id", "在线平台", "播放数", "收视率", "收视份额") values ("item_entertainment_13_146", "芒果", "10万", "0.01%", "5%")

insert into "收视率" ("节目id", "在线平台", "播放数", "收视率", "收视份额") values ("item_entertainment_13_146", "爱奇艺", "100万", "0.01%", "5%")

insert into "接档节目" ("节目id", "接档节目id", "被接档节目id") values ("item_entertainment_13_147", "item_entertainment_13_150", "item_entertainment_13_149")

insert into "接档节目" ("节目id", "接档节目id", "被接档节目id") values ("item_entertainment_13_149", "item_entertainment_13_147", "item_entertainment_13_147")

insert into "接档节目" ("节目id", "接档节目id", "被接档节目id") values ("item_entertainment_13_150", "item_entertainment_13_147", "item_entertainment_13_148")

insert into "接档节目" ("节目id", "接档节目id", "被接档节目id") values ("item_entertainment_13_147", "item_entertainment_13_150", "item_entertainment_13_146")

insert into "接档节目" ("节目id", "接档节目id", "被接档节目id") values ("item_entertainment_13_150", "item_entertainment_13_150", "item_entertainment_13_146")

insert into "综艺节目嘉宾" ("明星id", "节目id", "身份", "出场期数") values ("item_entertainment_13_151", "item_entertainment_13_149", "主持人", "1")

insert into "综艺节目嘉宾" ("明星id", "节目id", "身份", "出场期数") values ("item_entertainment_13_155", "item_entertainment_13_148", "评委", "10期")

insert into "综艺节目嘉宾" ("明星id", "节目id", "身份", "出场期数") values ("item_entertainment_13_151", "item_entertainment_13_149", "常驻嘉宾", "1")

insert into "综艺节目嘉宾" ("明星id", "节目id", "身份", "出场期数") values ("item_entertainment_13_155", "item_entertainment_13_147", "参赛嘉宾", "1")

insert into "综艺节目嘉宾" ("明星id", "节目id", "身份", "出场期数") values ("item_entertainment_13_154", "item_entertainment_13_148", "常驻嘉宾", "1")

