create database  Models;

use Models;


-- ������
drop table if exists M_Order;
create table M_Order(
  id int ,
  pet_id  int , -- ����������
  quan_tity int, -- ����
  ship_Date datetime, -- ��������
  status enum('����','��׼','����'), -- ״̬
  complter boolean default  false -- ���
);

insert into M_Order(id, pet_id, quan_tity, ship_Date, status, complter) VALUES
                                                                               (1,1,200,'2018-10-30','����',true );

-- ����
drop table if exists  M_Category;
create table M_Category(
  id int ,
  name varchar(20)
);

insert into M_Category(id,name) values(1,'����'),(2,'����'),(3,'����'),(1,'����');
select * from M_Category;
-- �û���
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

-- ��ǩ
drop table if exists  M_Tag;
create table M_Tag(
  id int ,
  tags_id int,
  name varchar(20)
);
insert into M_Tag(id,name) values (1,'����'),(2,'����'),(3,'����');



select * from M_Tag;
-- ����
drop table if exists M_Pet;
create table M_Pet(
  id int ,
  category_id int , -- ����M_Category��
  name varchar(20),
  photo_urls varchar(20),
  tags_id int, -- ����M_Tag��
  status enum('����','����','�ѳ���')
);
delete from m_pet
where id = 2;

insert into M_Pet values (1,1,'��ë','xxx',1,'����'),(2,2,'����','xxx',1,'����');
select * from M_Pet;

delete from  M_Pet  where id = 2;

update m_pet
set id= 2 ,
        category_id = 2,
        name ='����',
        photo_urls = 'aaa',
        tags = 2,
        status = '�ѳ���';

insert into M_Pet( category_id, name, photo_urls, tags, status) VALUES (1,'����','û��ͼƬ',1,'������');
select * from M_Pet;

create table Api_Response(
  code int ,
  type_id int,
  message varchar(20)
);


-- ������������Ĺ�ϵ
select M_Order.*,M_Pet.id from M_Order left join M_Pet on
    M_Order.pet_id = M_Pet.id;

--  �û����붩����Ĺ�ϵ
select M_User.*,M_Order.* from M_User left join M_Order on
    M_User.id = M_Order.id;

-- ��ǩ��������Ĺ�ϵ
select M_Tag.* ,M_Category.* from M_Tag left join M_Category on M_Tag.id = M_Category.id;

-- �����������Ĺ�ϵ
select M_Pet.*,M_Category.* from M_Pet left join M_Category on
    M_Pet.category_id = M_Category.id;

select * from M_Category;

-- ��������ǩ��Ĺ�ϵ
select M_Pet.*,M_Tag.* from M_Pet left join M_Tag on
    M_Pet.tags_id = M_Tag.id;

-- ͼƬ��������Ĺ�ϵ
select Api_Response.*,M_Category.* from Api_Response left join M_Category on
    Api_Response.type_id = M_Category.id;