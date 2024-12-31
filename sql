create database de_project;
use de_project;
create table test (sno int , name varchar(100));
insert into test (sno,name) values (2,'nandini');
select * from test;
update test set name='sbgowtham', sno=3 where sno =1;
delete from test where sno=3;
truncate table test;
