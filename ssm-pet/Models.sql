create database  Models;

use Models;


-- 订购表
drop table if exists M_Order;
create table M_Order(
  id int ,
  pet_id  int , -- 与宠物表连接
  quan_tity int, -- 数量
  ship_Date datetime, -- 发货日期
  status enum('放置','批准','交付'), -- 状态
  complter boolean default  false -- 完成
);

insert into M_Order(id, pet_id, quan_tity, ship_Date, status, complter) VALUES
                                                                               (1,1,200,'2018-10-30','交付',true );

-- 类别表
drop table if exists  M_Category;
create table M_Category(
  id int ,
  name varchar(20)
);

insert into M_Category(id,name) values(1,'兔子'),(2,'鲨鱼'),(3,'蜂鸟'),(1,'二哈');
select * from M_Category;
-- 用户表
drop table if exists M_User;
create table M_User(
  id int ,
  username varchar(20),
  first_name varchar(20),
  last_name varchar(20),
  email varchar(20),
  password varchar(20),
  phone varchar(20),
  userStatus int
);

-- 标签
drop table if exists  M_Tag;
create table M_Tag(
  id int ,
  tags_id int,
  name varchar(20)
);
insert into M_Tag(id,name) values (1,'爬行'),(2,'哺乳'),(3,'飞禽');



select * from M_Tag;
-- 宠物
drop table if exists M_Pet;
create table M_Pet(
  id int ,
  category_id int , -- 关联M_Category表
  name varchar(20),
  photo_urls varchar(20),
  tags_id int, -- 关联M_Tag表
  status enum('可用','待定','已出售')
);
delete from m_pet
where id = 2;

insert into M_Pet values (1,1,'金毛','xxx',1,'待定'),(2,2,'二哈','xxx',1,'可用');
select * from M_Pet;

delete from  M_Pet  where id = 2;

update m_pet
set id= 2 ,
        category_id = 2,
        name ='金鱼',
        photo_urls = 'aaa',
        tags = 2,
        status = '已出售';

insert into M_Pet( category_id, name, photo_urls, tags, status) VALUES (1,'二哈','没有图片',1,'待出售');
select * from M_Pet;

create table Api_Response(
  code int ,
  type_id int,
  message varchar(20)
);


-- 订购表与宠物表的关系
select M_Order.*,M_Pet.id from M_Order left join M_Pet on
    M_Order.pet_id = M_Pet.id;

--  用户表与订购表的关系
select M_User.*,M_Order.* from M_User left join M_Order on
    M_User.id = M_Order.id;

-- 标签表与类别表的关系
select M_Tag.* ,M_Category.* from M_Tag left join M_Category on M_Tag.id = M_Category.id;

-- 宠物表与类别表的关系
select M_Pet.*,M_Category.* from M_Pet left join M_Category on
    M_Pet.category_id = M_Category.id;

select * from M_Category;

-- 宠物表与标签表的关系
select M_Pet.*,M_Tag.* from M_Pet left join M_Tag on
    M_Pet.tags_id = M_Tag.id;

-- 图片表与类别表的关系
select Api_Response.*,M_Category.* from Api_Response left join M_Category on
    Api_Response.type_id = M_Category.id;