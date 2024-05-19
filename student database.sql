create database school;
use school;
create table student(
id int auto_increment primary key,
f_name varchar(50) not null,
l_name varchar(50) not null,
email varchar(50) unique not null,
dob date not null);

create table course(
c_id int auto_increment primary key,
c_name varchar(50) not null,
c_code varchar(30) unique not null);

create table enroll(
e_id int auto_increment primary key,
id int,
c_id int,
enroll_date date not null,
grade decimal(3,2) check (grade between 0.00 and 4.00),
foreign key (id) references student(id),
foreign key (c_id) references course(c_id)
);

insert into student (f_name,l_name,email,dob) values
('alice','bob','alice@gmail.com','2005-3-10'),
('ice','ob','ice@gmail.com','2006-3-10');

insert into course(c_name,c_code) values
('maths','101'),
('science',102);

insert into enroll (id,c_id,enroll_date,grade) values
(1,1,'2004-07-09',3.5),
(2,2,'2005-07-09',3.9),
(3,3,'2007-07-09',4.5);

select * from student;

select * from course;

select e.e_id,s.f_name,s.l_name,c.c_name,e.enroll_date,e.grade from enroll e
join student s on e.id=s.id
join course c on e.c_id=c.c_id;

select c.c_name,c.c_code,e.grade from enroll e
join course c on e.c_id=c.c_id
where e.student_id=1;



































