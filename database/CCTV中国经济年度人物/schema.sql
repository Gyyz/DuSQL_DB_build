PRAGMA foreign_keys = ON;

CREATE TABLE "企业人物" (
"词条id" int,
"姓名" text,
"性别" text,
"年龄" int,
"出生地" text,
"民族" text,
"毕业院校" text,
primary key ("词条id")
);

CREATE TABLE "公司" (
"词条id" int,
"名称" text,
"成立时间" time,
"年营业额" int,
"员工数" int,
"市值" int,
"世界500强排名" int,
primary key ("词条id")
);

CREATE TABLE "人物公司职位" (
"人物id" int,
"公司id" int,
"职位" text,
foreign key("公司id") references "公司"("词条id"),
foreign key("人物id") references "企业人物"("词条id")
);

CREATE TABLE "历届经济人物获奖名单" (
"年份" int,
"奖项名称" text,
"获奖人id" int,
foreign key("获奖人id") references "企业人物"("词条id")
);

insert into "企业人物" ("词条id", "姓名", "性别", "年龄", "出生地", "民族", "毕业院校") values ("item_prize_4_31", "雷军", "男", "35", "湖北省仙桃市", "汉族", "清华大学")

insert into "企业人物" ("词条id", "姓名", "性别", "年龄", "出生地", "民族", "毕业院校") values ("item_prize_4_32", "刘强东", "女", "50岁", "江苏省宿州市", "满族", "北京大学")

insert into "企业人物" ("词条id", "姓名", "性别", "年龄", "出生地", "民族", "毕业院校") values ("item_prize_4_33", "李彦宏", "男", "50岁", "北京市", "回族", "武汉大学")

insert into "企业人物" ("词条id", "姓名", "性别", "年龄", "出生地", "民族", "毕业院校") values ("item_prize_4_34", "董明珠", "男", "50岁", "山西省晋城市", "土家族", "中国人民大学")

insert into "企业人物" ("词条id", "姓名", "性别", "年龄", "出生地", "民族", "毕业院校") values ("item_prize_4_35", "张玉良", "女", "35", "广东省深圳市", "蒙古族", "复旦大学")

insert into "公司" ("词条id", "名称", "成立时间", "年营业额", "员工数", "市值", "世界500强排名") values ("item_prize_4_36", "北京小米科技有限责任公司", "1998年", "2000万", "10000", "300亿", "1")

insert into "公司" ("词条id", "名称", "成立时间", "年营业额", "员工数", "市值", "世界500强排名") values ("item_prize_4_37", "北京京东世纪贸易有限公司", "2014年", "1000亿", "150000人", "4000亿美元", "500")

insert into "公司" ("词条id", "名称", "成立时间", "年营业额", "员工数", "市值", "世界500强排名") values ("item_prize_4_38", "北京三快在线科技有限公司", "1998年", "1000亿", "10000", "300亿", "500")

insert into "公司" ("词条id", "名称", "成立时间", "年营业额", "员工数", "市值", "世界500强排名") values ("item_prize_4_39", "北京小桔科技有限公司", "2014年", "2000万", "10000", "300亿", "500")

insert into "公司" ("词条id", "名称", "成立时间", "年营业额", "员工数", "市值", "世界500强排名") values ("item_prize_4_40", "深圳腾讯科技有限公司", "1998年", "1000亿", "10000", "4000亿美元", "1")

insert into "人物公司职位" ("人物id", "公司id", "职位") values ("item_prize_4_34", "item_prize_4_40", "总裁")

insert into "人物公司职位" ("人物id", "公司id", "职位") values ("item_prize_4_31", "item_prize_4_37", "董事长")

insert into "人物公司职位" ("人物id", "公司id", "职位") values ("item_prize_4_33", "item_prize_4_36", "执行董事")

insert into "人物公司职位" ("人物id", "公司id", "职位") values ("item_prize_4_32", "item_prize_4_36", "副总裁")

insert into "人物公司职位" ("人物id", "公司id", "职位") values ("item_prize_4_34", "item_prize_4_39", "股东")

insert into "历届经济人物获奖名单" ("年份", "奖项名称", "获奖人id") values ("2018", "终生成就奖", "item_prize_4_34")

insert into "历届经济人物获奖名单" ("年份", "奖项名称", "获奖人id") values ("2017", "年度人物", "item_prize_4_35")

insert into "历届经济人物获奖名单" ("年份", "奖项名称", "获奖人id") values ("2015", "年度人物", "item_prize_4_32")

insert into "历届经济人物获奖名单" ("年份", "奖项名称", "获奖人id") values ("2016", "终生成就奖", "item_prize_4_35")

insert into "历届经济人物获奖名单" ("年份", "奖项名称", "获奖人id") values ("2014", "年度人物", "item_prize_4_33")

