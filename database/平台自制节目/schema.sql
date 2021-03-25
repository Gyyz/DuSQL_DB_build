PRAGMA foreign_keys = ON;

CREATE TABLE "平台" (
"词条id" int,
"平台名称" text,
"年会费" int,
"季度会费" int,
"月会费" int,
"口碑" int,
primary key ("词条id")
);

CREATE TABLE "综艺节目" (
"词条id" int,
"综艺名称" text,
"制作公司" text,
"平台id" text,
"期数" int,
"首播时间" time,
"每周播出时间" text,
"播出状态" text,
primary key ("词条id"),
foreign key("平台id") references "平台"("词条id")
);

CREATE TABLE "艺人" (
"词条id" int,
"姓名" text,
"民族" text,
"经纪公司" text,
"职业" text,
primary key ("词条id")
);

CREATE TABLE "节目阵容" (
"艺人id" int,
"综艺节目id" int,
"身份" text,
"参加期数" int,
foreign key("艺人id") references "艺人"("词条id"),
foreign key("综艺节目id") references "综艺节目"("词条id")
);

insert into "平台" ("词条id", "平台名称", "年会费", "季度会费", "月会费", "口碑") values ("item_entertainment_11_116", "爱奇艺", "168", "50", "15", "6.5")

insert into "平台" ("词条id", "平台名称", "年会费", "季度会费", "月会费", "口碑") values ("item_entertainment_11_117", "腾讯", "198元", "60元", "20元", "9")

insert into "平台" ("词条id", "平台名称", "年会费", "季度会费", "月会费", "口碑") values ("item_entertainment_11_118", "优酷", "168", "50", "20元", "9")

insert into "平台" ("词条id", "平台名称", "年会费", "季度会费", "月会费", "口碑") values ("item_entertainment_11_119", "芒果", "168", "50", "20元", "6.5")

insert into "平台" ("词条id", "平台名称", "年会费", "季度会费", "月会费", "口碑") values ("item_entertainment_11_120", "芒果", "198元", "50", "15", "9")

insert into "综艺节目" ("词条id", "综艺名称", "制作公司", "平台id", "期数", "首播时间", "每周播出时间", "播出状态") values ("item_entertainment_11_121", "做家务的男人", "爱奇艺公司", "item_entertainment_11_117", "10", "2015年6月1日", "周五20:00", "正在播出")

insert into "综艺节目" ("词条id", "综艺名称", "制作公司", "平台id", "期数", "首播时间", "每周播出时间", "播出状态") values ("item_entertainment_11_122", "奇葩说第六季", "杭州队长文化", "item_entertainment_11_117", "12期", "2018年12月31日", "周五22:00", "播放完毕")

insert into "综艺节目" ("词条id", "综艺名称", "制作公司", "平台id", "期数", "首播时间", "每周播出时间", "播出状态") values ("item_entertainment_11_123", "创造101", "浙江蓝天下传媒", "item_entertainment_11_118", "12期", "2015年6月1日", "周四22:00", "未播")

insert into "综艺节目" ("词条id", "综艺名称", "制作公司", "平台id", "期数", "首播时间", "每周播出时间", "播出状态") values ("item_entertainment_11_124", "妻子的浪漫旅行", "腾讯视频公司", "item_entertainment_11_119", "10", "2015年6月1日", "周三22:00", "未播")

insert into "综艺节目" ("词条id", "综艺名称", "制作公司", "平台id", "期数", "首播时间", "每周播出时间", "播出状态") values ("item_entertainment_11_125", "我和我最爱的女人们", "阿里巴巴公司", "item_entertainment_11_116", "12期", "2015年6月1日", "周四12:00", "播放完毕")

insert into "艺人" ("词条id", "姓名", "民族", "经纪公司", "职业") values ("item_entertainment_11_126", "朱丹", "汉", "嘉行天下", "演员")

insert into "艺人" ("词条id", "姓名", "民族", "经纪公司", "职业") values ("item_entertainment_11_127", "陆大勋", "维族", "拾捌经纪文化有限公司", "导演")

insert into "艺人" ("词条id", "姓名", "民族", "经纪公司", "职业") values ("item_entertainment_11_128", "傅首尔", "维族", "喜天影视", "主持人")

insert into "艺人" ("词条id", "姓名", "民族", "经纪公司", "职业") values ("item_entertainment_11_129", "李诞", "汉", "英航娱乐", "歌手")

insert into "艺人" ("词条id", "姓名", "民族", "经纪公司", "职业") values ("item_entertainment_11_130", "袁弘", "汉", "华谊兄弟", "运动员")

insert into "节目阵容" ("艺人id", "综艺节目id", "身份", "参加期数") values ("item_entertainment_11_130", "item_entertainment_11_122", "主持人", "1")

insert into "节目阵容" ("艺人id", "综艺节目id", "身份", "参加期数") values ("item_entertainment_11_130", "item_entertainment_11_124", "评委", "12期")

insert into "节目阵容" ("艺人id", "综艺节目id", "身份", "参加期数") values ("item_entertainment_11_130", "item_entertainment_11_121", "常驻嘉宾", "1")

insert into "节目阵容" ("艺人id", "综艺节目id", "身份", "参加期数") values ("item_entertainment_11_128", "item_entertainment_11_121", "期嘉宾", "12期")

insert into "节目阵容" ("艺人id", "综艺节目id", "身份", "参加期数") values ("item_entertainment_11_130", "item_entertainment_11_122", "参赛选手", "1")

