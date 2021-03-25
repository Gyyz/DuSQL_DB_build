PRAGMA foreign_keys = ON;

CREATE TABLE "建筑奖项" (
"词条id" int,
"名称" text,
"发起时间" time,
"发起人" text,
"称号" text,
"总奖金" int,
"评选间隔年数" int,
"举办届数" int,
primary key ("词条id")
);

CREATE TABLE "建筑奖各国名单" (
"奖项id" int,
"国家" text,
"数量" int,
foreign key("奖项id") references "建筑奖项"("词条id")
);

CREATE TABLE "建筑师" (
"词条id" int,
"姓名" text,
"国籍" text,
"毕业院校" text,
"作品数量" int,
primary key ("词条id")
);

CREATE TABLE "普利兹克奖获奖名单" (
"年份" time,
"届数" int,
"获奖人id" text,
"国籍" text,
foreign key("获奖人id") references "建筑师"("词条id")
);

CREATE TABLE "阿卡汗建筑奖获奖名单" (
"届数" int,
"获奖建筑名称" text,
"位于城市" text,
"位于国家" text,
"设计者id" int,
foreign key("设计者id") references "建筑师"("词条id")
);

insert into "建筑奖项" ("词条id", "名称", "发起时间", "发起人", "称号", "总奖金", "评选间隔年数", "举办届数") values ("item_prize_8_81", "普利兹克奖", "1979年", "杰伊·普利兹克", "建筑学界的诺贝尔奖", "10万美金", "1年", "10")

insert into "建筑奖项" ("词条id", "名称", "发起时间", "发起人", "称号", "总奖金", "评选间隔年数", "举办届数") values ("item_prize_8_82", "阿卡汗建筑奖", "1977年", "阿卡汗四世", "伊斯兰建筑奖", "50万美金", "3年", "41")

insert into "建筑奖项" ("词条id", "名称", "发起时间", "发起人", "称号", "总奖金", "评选间隔年数", "举办届数") values ("item_prize_8_83", "亚洲建筑师协会建筑奖", "1978年", "亚洲建筑协会", "建筑界奥斯卡奖", "50万美金", "1年", "10")

insert into "建筑奖项" ("词条id", "名称", "发起时间", "发起人", "称号", "总奖金", "评选间隔年数", "举办届数") values ("item_prize_8_84", "金块奖", "1963年", "太平洋建筑协会", "亚洲地区建筑界最高大奖", "10万美金", "1年", "10")

insert into "建筑奖项" ("词条id", "名称", "发起时间", "发起人", "称号", "总奖金", "评选间隔年数", "举办届数") values ("item_prize_8_85", "开放建筑大奖", "1980年", "联合国建筑协会", "建筑领域最大奖项", "10万美金", "1年", "10")

insert into "建筑奖各国名单" ("奖项id", "国家", "数量") values ("item_prize_8_85", "美国", "0")

insert into "建筑奖各国名单" ("奖项id", "国家", "数量") values ("item_prize_8_82", "日本", "8")

insert into "建筑奖各国名单" ("奖项id", "国家", "数量") values ("item_prize_8_84", "西班牙", "0")

insert into "建筑奖各国名单" ("奖项id", "国家", "数量") values ("item_prize_8_83", "英国", "0")

insert into "建筑奖各国名单" ("奖项id", "国家", "数量") values ("item_prize_8_81", "瑞士", "0")

insert into "建筑师" ("词条id", "姓名", "国籍", "毕业院校", "作品数量") values ("item_prize_8_86", "矶崎新", "日本", "东京大学", "30")

insert into "建筑师" ("词条id", "姓名", "国籍", "毕业院校", "作品数量") values ("item_prize_8_87", "巴克里希纳·多西", "印度", "同济大学", "100")

insert into "建筑师" ("词条id", "姓名", "国籍", "毕业院校", "作品数量") values ("item_prize_8_88", "伊东丰雄", "西班牙", "南加利福尼亚大学", "30")

insert into "建筑师" ("词条id", "姓名", "国籍", "毕业院校", "作品数量") values ("item_prize_8_89", "汤姆·梅恩", "智利", "哈佛大学", "100")

insert into "建筑师" ("词条id", "姓名", "国籍", "毕业院校", "作品数量") values ("item_prize_8_90", "王澍", "德国", "伦敦建筑联盟学院", "100")

insert into "普利兹克奖获奖名单" ("年份", "届数", "获奖人id", "国籍") values ("1979", "1", "item_prize_8_90", "日本")

insert into "普利兹克奖获奖名单" ("年份", "届数", "获奖人id", "国籍") values ("2019年", "41", "item_prize_8_86", "印度")

insert into "普利兹克奖获奖名单" ("年份", "届数", "获奖人id", "国籍") values ("1979", "41", "item_prize_8_90", "西班牙")

insert into "普利兹克奖获奖名单" ("年份", "届数", "获奖人id", "国籍") values ("2019年", "1", "item_prize_8_90", "智利")

insert into "普利兹克奖获奖名单" ("年份", "届数", "获奖人id", "国籍") values ("2019年", "1", "item_prize_8_88", "德国")

insert into "阿卡汗建筑奖获奖名单" ("届数", "获奖建筑名称", "位于城市", "位于国家", "设计者id") values ("1", "阿拉伯研究中心", "巴黎", "法国", "item_prize_8_90")

insert into "阿卡汗建筑奖获奖名单" ("届数", "获奖建筑名称", "位于城市", "位于国家", "设计者id") values ("2", "农业训练中心", "尼安宁", "塞内加尔", "item_prize_8_90")

insert into "阿卡汗建筑奖获奖名单" ("届数", "获奖建筑名称", "位于城市", "位于国家", "设计者id") values ("3", "洲际宾馆和会议中心", "麦加", "沙特阿拉伯", "item_prize_8_90")

insert into "阿卡汗建筑奖获奖名单" ("届数", "获奖建筑名称", "位于城市", "位于国家", "设计者id") values ("4", "水塔", "科威特城", "科威特", "item_prize_8_89")

insert into "阿卡汗建筑奖获奖名单" ("届数", "获奖建筑名称", "位于城市", "位于国家", "设计者id") values ("5", "哈拉瓦住宅", "阿格米", "埃及", "item_prize_8_86")

