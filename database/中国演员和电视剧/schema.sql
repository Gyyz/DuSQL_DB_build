PRAGMA foreign_keys = ON;

CREATE TABLE "演员" (
"词条id" int,
"姓名" text,
"民族" text,
"星座" text,
"血型" text,
"身高" int,
"体重" int,
"出生地" text,
"出生日期" time,
"毕业院校" text,
primary key ("词条id")
);

CREATE TABLE "导演" (
"词条id" int,
"姓名" text,
"出生地" text,
"出生日期" time,
"毕业院校" text,
primary key ("词条id")
);

CREATE TABLE "角色" (
"词条id" int,
"姓名" text,
"饰演演员id" int,
"配音演员id" int,
"出场作品" text,
primary key ("词条id"),
foreign key("饰演演员id") references "演员"("词条id"),
foreign key("配音演员id") references "演员"("词条id")
);

CREATE TABLE "电视剧" (
"词条id" int,
"剧名" text,
"导演" text,
"编剧" text,
"制片人" text,
"集数" int,
"类型" text,
primary key ("词条id")
);

CREATE TABLE "演员及导演作品" (
"演员id" int,
"导演id" int,
"合作作品id" int,
"作品出品时间" time,
foreign key("演员id") references "演员"("词条id"),
foreign key("合作作品id") references "电视剧"("词条id"),
foreign key("导演id") references "导演"("词条id")
);

CREATE TABLE "演员与导演的合作" (
"演员id" int,
"导演id" int,
"合作次数" int,
foreign key("导演id") references "导演"("词条id"),
foreign key("演员id") references "演员"("词条id")
);

CREATE TABLE "演员的作品" (
"演员id" int,
"作品id" int,
"角色类型" text,
foreign key("作品id") references "电视剧"("词条id"),
foreign key("演员id") references "演员"("词条id")
);

insert into "演员" ("词条id", "姓名", "民族", "星座", "血型", "身高", "体重", "出生地", "出生日期", "毕业院校") values ("item_entertainment_21_246", "迪丽热巴", "维族", "金牛座", "A型", "165厘米", "45千克", "新疆乌鲁木齐", "1983年5月21日", "北京电影学院")

insert into "演员" ("词条id", "姓名", "民族", "星座", "血型", "身高", "体重", "出生地", "出生日期", "毕业院校") values ("item_entertainment_21_247", "佟丽娅", "锡伯族", "狮子座", "B型", "185厘米", "70千克", "北京", "1993年2月6日", "中国传媒大学")

insert into "演员" ("词条id", "姓名", "民族", "星座", "血型", "身高", "体重", "出生地", "出生日期", "毕业院校") values ("item_entertainment_21_248", "关晓彤", "满族", "处女座", "AB型", "185厘米", "45千克", "上海", "1993年2月6日", "中央戏剧学院")

insert into "演员" ("词条id", "姓名", "民族", "星座", "血型", "身高", "体重", "出生地", "出生日期", "毕业院校") values ("item_entertainment_21_249", "韩庚", "蒙古族", "天蝎座", "O型", "165厘米", "45千克", "黑龙江齐齐哈尔", "1993年2月6日", "上海戏剧学院")

insert into "演员" ("词条id", "姓名", "民族", "星座", "血型", "身高", "体重", "出生地", "出生日期", "毕业院校") values ("item_entertainment_21_250", "王丽坤", "汉族", "双子座", "O型", "165厘米", "70千克", "内蒙古赤峰", "1993年2月6日", "南京艺术学院")

insert into "导演" ("词条id", "姓名", "出生地", "出生日期", "毕业院校") values ("item_entertainment_21_251", "张黎", "北京", "1950年7月10日", "北京电影学院")

insert into "导演" ("词条id", "姓名", "出生地", "出生日期", "毕业院校") values ("item_entertainment_21_252", "张艺谋", "上海", "1965年6月5日", "中央戏剧学院")

insert into "导演" ("词条id", "姓名", "出生地", "出生日期", "毕业院校") values ("item_entertainment_21_253", "陈凯歌", "浙江省杭州市", "1965年6月5日", "上海戏剧学院")

insert into "导演" ("词条id", "姓名", "出生地", "出生日期", "毕业院校") values ("item_entertainment_21_254", "王家卫", "江苏省吴江市", "1965年6月5日", "上海戏剧学院")

insert into "导演" ("词条id", "姓名", "出生地", "出生日期", "毕业院校") values ("item_entertainment_21_255", "冯小刚", "四川省成都市", "1965年6月5日", "上海戏剧学院")

insert into "角色" ("词条id", "姓名", "饰演演员id", "配音演员id", "出场作品") values ("item_entertainment_21_256", "刘楚玉", "item_entertainment_21_249", "item_entertainment_21_248", "凤求凰")

insert into "角色" ("词条id", "姓名", "饰演演员id", "配音演员id", "出场作品") values ("item_entertainment_21_257", "容止", "item_entertainment_21_250", "item_entertainment_21_247", "凤求凰")

insert into "角色" ("词条id", "姓名", "饰演演员id", "配音演员id", "出场作品") values ("item_entertainment_21_258", "甄嬛", "item_entertainment_21_250", "item_entertainment_21_247", "甄嬛传")

insert into "角色" ("词条id", "姓名", "饰演演员id", "配音演员id", "出场作品") values ("item_entertainment_21_259", "乌拉那拉宜修", "item_entertainment_21_246", "item_entertainment_21_248", "甄嬛传")

insert into "角色" ("词条id", "姓名", "饰演演员id", "配音演员id", "出场作品") values ("item_entertainment_21_260", "苏培盛", "item_entertainment_21_247", "item_entertainment_21_246", "甄嬛传")

insert into "电视剧" ("词条id", "剧名", "导演", "编剧", "制片人", "集数", "类型") values ("item_entertainment_21_261", "甄嬛传", "郑晓龙", "流潋紫", "曹平", "76集", "宫廷")

insert into "电视剧" ("词条id", "剧名", "导演", "编剧", "制片人", "集数", "类型") values ("item_entertainment_21_262", "凤囚凰", "李慧珠", "周末", "罗茹嘉", "54集", "古装")

insert into "电视剧" ("词条id", "剧名", "导演", "编剧", "制片人", "集数", "类型") values ("item_entertainment_21_263", "甜蜜暴击", "柯翰辰", "如萍", "叶昭君", "38集", "校园励志")

insert into "电视剧" ("词条id", "剧名", "导演", "编剧", "制片人", "集数", "类型") values ("item_entertainment_21_264", "都挺好", "简川訸", "阿耐", "侯鸿亮", "46集", "都市情感")

insert into "电视剧" ("词条id", "剧名", "导演", "编剧", "制片人", "集数", "类型") values ("item_entertainment_21_265", "庆余年", "孙皓", "王倦", "陈英杰", "46集", "古装")

insert into "演员及导演作品" ("演员id", "导演id", "合作作品id", "作品出品时间") values ("item_entertainment_21_250", "item_entertainment_21_252", "item_entertainment_21_265", "2013年5月1日")

insert into "演员及导演作品" ("演员id", "导演id", "合作作品id", "作品出品时间") values ("item_entertainment_21_250", "item_entertainment_21_252", "item_entertainment_21_265", "2018年1月1日")

insert into "演员及导演作品" ("演员id", "导演id", "合作作品id", "作品出品时间") values ("item_entertainment_21_250", "item_entertainment_21_253", "item_entertainment_21_264", "2017年10月1日")

insert into "演员及导演作品" ("演员id", "导演id", "合作作品id", "作品出品时间") values ("item_entertainment_21_246", "item_entertainment_21_251", "item_entertainment_21_261", "2019年5月1日")

insert into "演员及导演作品" ("演员id", "导演id", "合作作品id", "作品出品时间") values ("item_entertainment_21_246", "item_entertainment_21_252", "item_entertainment_21_263", "2017年10月1日")

insert into "演员与导演的合作" ("演员id", "导演id", "合作次数") values ("item_entertainment_21_247", "item_entertainment_21_252", "10")

insert into "演员与导演的合作" ("演员id", "导演id", "合作次数") values ("item_entertainment_21_246", "item_entertainment_21_252", "3")

insert into "演员与导演的合作" ("演员id", "导演id", "合作次数") values ("item_entertainment_21_248", "item_entertainment_21_251", "5")

insert into "演员与导演的合作" ("演员id", "导演id", "合作次数") values ("item_entertainment_21_247", "item_entertainment_21_252", "7")

insert into "演员与导演的合作" ("演员id", "导演id", "合作次数") values ("item_entertainment_21_248", "item_entertainment_21_254", "9")

insert into "演员的作品" ("演员id", "作品id", "角色类型") values ("item_entertainment_21_250", "item_entertainment_21_264", "男主角")

insert into "演员的作品" ("演员id", "作品id", "角色类型") values ("item_entertainment_21_248", "item_entertainment_21_262", "女主角")

insert into "演员的作品" ("演员id", "作品id", "角色类型") values ("item_entertainment_21_250", "item_entertainment_21_261", "男配角")

insert into "演员的作品" ("演员id", "作品id", "角色类型") values ("item_entertainment_21_248", "item_entertainment_21_261", "女配角")

insert into "演员的作品" ("演员id", "作品id", "角色类型") values ("item_entertainment_21_246", "item_entertainment_21_265", "群众演员")

