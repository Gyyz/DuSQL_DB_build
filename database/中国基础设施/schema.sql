PRAGMA foreign_keys = ON;

CREATE TABLE "中国城市供水生产能力" (
"年份" time,
"供水生成能力" int,
"供水管道长度" int,
"供水总量" int,
"供水量增长率" int,
"生活用水供水量" int,
"生产用水供水量" int,
"用水人口" int,
"用水人口同比增长" int,
"人均日生活用水量" int,
"人均用水量同比增长" int
);

CREATE TABLE "中国发电量及电力消费量" (
"年份" time,
"发电量" int,
"电力消费" int
);

CREATE TABLE "中国电力结构及发电量" (
"年份" time,
"发电类型" text,
"发电量" int
);

CREATE TABLE "中国电力装机量" (
"年份" time,
"发电类型" text,
"新增装机量(MW)" int,
"累计装机量(MW)" int
);

CREATE TABLE "各省发电量及电力消费量" (
"省份" text,
"发电量(亿千瓦小时)" int,
"电力消费(亿千瓦小时)" int
);

CREATE TABLE "各省生物质发电量" (
"省份" text,
"累计并网装机容量(万千瓦)" int,
"农林生物质发电量(亿千瓦小时)" int,
"生活垃圾焚烧发电量(亿千瓦小时)" int,
"沼气发电量(亿千瓦小时)" int
);

insert into "中国城市供水生产能力" ("年份", "供水生成能力", "供水管道长度", "供水总量", "供水量增长率", "生活用水供水量", "生产用水供水量", "用水人口", "用水人口同比增长", "人均日生活用水量", "人均用水量同比增长") values ("2006", "25708.36万立方米/日", "430397公里", "496.75亿吨", "-7.13%", "222亿吨", "162亿吨", "32303万人", "0.97", "171升", "-5.27")

insert into "中国城市供水生产能力" ("年份", "供水生成能力", "供水管道长度", "供水总量", "供水量增长率", "生活用水供水量", "生产用水供水量", "用水人口", "用水人口同比增长", "人均日生活用水量", "人均用水量同比增长") values ("2007", "29678.26万立方米/日", "710206公里", "560.47亿吨", "2.53%", "287亿吨", "252亿吨", "45113万人", "7.63%", "188升", "1%")

insert into "中国城市供水生产能力" ("年份", "供水生成能力", "供水管道长度", "供水总量", "供水量增长率", "生活用水供水量", "生产用水供水量", "用水人口", "用水人口同比增长", "人均日生活用水量", "人均用水量同比增长") values ("2008", "29678.26万立方米/日", "710206公里", "496.75亿吨", "2.53%", "287亿吨", "252亿吨", "45113万人", "7.63%", "171升", "-5.27")

insert into "中国城市供水生产能力" ("年份", "供水生成能力", "供水管道长度", "供水总量", "供水量增长率", "生活用水供水量", "生产用水供水量", "用水人口", "用水人口同比增长", "人均日生活用水量", "人均用水量同比增长") values ("2009", "29678.26万立方米/日", "710206公里", "560.47亿吨", "-7.13%", "222亿吨", "162亿吨", "32303万人", "0.97", "171升", "1%")

insert into "中国城市供水生产能力" ("年份", "供水生成能力", "供水管道长度", "供水总量", "供水量增长率", "生活用水供水量", "生产用水供水量", "用水人口", "用水人口同比增长", "人均日生活用水量", "人均用水量同比增长") values ("2015", "29678.26万立方米/日", "710206公里", "496.75亿吨", "2.53%", "287亿吨", "162亿吨", "45113万人", "0.97", "171升", "-5.27")

insert into "中国发电量及电力消费量" ("年份", "发电量", "电力消费") values ("2008", "2174亿千瓦小时", "34541亿千瓦小时")

insert into "中国发电量及电力消费量" ("年份", "发电量", "电力消费") values ("2009", "2550亿千瓦小时", "63076亿千瓦小时")

insert into "中国发电量及电力消费量" ("年份", "发电量", "电力消费") values ("2010", "2550亿千瓦小时", "34541亿千瓦小时")

insert into "中国发电量及电力消费量" ("年份", "发电量", "电力消费") values ("2011", "2174亿千瓦小时", "34541亿千瓦小时")

insert into "中国发电量及电力消费量" ("年份", "发电量", "电力消费") values ("2017", "2550亿千瓦小时", "34541亿千瓦小时")

insert into "中国电力结构及发电量" ("年份", "发电类型", "发电量") values ("2016", "水电", "11748亿千瓦小时")

insert into "中国电力结构及发电量" ("年份", "发电类型", "发电量") values ("2017", "火电", "43278亿千瓦小时")

insert into "中国电力结构及发电量" ("年份", "发电类型", "发电量") values ("2018", "核电", "2132亿千瓦小时")

insert into "中国电力结构及发电量" ("年份", "发电类型", "发电量") values ("2019", "风电", "2420亿千瓦小时")

insert into "中国电力结构及发电量" ("年份", "发电类型", "发电量") values ("2020", "太阳能", "674亿千瓦小时")

insert into "中国电力装机量" ("年份", "发电类型", "新增装机量(MW)", "累计装机量(MW)") values ("2009", "风电", "", "")

insert into "中国电力装机量" ("年份", "发电类型", "新增装机量(MW)", "累计装机量(MW)") values ("2010", "太阳能", "", "")

insert into "中国电力装机量" ("年份", "发电类型", "新增装机量(MW)", "累计装机量(MW)") values ("2011", "天然气", "", "")

insert into "中国电力装机量" ("年份", "发电类型", "新增装机量(MW)", "累计装机量(MW)") values ("2015", "天然气", "", "")

insert into "中国电力装机量" ("年份", "发电类型", "新增装机量(MW)", "累计装机量(MW)") values ("2017", "风电", "", "")

insert into "各省发电量及电力消费量" ("省份", "发电量(亿千瓦小时)", "电力消费(亿千瓦小时)") values ("北京", "", "")

insert into "各省发电量及电力消费量" ("省份", "发电量(亿千瓦小时)", "电力消费(亿千瓦小时)") values ("天津", "", "")

insert into "各省发电量及电力消费量" ("省份", "发电量(亿千瓦小时)", "电力消费(亿千瓦小时)") values ("河北", "", "")

insert into "各省发电量及电力消费量" ("省份", "发电量(亿千瓦小时)", "电力消费(亿千瓦小时)") values ("山西", "", "")

insert into "各省发电量及电力消费量" ("省份", "发电量(亿千瓦小时)", "电力消费(亿千瓦小时)") values ("内蒙古", "", "")

insert into "各省生物质发电量" ("省份", "累计并网装机容量(万千瓦)", "农林生物质发电量(亿千瓦小时)", "生活垃圾焚烧发电量(亿千瓦小时)", "沼气发电量(亿千瓦小时)") values ("", "", "", "", "")

insert into "各省生物质发电量" ("省份", "累计并网装机容量(万千瓦)", "农林生物质发电量(亿千瓦小时)", "生活垃圾焚烧发电量(亿千瓦小时)", "沼气发电量(亿千瓦小时)") values ("", "", "", "", "")

insert into "各省生物质发电量" ("省份", "累计并网装机容量(万千瓦)", "农林生物质发电量(亿千瓦小时)", "生活垃圾焚烧发电量(亿千瓦小时)", "沼气发电量(亿千瓦小时)") values ("", "", "", "", "")

insert into "各省生物质发电量" ("省份", "累计并网装机容量(万千瓦)", "农林生物质发电量(亿千瓦小时)", "生活垃圾焚烧发电量(亿千瓦小时)", "沼气发电量(亿千瓦小时)") values ("", "", "", "", "")

insert into "各省生物质发电量" ("省份", "累计并网装机容量(万千瓦)", "农林生物质发电量(亿千瓦小时)", "生活垃圾焚烧发电量(亿千瓦小时)", "沼气发电量(亿千瓦小时)") values ("", "", "", "", "")

