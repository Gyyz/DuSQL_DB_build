PRAGMA foreign_keys = ON;

CREATE TABLE "峰会" (
"词条id" int,
"名称" text,
"主办单位" text,
"举办时间" time,
"历时天数" int,
"举办地点" text,
"分论坛数量" int,
"门票价格" int,
"门票数量" int,
"报名人数" int,
"直播观看人数" int,
primary key ("词条id")
);

CREATE TABLE "嘉宾" (
"词条id" int,
"姓名" text,
"任职单位" text,
"职位" text,
primary key ("词条id")
);

CREATE TABLE "峰会嘉宾" (
"嘉宾id" int,
"峰会id" int,
"演讲主题" text,
"论坛" text,
"开始时间" time,
"演讲时长" int,
foreign key("嘉宾id") references "嘉宾"("词条id"),
foreign key("峰会id") references "峰会"("词条id")
);

CREATE TABLE "峰会赞助公司" (
"峰会id" int,
"公司" text,
"赞助级别" text,
foreign key("峰会id") references "峰会"("词条id")
);

insert into "峰会" ("词条id", "名称", "主办单位", "举办时间", "历时天数", "举办地点", "分论坛数量", "门票价格", "门票数量", "报名人数", "直播观看人数") values ("item_activity_8_61", "搜狐科技AI峰会", "中文信息学会", "2019年11月10日", "12天", "国家会议中心", "48个", "1200元", "1000", "1100", "20000")

insert into "峰会" ("词条id", "名称", "主办单位", "举办时间", "历时天数", "举办地点", "分论坛数量", "门票价格", "门票数量", "报名人数", "直播观看人数") values ("item_activity_8_62", "中国人工智能峰会", "中国信息通信研究院", "2018年9月6日", "20", "南京国际博览会议中心", "20个", "1800元", "2000", "2200", "100000")

insert into "峰会" ("词条id", "名称", "主办单位", "举办时间", "历时天数", "举办地点", "分论坛数量", "门票价格", "门票数量", "报名人数", "直播观看人数") values ("item_activity_8_63", "人工智能技术峰会", "搜狐公司", "2019年6月28日", "12天", "深圳会议中心", "20个", "1800元", "2000", "1100", "100000")

insert into "峰会" ("词条id", "名称", "主办单位", "举办时间", "历时天数", "举办地点", "分论坛数量", "门票价格", "门票数量", "报名人数", "直播观看人数") values ("item_activity_8_64", "世界人工智能大会", "深圳市人工智能行业协会", "2019年8月19日", "20", "上海世博中心", "20个", "1200元", "1000", "1100", "100000")

insert into "峰会" ("词条id", "名称", "主办单位", "举办时间", "历时天数", "举办地点", "分论坛数量", "门票价格", "门票数量", "报名人数", "直播观看人数") values ("item_activity_8_65", "数据智能技术峰会", "京东公司", "2019年11月25日", "12天", "北京会议中心", "20个", "1200元", "2000", "2200", "100000")

insert into "嘉宾" ("词条id", "姓名", "任职单位", "职位") values ("item_activity_8_66", "王小川", "搜狗公司", "CEO")

insert into "嘉宾" ("词条id", "姓名", "任职单位", "职位") values ("item_activity_8_67", "张代君", "三星电子中国研究院", "院长")

insert into "嘉宾" ("词条id", "姓名", "任职单位", "职位") values ("item_activity_8_68", "胡维琦", "华为云中国区", "副总裁")

insert into "嘉宾" ("词条id", "姓名", "任职单位", "职位") values ("item_activity_8_69", "孟醒", "滴滴自动驾驶公司", "COO")

insert into "嘉宾" ("词条id", "姓名", "任职单位", "职位") values ("item_activity_8_70", "丁险峰", "阿里云", "首席智联网科学家")

insert into "峰会嘉宾" ("嘉宾id", "峰会id", "演讲主题", "论坛", "开始时间", "演讲时长") values ("item_activity_8_67", "item_activity_8_61", "数据智能重构零售行业", "智能生活", "上午9:00", "15")

insert into "峰会嘉宾" ("嘉宾id", "峰会id", "演讲主题", "论坛", "开始时间", "演讲时长") values ("item_activity_8_69", "item_activity_8_63", "智能评阅核心技术及应用简介", "AI的开源与开放", "上午9:30", "20")

insert into "峰会嘉宾" ("嘉宾id", "峰会id", "演讲主题", "论坛", "开始时间", "演讲时长") values ("item_activity_8_70", "item_activity_8_64", "AI在智慧城市建设中的应用", "自然语言处理", "上午10:00", "25")

insert into "峰会嘉宾" ("嘉宾id", "峰会id", "演讲主题", "论坛", "开始时间", "演讲时长") values ("item_activity_8_69", "item_activity_8_63", "AI在教育领域的应用蝶变", "图像与视频技术", "下午1:30", "30")

insert into "峰会嘉宾" ("嘉宾id", "峰会id", "演讲主题", "论坛", "开始时间", "演讲时长") values ("item_activity_8_68", "item_activity_8_65", "自动驾驶的商业化落地思考", "AI toB应用场景", "下午2:00", "35")

insert into "峰会赞助公司" ("峰会id", "公司", "赞助级别") values ("item_activity_8_65", "微软集团", "钻石级")

insert into "峰会赞助公司" ("峰会id", "公司", "赞助级别") values ("item_activity_8_61", "谷歌公司", "铂金级")

insert into "峰会赞助公司" ("峰会id", "公司", "赞助级别") values ("item_activity_8_61", "亚马逊公司", "金牌")

insert into "峰会赞助公司" ("峰会id", "公司", "赞助级别") values ("item_activity_8_61", "腾讯公司", "银牌")

insert into "峰会赞助公司" ("峰会id", "公司", "赞助级别") values ("item_activity_8_62", "百度公司", "铜牌")

