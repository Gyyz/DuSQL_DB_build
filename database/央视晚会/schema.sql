PRAGMA foreign_keys = ON;

CREATE TABLE "央视春节晚会" (
"词条id" int,
"名称" text,
"届数" int,
"播放频道" text,
"在线播放平台" text,
"主持人" text,
"主持人数量" int,
"收视率" int,
"歌舞节目数量" int,
"语言节目数量" int,
"魔术节目数量" int,
primary key ("词条id")
);

CREATE TABLE "主持人" (
"词条id" int,
"姓名" text,
"毕业院校" text,
"代表作品" text,
primary key ("词条id")
);

CREATE TABLE "中秋晚会" (
"词条id" int,
"名称" text,
"播出时间" time,
"主会场地址" text,
"分会场数量" int,
primary key ("词条id")
);

CREATE TABLE "主持人与春晚" (
"主持人id" int,
"春晚id" int,
foreign key("春晚id") references "央视春节晚会"("词条id"),
foreign key("主持人id") references "主持人"("词条id")
);

CREATE TABLE "主持人与中秋晚会" (
"主持人id" int,
"中秋晚会id" int,
foreign key("主持人id") references "主持人"("词条id"),
foreign key("中秋晚会id") references "中秋晚会"("词条id")
);

CREATE TABLE "举办城市" (
"城市名称" text,
"中秋晚会id" int,
"是否主会场" binary,
foreign key("中秋晚会id") references "中秋晚会"("词条id")
);

CREATE TABLE "春晚嘉宾" (
"嘉宾姓名" text,
"春晚id" int,
"表演节目" text,
"节目类型" text,
"是否获奖" binary,
foreign key("春晚id") references "央视春节晚会"("词条id")
);

insert into "央视春节晚会" ("词条id", "名称", "届数", "播放频道", "在线播放平台", "主持人", "主持人数量", "收视率", "歌舞节目数量", "语言节目数量", "魔术节目数量") values ("item_entertainment_3_26", "2002年中央电视台春节联欢晚会", "第20", "综合频道", "爱奇艺", "倪萍", "2", "30%", "20", "10", "0")

insert into "央视春节晚会" ("词条id", "名称", "届数", "播放频道", "在线播放平台", "主持人", "主持人数量", "收视率", "歌舞节目数量", "语言节目数量", "魔术节目数量") values ("item_entertainment_3_27", "2003年中央电视台春节联欢晚会", "37届", "综艺频道", "优酷", "赵忠祥", "6个", "37%", "30个", "25个", "1个")

insert into "央视春节晚会" ("词条id", "名称", "届数", "播放频道", "在线播放平台", "主持人", "主持人数量", "收视率", "歌舞节目数量", "语言节目数量", "魔术节目数量") values ("item_entertainment_3_28", "2004年中央电视台春节联欢晚会", "37届", "中文国际频道", "腾讯", "董卿", "6个", "30%", "20", "10", "0")

insert into "央视春节晚会" ("词条id", "名称", "届数", "播放频道", "在线播放平台", "主持人", "主持人数量", "收视率", "歌舞节目数量", "语言节目数量", "魔术节目数量") values ("item_entertainment_3_29", "2006年中央电视台春节联欢晚会", "37届", "少儿频道", "暴风影音", "周涛", "2", "37%", "20", "25个", "1个")

insert into "央视春节晚会" ("词条id", "名称", "届数", "播放频道", "在线播放平台", "主持人", "主持人数量", "收视率", "歌舞节目数量", "语言节目数量", "魔术节目数量") values ("item_entertainment_3_30", "2019年中央电视台春节联欢晚会", "第20", "综合频道", "央视在线", "毕福剑", "6个", "30%", "20", "10", "0")

insert into "主持人" ("词条id", "姓名", "毕业院校", "代表作品") values ("item_entertainment_3_31", "董卿", "上海戏剧学院", "朗读者")

insert into "主持人" ("词条id", "姓名", "毕业院校", "代表作品") values ("item_entertainment_3_32", "周涛", "华东师范大学", "我要上春晚")

insert into "主持人" ("词条id", "姓名", "毕业院校", "代表作品") values ("item_entertainment_3_33", "撒贝宁", "北京广播学院", "中国诗词大会")

insert into "主持人" ("词条id", "姓名", "毕业院校", "代表作品") values ("item_entertainment_3_34", "尼格买提", "中央戏剧学院", "今日说法")

insert into "主持人" ("词条id", "姓名", "毕业院校", "代表作品") values ("item_entertainment_3_35", "春妮", "北京电影学院", "我们有一套")

insert into "中秋晚会" ("词条id", "名称", "播出时间", "主会场地址", "分会场数量") values ("item_entertainment_3_36", "2014年", "2015年9月27日晚20:00", "江苏省扬州市", "1")

insert into "中秋晚会" ("词条id", "名称", "播出时间", "主会场地址", "分会场数量") values ("item_entertainment_3_37", "2019年中央广播电视总台中秋晚会", "2016年9月15日晚20:00", "湖北省武汉市", "3")

insert into "中秋晚会" ("词条id", "名称", "播出时间", "主会场地址", "分会场数量") values ("item_entertainment_3_38", "2019年中央广播电视总台中秋晚会", "2017年10月4日晚20:00", "福建省厦门市", "1")

insert into "中秋晚会" ("词条id", "名称", "播出时间", "主会场地址", "分会场数量") values ("item_entertainment_3_39", "2014年", "2018年9月24日晚20:00", "河北省承德市", "1")

insert into "中秋晚会" ("词条id", "名称", "播出时间", "主会场地址", "分会场数量") values ("item_entertainment_3_40", "2014年", "2019年9月13日晚20:00", "山东省荣成市", "3")

insert into "主持人与春晚" ("主持人id", "春晚id") values ("item_entertainment_3_35", "item_entertainment_3_30")

insert into "主持人与春晚" ("主持人id", "春晚id") values ("item_entertainment_3_32", "item_entertainment_3_28")

insert into "主持人与春晚" ("主持人id", "春晚id") values ("item_entertainment_3_34", "item_entertainment_3_26")

insert into "主持人与春晚" ("主持人id", "春晚id") values ("item_entertainment_3_34", "item_entertainment_3_27")

insert into "主持人与春晚" ("主持人id", "春晚id") values ("item_entertainment_3_34", "item_entertainment_3_30")

insert into "主持人与中秋晚会" ("主持人id", "中秋晚会id") values ("item_entertainment_3_31", "item_entertainment_3_36")

insert into "主持人与中秋晚会" ("主持人id", "中秋晚会id") values ("item_entertainment_3_34", "item_entertainment_3_36")

insert into "主持人与中秋晚会" ("主持人id", "中秋晚会id") values ("item_entertainment_3_32", "item_entertainment_3_37")

insert into "主持人与中秋晚会" ("主持人id", "中秋晚会id") values ("item_entertainment_3_32", "item_entertainment_3_36")

insert into "主持人与中秋晚会" ("主持人id", "中秋晚会id") values ("item_entertainment_3_35", "item_entertainment_3_37")

insert into "举办城市" ("城市名称", "中秋晚会id", "是否主会场") values ("江西省宜春市", "item_entertainment_3_36", "是")

insert into "举办城市" ("城市名称", "中秋晚会id", "是否主会场") values ("安徽省芜湖市", "item_entertainment_3_37", "否")

insert into "举办城市" ("城市名称", "中秋晚会id", "是否主会场") values ("广东省江门市", "item_entertainment_3_37", "否")

insert into "举办城市" ("城市名称", "中秋晚会id", "是否主会场") values ("广东省梅州市", "item_entertainment_3_37", "否")

insert into "举办城市" ("城市名称", "中秋晚会id", "是否主会场") values ("江苏省苏州市", "item_entertainment_3_37", "否")

insert into "春晚嘉宾" ("嘉宾姓名", "春晚id", "表演节目", "节目类型", "是否获奖") values ("岳云鹏", "item_entertainment_3_30", "妙言趣语", "歌舞类", "是")

insert into "春晚嘉宾" ("嘉宾姓名", "春晚id", "表演节目", "节目类型", "是否获奖") values ("凤凰传奇", "item_entertainment_3_30", "中国喜事", "语言类", "否")

insert into "春晚嘉宾" ("嘉宾姓名", "春晚id", "表演节目", "节目类型", "是否获奖") values ("李易峰", "item_entertainment_3_28", "青春约起来", "杂技类", "是")

insert into "春晚嘉宾" ("嘉宾姓名", "春晚id", "表演节目", "节目类型", "是否获奖") values ("吉克隽逸", "item_entertainment_3_26", "映山红", "朗诵类", "否")

insert into "春晚嘉宾" ("嘉宾姓名", "春晚id", "表演节目", "节目类型", "是否获奖") values ("刘佩琦", "item_entertainment_3_29", "可爱的中国", "魔术类", "否")

