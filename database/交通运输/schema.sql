PRAGMA foreign_keys = ON;

CREATE TABLE "铁路运输旅客" (
"年份" time,
"铁路营业里程" int,
"里程同比增长" int,
"高铁里程占比" int,
"旅客发送量" int,
"旅客同比增长" int,
"客运周转量" int,
"周转量同比增长" int,
"高铁承运占比" int
);

CREATE TABLE "铁路运输货物" (
"年份" time,
"货运发送量" int,
"发送量同比增长" int,
"货运周转量" int,
"周转量同比增长" int
);

CREATE TABLE "民航航线" (
"年份" time,
"民用航空颁证机场数量" int,
"定期通航机场数量" int,
"通航城市数量" int,
"飞机数量" int,
"航线里程" int,
"地级市覆盖率" int,
"县覆盖率" int,
"国际航线数量" int,
"通航国家数量" int
);

CREATE TABLE "民航运输旅客" (
"年份" time,
"旅客运输量" int,
"旅客同比增长" int,
"旅客周转量" int,
"周转量同比增长" int
);

CREATE TABLE "民航运输货物" (
"年份" time,
"货邮运输量" int,
"运输量同比增长" int,
"货邮周转量" int,
"周转量同比增长" int
);

insert into "铁路运输旅客" ("年份", "铁路营业里程", "里程同比增长", "高铁里程占比", "旅客发送量", "旅客同比增长", "客运周转量", "周转量同比增长", "高铁承运占比") values ("2012", "9", "2.4%", "0%", "18.9", "20%", "9812", "5%", "0%")

insert into "铁路运输旅客" ("年份", "铁路营业里程", "里程同比增长", "高铁里程占比", "旅客发送量", "旅客同比增长", "客运周转量", "周转量同比增长", "高铁承运占比") values ("2015", "12.7", "5.6%", "20%", "30.8", "63%", "13457", "37%", "56.4%")

insert into "铁路运输旅客" ("年份", "铁路营业里程", "里程同比增长", "高铁里程占比", "旅客发送量", "旅客同比增长", "客运周转量", "周转量同比增长", "高铁承运占比") values ("2014", "9", "2.4%", "0%", "18.9", "63%", "13457", "5%", "0%")

insert into "铁路运输旅客" ("年份", "铁路营业里程", "里程同比增长", "高铁里程占比", "旅客发送量", "旅客同比增长", "客运周转量", "周转量同比增长", "高铁承运占比") values ("2013", "9", "2.4%", "0%", "30.8", "63%", "13457", "5%", "0%")

insert into "铁路运输旅客" ("年份", "铁路营业里程", "里程同比增长", "高铁里程占比", "旅客发送量", "旅客同比增长", "客运周转量", "周转量同比增长", "高铁承运占比") values ("2017", "9", "5.6%", "0%", "18.9", "20%", "9812", "5%", "0%")

insert into "铁路运输货物" ("年份", "货运发送量", "发送量同比增长", "货运周转量", "周转量同比增长") values ("2012", "2.9", "5%", "4500", "2%")

insert into "铁路运输货物" ("年份", "货运发送量", "发送量同比增长", "货运周转量", "周转量同比增长") values ("2017", "36.8", "14%", "26322", "8.7%")

insert into "铁路运输货物" ("年份", "货运发送量", "发送量同比增长", "货运周转量", "周转量同比增长") values ("2017", "36.8", "14%", "4500", "8.7%")

insert into "铁路运输货物" ("年份", "货运发送量", "发送量同比增长", "货运周转量", "周转量同比增长") values ("2012", "2.9", "5%", "4500", "8.7%")

insert into "铁路运输货物" ("年份", "货运发送量", "发送量同比增长", "货运周转量", "周转量同比增长") values ("2017", "2.9", "14%", "26322", "8.7%")

insert into "民航航线" ("年份", "民用航空颁证机场数量", "定期通航机场数量", "通航城市数量", "飞机数量", "航线里程", "地级市覆盖率", "县覆盖率", "国际航线数量", "通航国家数量") values ("2013", "100", "100", "100", "1000", "200万", "60%", "40%", "300", "20")

insert into "民航航线" ("年份", "民用航空颁证机场数量", "定期通航机场数量", "通航城市数量", "飞机数量", "航线里程", "地级市覆盖率", "县覆盖率", "国际航线数量", "通航国家数量") values ("2018", "229", "228", "224", "3261", "700万公司", "88.5%", "76.5%", "784", "61")

insert into "民航航线" ("年份", "民用航空颁证机场数量", "定期通航机场数量", "通航城市数量", "飞机数量", "航线里程", "地级市覆盖率", "县覆盖率", "国际航线数量", "通航国家数量") values ("2013", "100", "228", "224", "1000", "700万公司", "60%", "40%", "300", "20")

insert into "民航航线" ("年份", "民用航空颁证机场数量", "定期通航机场数量", "通航城市数量", "飞机数量", "航线里程", "地级市覆盖率", "县覆盖率", "国际航线数量", "通航国家数量") values ("2013", "229", "100", "100", "3261", "200万", "88.5%", "76.5%", "784", "61")

insert into "民航航线" ("年份", "民用航空颁证机场数量", "定期通航机场数量", "通航城市数量", "飞机数量", "航线里程", "地级市覆盖率", "县覆盖率", "国际航线数量", "通航国家数量") values ("2018", "229", "100", "224", "1000", "200万", "60%", "76.5%", "300", "20")

insert into "民航运输旅客" ("年份", "旅客运输量", "旅客同比增长", "旅客周转量", "周转量同比增长") values ("2013", "5209万", "2%", "1880", "13.4%")

insert into "民航运输旅客" ("年份", "旅客运输量", "旅客同比增长", "旅客周转量", "周转量同比增长") values ("2014", "45720万", "12%", "8802", "20%")

insert into "民航运输旅客" ("年份", "旅客运输量", "旅客同比增长", "旅客周转量", "周转量同比增长") values ("2015", "5209万", "2%", "1880", "13.4%")

insert into "民航运输旅客" ("年份", "旅客运输量", "旅客同比增长", "旅客周转量", "周转量同比增长") values ("2016", "5209万", "2%", "1880", "20%")

insert into "民航运输旅客" ("年份", "旅客运输量", "旅客同比增长", "旅客周转量", "周转量同比增长") values ("2018", "5209万", "2%", "8802", "13.4%")

insert into "民航运输货物" ("年份", "货邮运输量", "运输量同比增长", "货邮周转量", "周转量同比增长") values ("2013", "120", "2.3%", "50", "2%")

insert into "民航运输货物" ("年份", "货邮运输量", "运输量同比增长", "货邮周转量", "周转量同比增长") values ("2018", "541", "10%", "192", "9.2%")

insert into "民航运输货物" ("年份", "货邮运输量", "运输量同比增长", "货邮周转量", "周转量同比增长") values ("2013", "541", "10%", "50", "2%")

insert into "民航运输货物" ("年份", "货邮运输量", "运输量同比增长", "货邮周转量", "周转量同比增长") values ("2013", "120", "2.3%", "50", "2%")

insert into "民航运输货物" ("年份", "货邮运输量", "运输量同比增长", "货邮周转量", "周转量同比增长") values ("2013", "541", "10%", "50", "2%")

