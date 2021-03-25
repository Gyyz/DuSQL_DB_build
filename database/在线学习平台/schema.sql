PRAGMA foreign_keys = ON;

CREATE TABLE "学校" (
"词条id" int,
"名称" text,
"类型" text,
"国家" text,
"世界排名" int,
primary key ("词条id")
);

CREATE TABLE "课程" (
"词条id" int,
"名称" text,
"所属专业" text,
"适合学者类型" text,
primary key ("词条id")
);

CREATE TABLE "平台" (
"词条id" int,
"名称" text,
"课程数量" int,
"合作学校数量" int,
"是否免费" binary,
primary key ("词条id")
);

CREATE TABLE "平台合作学校" (
"平台id" int,
"学校id" int,
"合作课程数量" int,
foreign key("学校id") references "学校"("词条id"),
foreign key("平台id") references "平台"("词条id")
);

CREATE TABLE "学校的开源课程" (
"词条id" int,
"开源课程名称" text,
"课程id" int,
"学校id" int,
"课时" int,
"主讲教师" text,
primary key ("词条id"),
foreign key("课程id") references "课程"("词条id"),
foreign key("学校id") references "学校"("词条id")
);

CREATE TABLE "平台课程" (
"开源课程id" int,
"平台id" int,
"是否直播" binary,
"课程时长" int,
"价格" int,
foreign key("开源课程id") references "学校的开源课程"("词条id"),
foreign key("平台id") references "平台"("词条id")
);

insert into "学校" ("词条id", "名称", "类型", "国家", "世界排名") values ("item_book.2_14_166", "清华大学", "综合", "中国", "1")

insert into "学校" ("词条id", "名称", "类型", "国家", "世界排名") values ("item_book.2_14_167", "斯坦福大学", "工科", "美国", "10")

insert into "学校" ("词条id", "名称", "类型", "国家", "世界排名") values ("item_book.2_14_168", "台湾师范大学", "理科", "新加坡", "40")

insert into "学校" ("词条id", "名称", "类型", "国家", "世界排名") values ("item_book.2_14_169", "复旦大学", "文科", "英国", "60")

insert into "学校" ("词条id", "名称", "类型", "国家", "世界排名") values ("item_book.2_14_170", "卡耐基梅隆大学", "医学", "印度", "100")

insert into "课程" ("词条id", "名称", "所属专业", "适合学者类型") values ("item_book.2_14_171", "算法与数据结构", "计算机科学", "初学者")

insert into "课程" ("词条id", "名称", "所属专业", "适合学者类型") values ("item_book.2_14_172", "python教学", "英语专业", "深造者")

insert into "课程" ("词条id", "名称", "所属专业", "适合学者类型") values ("item_book.2_14_173", "计量经济学", "法律", "深造者")

insert into "课程" ("词条id", "名称", "所属专业", "适合学者类型") values ("item_book.2_14_174", "法语语法教学", "经济管理专业", "初学者")

insert into "课程" ("词条id", "名称", "所属专业", "适合学者类型") values ("item_book.2_14_175", "应用心理学", "对外贸易专业", "初学者")

insert into "平台" ("词条id", "名称", "课程数量", "合作学校数量", "是否免费") values ("item_book.2_14_176", "网易云课堂", "200", "10", "是")

insert into "平台" ("词条id", "名称", "课程数量", "合作学校数量", "是否免费") values ("item_book.2_14_177", "学堂在线", "300", "34", "否")

insert into "平台" ("词条id", "名称", "课程数量", "合作学校数量", "是否免费") values ("item_book.2_14_178", "中国大学Mooc", "350", "50", "是")

insert into "平台" ("词条id", "名称", "课程数量", "合作学校数量", "是否免费") values ("item_book.2_14_179", "好大学在线", "400", "45", "否")

insert into "平台" ("词条id", "名称", "课程数量", "合作学校数量", "是否免费") values ("item_book.2_14_180", "均一教学平台", "600", "53", "否")

insert into "平台合作学校" ("平台id", "学校id", "合作课程数量") values ("item_book.2_14_177", "item_book.2_14_169", "10")

insert into "平台合作学校" ("平台id", "学校id", "合作课程数量") values ("item_book.2_14_177", "item_book.2_14_168", "15")

insert into "平台合作学校" ("平台id", "学校id", "合作课程数量") values ("item_book.2_14_176", "item_book.2_14_167", "30")

insert into "平台合作学校" ("平台id", "学校id", "合作课程数量") values ("item_book.2_14_176", "item_book.2_14_170", "45")

insert into "平台合作学校" ("平台id", "学校id", "合作课程数量") values ("item_book.2_14_178", "item_book.2_14_167", "50")

insert into "学校的开源课程" ("词条id", "开源课程名称", "课程id", "学校id", "课时", "主讲教师") values ("item_book.2_14_181", "零基础python入门编程", "item_book.2_14_174", "item_book.2_14_167", "10", "刘大侠")

insert into "学校的开源课程" ("词条id", "开源课程名称", "课程id", "学校id", "课时", "主讲教师") values ("item_book.2_14_182", "python基础到热门应用", "item_book.2_14_173", "item_book.2_14_167", "88", "李游")

insert into "学校的开源课程" ("词条id", "开源课程名称", "课程id", "学校id", "课时", "主讲教师") values ("item_book.2_14_183", "python应用实战", "item_book.2_14_171", "item_book.2_14_169", "66", "卢小平")

insert into "学校的开源课程" ("词条id", "开源课程名称", "课程id", "学校id", "课时", "主讲教师") values ("item_book.2_14_184", "深度学习从入门到应用", "item_book.2_14_175", "item_book.2_14_169", "100", "王建安")

insert into "学校的开源课程" ("词条id", "开源课程名称", "课程id", "学校id", "课时", "主讲教师") values ("item_book.2_14_185", "名师的英语私教课", "item_book.2_14_175", "item_book.2_14_167", "125", "李绮涵")

insert into "平台课程" ("开源课程id", "平台id", "是否直播", "课程时长", "价格") values ("item_book.2_14_181", "item_book.2_14_176", "是", "40分", "9.9")

insert into "平台课程" ("开源课程id", "平台id", "是否直播", "课程时长", "价格") values ("item_book.2_14_184", "item_book.2_14_179", "否", "44分", "10.8")

insert into "平台课程" ("开源课程id", "平台id", "是否直播", "课程时长", "价格") values ("item_book.2_14_183", "item_book.2_14_177", "否", "50分", "50.9")

insert into "平台课程" ("开源课程id", "平台id", "是否直播", "课程时长", "价格") values ("item_book.2_14_185", "item_book.2_14_178", "是", "60分", "66.7")

insert into "平台课程" ("开源课程id", "平台id", "是否直播", "课程时长", "价格") values ("item_book.2_14_185", "item_book.2_14_178", "是", "80分", "99")

