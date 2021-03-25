PRAGMA foreign_keys = ON;

CREATE TABLE "城市" (
"词条id" int,
"名称" text,
"气候地带" text,
"所属国家" text,
"所属洲" text,
primary key ("词条id")
);

CREATE TABLE "动物" (
"词条id" int,
"中文学名" text,
"所属纲" text,
"所属科" text,
"食性" text,
"濒危级别" text,
"保护级别" text,
primary key ("词条id")
);

CREATE TABLE "动物分布城市" (
"动物id" int,
"城市id" int,
"现存数量" int,
foreign key("城市id") references "城市"("词条id"),
foreign key("动物id") references "动物"("词条id")
);

CREATE TABLE "动物电影" (
"词条id" int,
"影片名" text,
"动物id" int,
"拍摄国家" text,
"类型" text,
primary key ("词条id"),
foreign key("动物id") references "动物"("词条id")
);

CREATE TABLE "动物寓言故事" (
"动物id" int,
"寓言故事" text,
"形象" text,
foreign key("动物id") references "动物"("词条id")
);

insert into "城市" ("词条id", "名称", "气候地带", "所属国家", "所属洲") values ("item_animal_food_9_66", "清迈", "热带", "泰国", "欧洲")

insert into "城市" ("词条id", "名称", "气候地带", "所属国家", "所属洲") values ("item_animal_food_9_67", " 里约热内卢", "亚热带", "缅甸", "亚洲")

insert into "城市" ("词条id", "名称", "气候地带", "所属国家", "所属洲") values ("item_animal_food_9_68", " 莫斯科", "温带", "中国", "非洲")

insert into "城市" ("词条id", "名称", "气候地带", "所属国家", "所属洲") values ("item_animal_food_9_69", "四川", "亚寒带", "俄罗斯", "北美洲")

insert into "城市" ("词条id", "名称", "气候地带", "所属国家", "所属洲") values ("item_animal_food_9_70", "台湾", "寒带", "巴西", "南美洲")

insert into "动物" ("词条id", "中文学名", "所属纲", "所属科", "食性", "濒危级别", "保护级别") values ("item_animal_food_9_71", "大象", "哺乳纲", "象科", "食肉", "灭绝", "一级")

insert into "动物" ("词条id", "中文学名", "所属纲", "所属科", "食性", "濒危级别", "保护级别") values ("item_animal_food_9_72", "鸵鸟", "鸟纲", "猴科", "食草", "野生灭绝", "二级")

insert into "动物" ("词条id", "中文学名", "所属纲", "所属科", "食性", "濒危级别", "保护级别") values ("item_animal_food_9_73", "青蛙", "爬行纲", "猫科", "杂食", "极危", "一级")

insert into "动物" ("词条id", "中文学名", "所属纲", "所属科", "食性", "濒危级别", "保护级别") values ("item_animal_food_9_74", "眼镜蛇", "两栖纲", "蛙科", "食草", "濒危", "二级")

insert into "动物" ("词条id", "中文学名", "所属纲", "所属科", "食性", "濒危级别", "保护级别") values ("item_animal_food_9_75", "蝴蝶", "昆虫纲", "蛇科", "食肉", "易危", "一级")

insert into "动物分布城市" ("动物id", "城市id", "现存数量") values ("item_animal_food_9_71", "item_animal_food_9_70", "10")

insert into "动物分布城市" ("动物id", "城市id", "现存数量") values ("item_animal_food_9_71", "item_animal_food_9_69", "100000")

insert into "动物分布城市" ("动物id", "城市id", "现存数量") values ("item_animal_food_9_71", "item_animal_food_9_69", "10")

insert into "动物分布城市" ("动物id", "城市id", "现存数量") values ("item_animal_food_9_73", "item_animal_food_9_67", "100000")

insert into "动物分布城市" ("动物id", "城市id", "现存数量") values ("item_animal_food_9_74", "item_animal_food_9_69", "100000")

insert into "动物电影" ("词条id", "影片名", "动物id", "拍摄国家", "类型") values ("item_animal_food_9_76", "忠犬八公的故事", "item_animal_food_9_74", "美国", "剧情")

insert into "动物电影" ("词条id", "影片名", "动物id", "拍摄国家", "类型") values ("item_animal_food_9_77", "帝企鹅日记", "item_animal_food_9_74", "日本", "纪录片")

insert into "动物电影" ("词条id", "影片名", "动物id", "拍摄国家", "类型") values ("item_animal_food_9_78", "一条狗的使命", "item_animal_food_9_71", "德国", "科幻")

insert into "动物电影" ("词条id", "影片名", "动物id", "拍摄国家", "类型") values ("item_animal_food_9_79", "导盲犬小Q", "item_animal_food_9_74", "加拿大", "科幻")

insert into "动物电影" ("词条id", "影片名", "动物id", "拍摄国家", "类型") values ("item_animal_food_9_80", "咕咕是一只猫", "item_animal_food_9_73", "澳大利亚", "科幻")

insert into "动物寓言故事" ("动物id", "寓言故事", "形象") values ("item_animal_food_9_74", "兔死狐悲", "好")

insert into "动物寓言故事" ("动物id", "寓言故事", "形象") values ("item_animal_food_9_73", "东郭先生", "坏")

insert into "动物寓言故事" ("动物id", "寓言故事", "形象") values ("item_animal_food_9_74", "狐假虎威", "好")

insert into "动物寓言故事" ("动物id", "寓言故事", "形象") values ("item_animal_food_9_75", "庖丁解牛", "好")

insert into "动物寓言故事" ("动物id", "寓言故事", "形象") values ("item_animal_food_9_75", "黔驴之技", "好")

