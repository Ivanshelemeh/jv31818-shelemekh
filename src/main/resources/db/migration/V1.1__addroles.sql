create table customer (
          id  int  unsigned not null auto_increment primary key
          references  product(id),
          name varchar(100) not null,
          email varchar (100) not null,
          phone varchar (10) not null,
          password varchar (10) not null

);

create table product (
        id int  unsigned not null auto_increment primary key
        references customer(id),
        name_product varchar (100) not null,
        final_price double (10,0) not null





);

create table checklist (
        id int  unsigned not null auto_increment primary key,
         address varchar (1000) not null,
        manager varchar (1000) not null




);

create table dogs_goods (
        id int  unsigned  not null auto_increment primary key,

        name_product varchar(1000) not null,
        quality varchar(100) not null

  );

create table category_product(
dogs_goods_id int not null references dogs_goods(id),
product_id int not null references  product(id),

primary key (dogs_goods_id,product_id)



);

create table roles (
id integer not null auto_increment primary key,
name varchar (100) not null


);

create table custom_roles(
customer_id integer not null references customer(id),
roles_id integer  not null references roles(id),

primary key (customer_id,roles_id)


);



