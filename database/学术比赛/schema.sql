PRAGMA foreign_keys = ON;

CREATE TABLE "比赛" (
"词条id" int,
"名称" text,
"方向" text,
"举办单位" text,
"单位性质" text,
"奖金数" int,
"录取队伍数量" int,
"比赛平台" text,
primary key ("词条id")
);

CREATE TABLE "参赛队伍" (
"词条id" int,
"队名" text,
"人数" int,
primary key ("词条id")
);

CREATE TABLE "参赛学生" (
"词条id" int,
"姓名" text,
"年龄" int,
"学历" text,
"学校" text,
primary key ("词条id")
);

CREATE TABLE "参赛成绩" (
"学生id" int,
"加入队伍id" int,
"参加比赛id" int,
"成绩" text,
foreign key("参加比赛id") references "比赛"("词条id"),
foreign key("学生id") references "参赛学生"("词条id"),
foreign key("加入队伍id") references "参赛队伍"("词条id")
);

insert into "比赛" ("词条id", "名称", "方向", "举办单位", "单位性质", "奖金数", "录取队伍数量", "比赛平台") values ("item_activity_10_86", "OCR手写识别比赛", "模式识别", "中文信息学会", "企业", "6万", "36", "阿里天池")

insert into "比赛" ("词条id", "名称", "方向", "举办单位", "单位性质", "奖金数", "录取队伍数量", "比赛平台") values ("item_activity_10_87", "知识驱动型对话", "对话生成", "苏州大学", "学校", "16万", "20", "学术会议")

insert into "比赛" ("词条id", "名称", "方向", "举办单位", "单位性质", "奖金数", "录取队伍数量", "比赛平台") values ("item_activity_10_88", "开放领域知识挖掘", "信息抽取", "追一科技有限公司", "学会", "6万", "20", "学术会议")

insert into "比赛" ("词条id", "名称", "方向", "举办单位", "单位性质", "奖金数", "录取队伍数量", "比赛平台") values ("item_activity_10_89", "小语种机器翻译", "机器翻译", "京东科技公司", "企业", "16万", "20", "学术会议")

insert into "比赛" ("词条id", "名称", "方向", "举办单位", "单位性质", "奖金数", "录取队伍数量", "比赛平台") values ("item_activity_10_90", "自然语言问题转逻辑表达式", "语义解析", "清华大学", "学校", "6万", "20", "阿里天池")

insert into "参赛队伍" ("词条id", "队名", "人数") values ("item_activity_10_91", "无与伦比", "3")

insert into "参赛队伍" ("词条id", "队名", "人数") values ("item_activity_10_92", "不上90不改名字", "5")

insert into "参赛队伍" ("词条id", "队名", "人数") values ("item_activity_10_93", "爆写规则一万行", "5")

insert into "参赛队伍" ("词条id", "队名", "人数") values ("item_activity_10_94", "我爱写代码", "5")

insert into "参赛队伍" ("词条id", "队名", "人数") values ("item_activity_10_95", "三人行必有我师", "3")

insert into "参赛学生" ("词条id", "姓名", "年龄", "学历", "学校") values ("item_activity_10_96", "张鲁一", "19岁", "本科", "清华大学")

insert into "参赛学生" ("词条id", "姓名", "年龄", "学历", "学校") values ("item_activity_10_97", "刘奕儿", "27岁", "硕士", "国防科技大学")

insert into "参赛学生" ("词条id", "姓名", "年龄", "学历", "学校") values ("item_activity_10_98", "赵奕山", "27岁", "博士", "中国科学院大学")

insert into "参赛学生" ("词条id", "姓名", "年龄", "学历", "学校") values ("item_activity_10_99", "王翰斯", "27岁", "本科", "北京理工大学")

insert into "参赛学生" ("词条id", "姓名", "年龄", "学历", "学校") values ("item_activity_10_100", "李尔吴", "19岁", "本科", "大连理工大学")

insert into "参赛成绩" ("学生id", "加入队伍id", "参加比赛id", "成绩") values ("item_activity_10_96", "item_activity_10_93", "item_activity_10_89", "冠军")

insert into "参赛成绩" ("学生id", "加入队伍id", "参加比赛id", "成绩") values ("item_activity_10_100", "item_activity_10_95", "item_activity_10_86", "亚军")

insert into "参赛成绩" ("学生id", "加入队伍id", "参加比赛id", "成绩") values ("item_activity_10_99", "item_activity_10_93", "item_activity_10_86", "季军")

insert into "参赛成绩" ("学生id", "加入队伍id", "参加比赛id", "成绩") values ("item_activity_10_100", "item_activity_10_93", "item_activity_10_90", "优胜奖")

insert into "参赛成绩" ("学生id", "加入队伍id", "参加比赛id", "成绩") values ("item_activity_10_100", "item_activity_10_92", "item_activity_10_87", "季军")

