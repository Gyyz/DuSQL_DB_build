PRAGMA foreign_keys = ON;

CREATE TABLE "旅游消费" (
"消费段" int,
"占比" int
);

CREATE TABLE "出游次数" (
"出游数量段" int,
"占比" int
);

CREATE TABLE "旅游类型" (
"景点类型" text,
"占比" int
);

CREATE TABLE "出行交通方式" (
"出行方式" text,
"占比" int,
"同比增长" int
);

CREATE TABLE "旅游方式" (
"旅游方式" text,
"占比" int
);

CREATE TABLE "各省旅游收入排名" (
"省份" text,
"游客(万人次)" int,
"旅游收入(亿元)" int,
"排名" int
);

insert into "旅游消费" ("消费段", "占比") values ("0-300", "5%")

insert into "旅游消费" ("消费段", "占比") values ("301-1000", "70.8%")

insert into "旅游消费" ("消费段", "占比") values ("1001-5000", "20%")

insert into "旅游消费" ("消费段", "占比") values ("5000以上", "4%")

insert into "旅游消费" ("消费段", "占比") values ("0-300", "70.8%")

insert into "出游次数" ("出游数量段", "占比") values ("1-2次", "52%")

insert into "出游次数" ("出游数量段", "占比") values ("3-4次", "35%")

insert into "出游次数" ("出游数量段", "占比") values ("4-5次", "8.6%")

insert into "出游次数" ("出游数量段", "占比") values ("1-2次", "8.6%")

insert into "出游次数" ("出游数量段", "占比") values ("4-5次", "8.6%")

insert into "旅游类型" ("景点类型", "占比") values ("人文景点", "66.4%")

insert into "旅游类型" ("景点类型", "占比") values ("博物馆", "41.2%")

insert into "旅游类型" ("景点类型", "占比") values ("历史文化街区", "59.4%")

insert into "旅游类型" ("景点类型", "占比") values ("美术馆", "28.8%")

insert into "旅游类型" ("景点类型", "占比") values ("美术馆", "66.4%")

insert into "出行交通方式" ("出行方式", "占比", "同比增长") values ("高铁", "36.8%", "10")

insert into "出行交通方式" ("出行方式", "占比", "同比增长") values ("飞机", "18.4", "40%")

insert into "出行交通方式" ("出行方式", "占比", "同比增长") values ("自驾", "30.5", "10")

insert into "出行交通方式" ("出行方式", "占比", "同比增长") values ("飞机", "18.4", "10")

insert into "出行交通方式" ("出行方式", "占比", "同比增长") values ("飞机", "18.4", "40%")

insert into "旅游方式" ("旅游方式", "占比") values ("自由行", "45%")

insert into "旅游方式" ("旅游方式", "占比") values ("私人订制", "27%")

insert into "旅游方式" ("旅游方式", "占比") values ("跟团", "28%")

insert into "旅游方式" ("旅游方式", "占比") values ("自由行", "28%")

insert into "旅游方式" ("旅游方式", "占比") values ("跟团", "45%")

insert into "各省旅游收入排名" ("省份", "游客(万人次)", "旅游收入(亿元)", "排名") values ("江苏", "", "", "1")

insert into "各省旅游收入排名" ("省份", "游客(万人次)", "旅游收入(亿元)", "排名") values ("山东", "", "", "27")

insert into "各省旅游收入排名" ("省份", "游客(万人次)", "旅游收入(亿元)", "排名") values ("四川", "", "", "1")

insert into "各省旅游收入排名" ("省份", "游客(万人次)", "旅游收入(亿元)", "排名") values ("河南", "", "", "1")

insert into "各省旅游收入排名" ("省份", "游客(万人次)", "旅游收入(亿元)", "排名") values ("湖北", "", "", "1")

