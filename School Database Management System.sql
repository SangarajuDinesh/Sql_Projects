show databases;
create database school;
show databases;
use school;
create table student_details
(
student_id int primary key,
first_name varchar(30) not null,
surname varchar(20) not null,
date_of_birth int not null,
age int,
gender varchar(6),
address varchar(20),
mobile varchar(10) not null
);
show tables;
create table student_record
(
Student_id int primary key,
first_name varchar(30) not null,
surname varchar(20) not null,
course_code varchar(30),
maths int,
english int,
biology int, 
chemistry int);
show tables;
desc student_details;
insert into student_details values (4,'Balaji','Naick',27/4/2002,23,'male','Punganoor','7569605555'),(2,'Mahesh','Jepiti',25/3/2001,24,'male','Chithoor','9876543210'),(3,'Afzal','Sodhanapalli',15/2/2000,25,'male','Madanapalli','1234567890');
alter table student_details drop column date_of_birth;
select * from student_details;
insert into student_details values (5,'Suresh', 'pulicherla',23,'male','Kurnool','8976543210');
select * from student_details;
desc student_record;
insert into student_record values 
(1,'Dinesh','Sangaraju','4321',98,95,85,80),
(2,'Mahesh','Jepiti','4213',96,87,90,85),
(3,'Afzal','Sodhanapalli','4132',87,88,89,90),
(4,'Balaji','naik','3142',76,77,78,79),
(5,'suresh','pulicherla','4321',85,86,87,88); 
select * from student_record;
alter table student_details 
add column date_of_birth varchar(10);
alter table student_details
add column email varchar(30);
select * from student_details;
update student_details
set date_of_birth = '20/01/2002'
where Student_id<=3;
update student_details
set date_of_birth = '17/7/2001'
where student_id>3;
update student_details
set date_of_birth='15/3/2001'
where student_id=2;
update student_details
set date_of_birth='27/6/2001'
where student_id=3;
update student_details
set date_of_birth='3/2/2002'
where student_id=4;
update student_details
set date_of_birth='22/4/2001'
where student_id=5;
update student_details
set email='sangarajudinesh@gmail.com'
where student_id=1;
update student_details
set email = 'Jepitimahesh@gmail.com'
where student_id=2;
update student_details
set email = 'SmdAfzal786@gmail.com'
where student_id=3;
update student_details
set email = 'BalajiNaick@gmail.com'
where student_id=4;
update student_details
set email = 'sureshPulicherla@gmail.com'
where student_id=5;
alter table student_details rename column surname to last_name;
alter table student_details modify age int;
delete from student_details
where Student_id=4;
select * from student_details
where age<=23;
select first_name,age+1 from student_details;
select * from student_details
order by age;
select * from student_details
order by first_name;
select * from student_details
order by first_name desc;
select Student_id,course_code,maths,english,biology,chemistry from student_record top limit 2;
