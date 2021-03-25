PRAGMA foreign_keys = ON;

CREATE TABLE "地震" (
"词条id" int,
"名称" text,
"发生时间" time,
"地理位置" text,
"震源深度" int,
"震级" int,
"震中烈度" int,
"死亡人数" int,
"受伤人数" int,
"持续时间" int,
"经济损失" int,
primary key ("词条id")
);

CREATE TABLE "汶川地震受灾地区" (
"地区" text,
"死亡人数" int,
"受伤人数" int,
"失踪人数" int
);

CREATE TABLE "地震衍生剧" (
"词条id" int,
"剧名" text,
"类型" text,
"地震id" int,
"播出时间" time,
"导演" text,
primary key ("词条id"),
foreign key("地震id") references "地震"("词条id")
);

CREATE TABLE "地震纪念馆" (
"词条id" int,
"名称" text,
"地点" int,
"开馆时间" int,
"地震id" time,
"建筑面积" text,
primary key ("词条id"),
foreign key("地震id") references "地震"("词条id")
);

insert into "地震" ("词条id", "名称", "发生时间", "地理位置", "震源深度", "震级", "震中烈度", "死亡人数", "受伤人数", "持续时间", "经济损失") values ("item_activity_9_71", "唐山地震", "1976年7月28日", "河北省唐山开平区越河乡", "12公里", "7.8", "11度", "24.2万", "16.4万", "23秒", "100亿")

insert into "地震" ("词条id", "名称", "发生时间", "地理位置", "震源深度", "震级", "震中烈度", "死亡人数", "受伤人数", "持续时间", "经济损失") values ("item_activity_9_72", "5·12汶川地震", "2008年5月12日", "四川省阿坝藏族羌族自治州汶川县", "14公里", "8", "11度", "67227", "37万", "2分钟", "8452亿")

insert into "地震" ("词条id", "名称", "发生时间", "地理位置", "震源深度", "震级", "震中烈度", "死亡人数", "受伤人数", "持续时间", "经济损失") values ("item_activity_9_73", "2·4海城地震", "1975年2月4日", "辽宁省海城县", "16公里", "7.3", "9度", "1328", "17000", "30秒", "8.1亿")

insert into "地震" ("词条id", "名称", "发生时间", "地理位置", "震源深度", "震级", "震中烈度", "死亡人数", "受伤人数", "持续时间", "经济损失") values ("item_activity_9_74", "邢台地震", "1966年3月22日", "河北省邢台专区隆尧县", "10公里", "7.2", "10度", "8064", "38000", "30秒", "10亿")

insert into "地震" ("词条id", "名称", "发生时间", "地理位置", "震源深度", "震级", "震中烈度", "死亡人数", "受伤人数", "持续时间", "经济损失") values ("item_activity_9_75", "通海地震", "1970年1月5日", "云南省玉溪市通海县", "10公里", "7.7", "10度", "15621", "32431", "23秒", "12亿")

insert into "汶川地震受灾地区" ("地区", "死亡人数", "受伤人数", "失踪人数") values ("汶川县", "15941", "34583", "7930")

insert into "汶川地震受灾地区" ("地区", "死亡人数", "受伤人数", "失踪人数") values ("北川县", "15645", "26916", "1023")

insert into "汶川地震受灾地区" ("地区", "死亡人数", "受伤人数", "失踪人数") values ("绵竹市", "11098", "36468", "298")

insert into "汶川地震受灾地区" ("地区", "死亡人数", "受伤人数", "失踪人数") values ("都江堰市", "3069", "4388", "0")

insert into "汶川地震受灾地区" ("地区", "死亡人数", "受伤人数", "失踪人数") values ("广元", "4819", "28241", "125")

insert into "地震衍生剧" ("词条id", "剧名", "类型", "地震id", "播出时间", "导演") values ("item_activity_9_76", "妈妈别哭", "电影", "item_activity_9_74", "2008年10月", "曹桂千")

insert into "地震衍生剧" ("词条id", "剧名", "类型", "地震id", "播出时间", "导演") values ("item_activity_9_77", "震撼世界的七日", "电视剧", "item_activity_9_71", "2008年7月", "赵浚凯")

insert into "地震衍生剧" ("词条id", "剧名", "类型", "地震id", "播出时间", "导演") values ("item_activity_9_78", "生死时刻", "电影", "item_activity_9_75", "2009年7月", "贾天兵")

insert into "地震衍生剧" ("词条id", "剧名", "类型", "地震id", "播出时间", "导演") values ("item_activity_9_79", "唐山大地震", "电视剧", "item_activity_9_75", "2005年", "郝冰")

insert into "地震衍生剧" ("词条id", "剧名", "类型", "地震id", "播出时间", "导演") values ("item_activity_9_80", "唐山大地震", "电影", "item_activity_9_72", "2010年7月", "冯小刚")

insert into "地震纪念馆" ("词条id", "名称", "地点", "开馆时间", "地震id", "建筑面积") values ("item_activity_9_81", "唐山抗震纪念馆", "河北·唐山", "1986年7月", "item_activity_9_71", "5380平方米")

insert into "地震纪念馆" ("词条id", "名称", "地点", "开馆时间", "地震id", "建筑面积") values ("item_activity_9_82", "汶川大地震博物馆", "四川大邑县安仁镇", "2009年5月", "item_activity_9_72", "6000平方米")

insert into "地震纪念馆" ("词条id", "名称", "地点", "开馆时间", "地震id", "建筑面积") values ("item_activity_9_83", "台湾9·21地震博物馆", "台湾9·21地震博物馆", "1999年", "item_activity_9_71", "3000平方米")

insert into "地震纪念馆" ("词条id", "名称", "地点", "开馆时间", "地震id", "建筑面积") values ("item_activity_9_84", "建川博物馆", "四川大邑县安仁镇", "2005年8月", "item_activity_9_72", "10万平方米")

insert into "地震纪念馆" ("词条id", "名称", "地点", "开馆时间", "地震id", "建筑面积") values ("item_activity_9_85", " 兰州地震博物馆", "甘肃省兰州市十里桃乡", "1989年", "item_activity_9_72", "3500平方米")

