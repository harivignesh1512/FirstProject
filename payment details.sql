
create table products(
productid int primary key,
name varchar(50),
description text,
price decimal(10,2),
quantity int);

create table customers(
id int primary key,
name varchar(50),
email varchar(50),
phone int,
address varchar(50));

create table orders(
orderid int primary key,
id int,
orderdate date,
totalamount decimal(10,2),
foreign key (id) references customers(id));

create table orderdetails(
orderdetailid int primary key,
orderid int,
productid int,
quantity int,
unitprice decimal(10,2),
foreign key (orderid) references orders (orderid),
foreign key (productid) references products (productid));

create table payments(
paymentid int primary key,
orderid int,
paymentdate date,
amount decimal(10,2),
paymentmethod varchar(50),
foreign key (orderid) references orderdetails (orderid));		




	
