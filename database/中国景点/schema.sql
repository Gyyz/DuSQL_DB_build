PRAGMA foreign_keys = ON;

CREATE TABLE "景区" (
"词条id" int,
"名称" text,
"占地面积" int,
"景点级别" int,
"旺季门票价格" int,
"淡季门票价格" int,
"始建时间" time,
"所属城市" text,
"所属省份" text,
primary key ("词条id")
);

CREATE TABLE "景点" (
"词条id" int,
"名称" text,
"地理位置" text,
primary key ("词条id")
);

CREATE TABLE "交通站" (
"词条id" int,
"名称" text,
"类型" text,
"景区id" int,
"距离" int,
primary key ("词条id"),
foreign key("景区id") references "景区"("词条id")
);

CREATE TABLE "景区景点" (
"景点id" int,
"景区id" int,
"是否著名" binary,
foreign key("景区id") references "景区"("词条id"),
foreign key("景点id") references "景点"("词条id")
);

CREATE TABLE "临近景区" (
"景区id" int,
"相邻景区id" int,
"距离" int,
foreign key("景区id") references "景区"("词条id"),
foreign key("相邻景区id") references "景区"("词条id")
);

CREATE TABLE "博物馆" (
"词条id" int,
"名称" text,
"占地面积" int,
"开馆时间" time,
"所属城市" text,
"票价" text,
primary key ("词条id")
);

CREATE TABLE "重点文物保护单位" (
"词条id" int,
"名称" text,
"门票价格" int,
"保护级别" text,
"所属城市" text,
"评定年份" time,
primary key ("词条id")
);

CREATE TABLE "动物园" (
"词条id" int,
"名称" text,
"占地面积" int,
"竣工时间" time,
"门票价格" int,
"动物种类" int,
"所属城市" text,
primary key ("词条id")
);

CREATE TABLE "馆藏动物" (
"动物名称" text,
"动物园id" int,
"数量" int,
primary key ("动物园id"),
foreign key("动物园id") references "动物园"("词条id")
);

CREATE TABLE "游乐园" (
"词条id" int,
"名称" text,
"占地面积" int,
"门票价格" int,
"总投资" int,
"所属城市" text,
primary key ("词条id")
);

CREATE TABLE "娱乐项目" (
"项目名称" text,
"游乐园id" int,
"季节" text,
"排名" int,
foreign key("游乐园id") references "游乐园"("词条id")
);

insert into "景区" ("词条id", "名称", "占地面积", "景点级别", "旺季门票价格", "淡季门票价格", "始建时间", "所属城市", "所属省份") values ("item_geography.2_20_206", "承德避暑山庄", "564万平方米", "国家5A级景区", "130", "90", "1703年", "承德市", "河北省")

insert into "景区" ("词条id", "名称", "占地面积", "景点级别", "旺季门票价格", "淡季门票价格", "始建时间", "所属城市", "所属省份") values ("item_geography.2_20_207", "宏村", "188.95平方千米", "国家5A级景区", "110", "94", "南宋绍兴元年", "黄山市", "安徽省")

insert into "景区" ("词条id", "名称", "占地面积", "景点级别", "旺季门票价格", "淡季门票价格", "始建时间", "所属城市", "所属省份") values ("item_geography.2_20_208", "沧浪亭", "10800平方米", "国家5A级景区", "20", "15", "元代", "苏州市", "江苏省")

insert into "景区" ("词条id", "名称", "占地面积", "景点级别", "旺季门票价格", "淡季门票价格", "始建时间", "所属城市", "所属省份") values ("item_geography.2_20_209", "秦始皇兵马俑", "400平方米", "国家5A级景区", "140", "120", "秦朝", "西安市", "陕西省")

insert into "景区" ("词条id", "名称", "占地面积", "景点级别", "旺季门票价格", "淡季门票价格", "始建时间", "所属城市", "所属省份") values ("item_geography.2_20_210", "故宫", "72万平方米", "国家5A级景区", "60", "40", "明清", "北京市", "北京")

insert into "景点" ("词条id", "名称", "地理位置") values ("item_geography.2_20_211", "山海关", "河北省秦皇岛")

insert into "景点" ("词条id", "名称", "地理位置") values ("item_geography.2_20_212", "桂林山水", "广西壮族自治区东北部")

insert into "景点" ("词条id", "名称", "地理位置") values ("item_geography.2_20_213", "故宫", "北京市中心")

insert into "景点" ("词条id", "名称", "地理位置") values ("item_geography.2_20_214", "西湖", "杭州市西部")

insert into "景点" ("词条id", "名称", "地理位置") values ("item_geography.2_20_215", "黄色", "安徽省南部黄山市")

insert into "交通站" ("词条id", "名称", "类型", "景区id", "距离") values ("item_geography.2_20_216", "北京站", "火车站", "item_geography.2_20_207", "6km")

insert into "交通站" ("词条id", "名称", "类型", "景区id", "距离") values ("item_geography.2_20_217", "天津站", "火车站", "item_geography.2_20_206", "5km")

insert into "交通站" ("词条id", "名称", "类型", "景区id", "距离") values ("item_geography.2_20_218", "上海虹桥机场", "机场", "item_geography.2_20_207", "43km")

insert into "交通站" ("词条id", "名称", "类型", "景区id", "距离") values ("item_geography.2_20_219", "南京站", "火车站", "item_geography.2_20_207", "11km")

insert into "交通站" ("词条id", "名称", "类型", "景区id", "距离") values ("item_geography.2_20_220", "大连周水子国际机场", "机场", "item_geography.2_20_208", "16km")

insert into "景区景点" ("景点id", "景区id", "是否著名") values ("item_geography.2_20_215", "item_geography.2_20_207", "是")

insert into "景区景点" ("景点id", "景区id", "是否著名") values ("item_geography.2_20_213", "item_geography.2_20_206", "是")

insert into "景区景点" ("景点id", "景区id", "是否著名") values ("item_geography.2_20_213", "item_geography.2_20_209", "是")

insert into "景区景点" ("景点id", "景区id", "是否著名") values ("item_geography.2_20_215", "item_geography.2_20_210", "是")

insert into "景区景点" ("景点id", "景区id", "是否著名") values ("item_geography.2_20_211", "item_geography.2_20_207", "是")

insert into "临近景区" ("景区id", "相邻景区id", "距离") values ("item_geography.2_20_208", "item_geography.2_20_207", "150km")

insert into "临近景区" ("景区id", "相邻景区id", "距离") values ("item_geography.2_20_207", "item_geography.2_20_208", "45km")

insert into "临近景区" ("景区id", "相邻景区id", "距离") values ("item_geography.2_20_206", "item_geography.2_20_209", "42km")

insert into "临近景区" ("景区id", "相邻景区id", "距离") values ("item_geography.2_20_209", "item_geography.2_20_209", "34km")

insert into "临近景区" ("景区id", "相邻景区id", "距离") values ("item_geography.2_20_210", "item_geography.2_20_207", "67km")

insert into "博物馆" ("词条id", "名称", "占地面积", "开馆时间", "所属城市", "票价") values ("item_geography.2_20_221", "故宫博物院", "72万平方米", "8:00", "北京", "60元")

insert into "博物馆" ("词条id", "名称", "占地面积", "开馆时间", "所属城市", "票价") values ("item_geography.2_20_222", "中国国家博物馆", "7万平方米", "9:00", "北京", "53元")

insert into "博物馆" ("词条id", "名称", "占地面积", "开馆时间", "所属城市", "票价") values ("item_geography.2_20_223", "台北故宫博物馆", "1.03万平方米", "8:30", "台北", "150台币")

insert into "博物馆" ("词条id", "名称", "占地面积", "开馆时间", "所属城市", "票价") values ("item_geography.2_20_224", "河南博物院", "1万余平方米", "9:00", "河南", "2.9元")

insert into "博物馆" ("词条id", "名称", "占地面积", "开馆时间", "所属城市", "票价") values ("item_geography.2_20_225", "陕西历史博物馆", "55600平方米", "9:00", "陕西", "30元")

insert into "重点文物保护单位" ("词条id", "名称", "门票价格", "保护级别", "所属城市", "评定年份") values ("item_geography.2_20_226", "周口关帝庙", "30元", "AAA级", "河南", "1693年")

insert into "重点文物保护单位" ("词条id", "名称", "门票价格", "保护级别", "所属城市", "评定年份") values ("item_geography.2_20_227", "龙门石窟", "90元", "AAAAA级", "河南", "1961年")

insert into "重点文物保护单位" ("词条id", "名称", "门票价格", "保护级别", "所属城市", "评定年份") values ("item_geography.2_20_228", "白马寺", "35元", "AAAA级", "河南", "2001年")

insert into "重点文物保护单位" ("词条id", "名称", "门票价格", "保护级别", "所属城市", "评定年份") values ("item_geography.2_20_229", "天安门", "15元", "AAAAA级", "北京", "1417年")

insert into "重点文物保护单位" ("词条id", "名称", "门票价格", "保护级别", "所属城市", "评定年份") values ("item_geography.2_20_230", "大雁塔", "35元", "AAAAA级", "西安", "1961年")

insert into "动物园" ("词条id", "名称", "占地面积", "竣工时间", "门票价格", "动物种类", "所属城市") values ("item_geography.2_20_231", "广州番禺长隆", "1万亩", "1989年", "250元", "20000余种", "广州")

insert into "动物园" ("词条id", "名称", "占地面积", "竣工时间", "门票价格", "动物种类", "所属城市") values ("item_geography.2_20_232", "北京动物园", "86公顷", "1908年", "15元", "950余种", "北京")

insert into "动物园" ("词条id", "名称", "占地面积", "竣工时间", "门票价格", "动物种类", "所属城市") values ("item_geography.2_20_233", "上海动物园", "74.3万平方米", "1960年", "40元", "400余种", "上海")

insert into "动物园" ("词条id", "名称", "占地面积", "竣工时间", "门票价格", "动物种类", "所属城市") values ("item_geography.2_20_234", "南京动物园", "68公顷", "1998年", "40元", "216种", "南京")

insert into "动物园" ("词条id", "名称", "占地面积", "竣工时间", "门票价格", "动物种类", "所属城市") values ("item_geography.2_20_235", "重庆动物园", "45公顷", "1954年", "50元", "230余种", "重庆")

insert into "馆藏动物" ("动物名称", "动物园id", "数量") values ("玉猪", "item_geography.2_20_234", "10个")

insert into "馆藏动物" ("动物名称", "动物园id", "数量") values ("青玉卧马", "item_geography.2_20_233", "5个")

insert into "馆藏动物" ("动物名称", "动物园id", "数量") values ("玉辟邪", "item_geography.2_20_233", "9个")

insert into "馆藏动物" ("动物名称", "动物园id", "数量") values ("青玉双猴", "item_geography.2_20_234", "8个")

insert into "馆藏动物" ("动物名称", "动物园id", "数量") values ("白玉大象", "item_geography.2_20_231", "2个")

insert into "游乐园" ("词条id", "名称", "占地面积", "门票价格", "总投资", "所属城市") values ("item_geography.2_20_241", "香港迪士尼乐园", "126公顷", "539元", "230亿港元", "香港")

insert into "游乐园" ("词条id", "名称", "占地面积", "门票价格", "总投资", "所属城市") values ("item_geography.2_20_242", "广州长隆欢乐世界", "1000多亩", "200元", "10亿人民币", "广州")

insert into "游乐园" ("词条id", "名称", "占地面积", "门票价格", "总投资", "所属城市") values ("item_geography.2_20_243", "上海迪士尼乐园", "390万平方米", "499元", "约55亿美元", "上海")

insert into "游乐园" ("词条id", "名称", "占地面积", "门票价格", "总投资", "所属城市") values ("item_geography.2_20_244", "北京欢乐谷", "56万平方米", "260元", "30亿元", "北京")

insert into "游乐园" ("词条id", "名称", "占地面积", "门票价格", "总投资", "所属城市") values ("item_geography.2_20_245", "常州中华恐龙园", "600余亩", "230元", "200亿", "常州")

insert into "娱乐项目" ("项目名称", "游乐园id", "季节", "排名") values ("过山车", "item_geography.2_20_243", "四季", "第9名")

insert into "娱乐项目" ("项目名称", "游乐园id", "季节", "排名") values ("水上漂流", "item_geography.2_20_244", "夏季", "第2名")

insert into "娱乐项目" ("项目名称", "游乐园id", "季节", "排名") values ("旋转木马", "item_geography.2_20_245", "四季", "第10名")

insert into "娱乐项目" ("项目名称", "游乐园id", "季节", "排名") values ("大摆锤", "item_geography.2_20_243", "四季", "第3名")

insert into "娱乐项目" ("项目名称", "游乐园id", "季节", "排名") values ("鬼屋", "item_geography.2_20_242", "四季", "第1名")

