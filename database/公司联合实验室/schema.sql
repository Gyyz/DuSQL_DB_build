PRAGMA foreign_keys = ON;

CREATE TABLE "公司" (
"词条id" int,
"名称" text,
"总部地点" text,
"公司类型" text,
primary key ("词条id")
);

CREATE TABLE "学校" (
"词条id" int,
"学校名称" text,
"成立时间" time,
"所在城市" text,
"所属省份" text,
"所属国家" text,
primary key ("词条id")
);

CREATE TABLE "联合实验室" (
"实验室名称" text,
"所属学校id" int,
"公司id" int,
"联合方向" text,
"开始时间" time,
"合作年数" int,
"论文产出数量" int,
foreign key("公司id") references "公司"("词条id"),
foreign key("所属学校id") references "学校"("词条id")
);

CREATE TABLE "海外研究中心" (
"研究中心" text,
"所在城市" text,
"所在国家" text,
"公司id" int,
"成立年份" time,
"员工数量" int,
foreign key("公司id") references "公司"("词条id")
);

insert into "公司" ("词条id", "名称", "总部地点", "公司类型") values ("item_enterprise_15_146", "百度", "北京海淀区西北旺", "研究型")

insert into "公司" ("词条id", "名称", "总部地点", "公司类型") values ("item_enterprise_15_147", "阿里", "北京朝阳区", "商业型")

insert into "公司" ("词条id", "名称", "总部地点", "公司类型") values ("item_enterprise_15_148", "腾讯", "北京海淀区中关村", "研究型")

insert into "公司" ("词条id", "名称", "总部地点", "公司类型") values ("item_enterprise_15_149", "京东", "北京大兴区", "研究型")

insert into "公司" ("词条id", "名称", "总部地点", "公司类型") values ("item_enterprise_15_150", "今日头条", "北京知春路", "商业型")

insert into "学校" ("词条id", "学校名称", "成立时间", "所在城市", "所属省份", "所属国家") values ("item_enterprise_15_151", "哈佛大学", "1900", "哈尔滨", "黑龙江", "美国")

insert into "学校" ("词条id", "学校名称", "成立时间", "所在城市", "所属省份", "所属国家") values ("item_enterprise_15_152", "卡耐基梅隆", "1940", "纽约", "江苏", "新加坡")

insert into "学校" ("词条id", "学校名称", "成立时间", "所在城市", "所属省份", "所属国家") values ("item_enterprise_15_153", "清华", "1940", "伦敦", "加利福尼亚", "中国")

insert into "学校" ("词条id", "学校名称", "成立时间", "所在城市", "所属省份", "所属国家") values ("item_enterprise_15_154", "北京大学", "1940", "北京", "维多利亚", "英国")

insert into "学校" ("词条id", "学校名称", "成立时间", "所在城市", "所属省份", "所属国家") values ("item_enterprise_15_155", "复旦大学", "1940", "南京", "广东", "印度")

insert into "联合实验室" ("实验室名称", "所属学校id", "公司id", "联合方向", "开始时间", "合作年数", "论文产出数量") values ("自然语言处理", "item_enterprise_15_155", "item_enterprise_15_149", "人工智能", "2010", "1", "10")

insert into "联合实验室" ("实验室名称", "所属学校id", "公司id", "联合方向", "开始时间", "合作年数", "论文产出数量") values ("信息检索", "item_enterprise_15_153", "item_enterprise_15_146", "智能硬件", "2016", "3", "50")

insert into "联合实验室" ("实验室名称", "所属学校id", "公司id", "联合方向", "开始时间", "合作年数", "论文产出数量") values ("模式识别", "item_enterprise_15_155", "item_enterprise_15_146", "语言理解", "2010", "1", "10")

insert into "联合实验室" ("实验室名称", "所属学校id", "公司id", "联合方向", "开始时间", "合作年数", "论文产出数量") values ("深度学习", "item_enterprise_15_152", "item_enterprise_15_150", "信息检索", "2010", "3", "50")

insert into "联合实验室" ("实验室名称", "所属学校id", "公司id", "联合方向", "开始时间", "合作年数", "论文产出数量") values ("图像识别", "item_enterprise_15_152", "item_enterprise_15_148", "图像处理", "2010", "1", "50")

insert into "海外研究中心" ("研究中心", "所在城市", "所在国家", "公司id", "成立年份", "员工数量") values ("西雅图研究中心", "西雅图", "美国", "item_enterprise_15_149", "2014", "100")

insert into "海外研究中心" ("研究中心", "所在城市", "所在国家", "公司id", "成立年份", "员工数量") values ("硅谷研究中心", "洛杉矶", "美国", "item_enterprise_15_149", "2018", "300")

insert into "海外研究中心" ("研究中心", "所在城市", "所在国家", "公司id", "成立年份", "员工数量") values ("欧洲研究院", "巴黎", "法国", "item_enterprise_15_150", "2018", "300")

insert into "海外研究中心" ("研究中心", "所在城市", "所在国家", "公司id", "成立年份", "员工数量") values ("硅谷研究中心", "西雅图", "法国", "item_enterprise_15_146", "2018", "300")

insert into "海外研究中心" ("研究中心", "所在城市", "所在国家", "公司id", "成立年份", "员工数量") values ("西雅图研究中心", "巴黎", "美国", "item_enterprise_15_147", "2014", "100")

