/*
khaled rabah elshorafa      id:120190878
hosam hasan abohelal        id:120190970
yousef abdellatef khalaf    id:120190876
abdnaser jehad abozbeda     id:120192288 
mohamed samer aboamsha      id:120192262
Ghada khamis banat          id:120192233
*/



use company
go

create table department(
DID int primary key identity(100,10),
DName nvarchar(30) not null,
)

 
create table employee(
ID int primary key identity(1,1),
fname nvarchar(20) not null,
lname nvarchar(20),
PhoneNum nvarchar(13),
DOB date,
DID int foreign key references department)


create table manger(
ID int foreign key references employee unique,
mname nvarchar(30),
DID int foreign key references department not null 
)

create table products(
PID int primary key identity(1000,100)و
pname nvarchar(30),
timesofPurchasing int)

create table droped(
id int)

drop table droped

alter table employee add address nvarchar(40)

alter table employee drop column address

alter table manger alter column  mname nvarchar(40)

insert into department (DName) values ('Purchasing')
insert into department (DName) values ('Human Resource Management')
insert into department (DName) values ('Accounting and Finance')
insert into department (DName) values ('Production')


insert into employee (fname,lname,PhoneNum,DOB,DID) 
values ('khaled','elshorafa','0597','2001-7-5',130)

insert into employee (fname,lname,PhoneNum,DOB,DID) 
values ('hosam','abo helal','0598','2001-8-19',120)

insert into employee (fname,lname,PhoneNum,DOB,DID) 
values ('naser','abo zbeda','0599','2001-12-29',100)

insert into employee (fname,lname,PhoneNum,DOB,DID) 
values ('yousef','khalaf','0590','2001-7-2',110)

insert into employee (fname,lname,PhoneNum,DOB,DID) 
values ('mohamed','abo amsha','0588','2001-2-12',130)

insert into employee (fname,lname,PhoneNum,DOB,DID) 
values ('aseel','elshorafa','0589','1998-6-25',120)

insert into employee (fname,lname,PhoneNum,DOB,DID) 
values ('mohamed','skaik','0580','2002-5-5',100)

insert into employee (fname,lname,PhoneNum,DOB,DID) 
values ('ans',null,'05','2001-2-2',110)


insert into manger  values (1,'khaled',130)
insert into manger  values (2,'hosam',120)
insert into manger  values (3,'naser',100)
insert into manger  values (4,'yousef',110)
insert into manger  values (7,'mohamed',100)


insert into products (pname,timesofPurchasing) values('socks',1000)
insert into products (pname,timesofPurchasing) values('hats',2200)

select *
from department

select *
from employee

select *
from manger

select *
from products

delete from employee 
where ID=5

select ID
from employee


update employee
set DID = 100
where ID=7

select DID
from employee
where ID=7


select fname, lname,concat(fname,' ',lname) as [fullname]
from employee

select fname+''+lname as [fullname]
from employee

select top 3 *
from employee

select top 1 * 
from manger

select *
from employee
where fname like 'mo%'

select *
from employee
where fname like '  %a%'

select * 
from products
order by timesofPurchasing asc


select * 
from products
order by timesofPurchasing (dec)

select *
from employee
where ID>5

select *
from employee
where ID>5 and fname like '%s%'

select ID, fname+' '+lname as [fullname]
from employee
where ID<5 and ID>2


select count(*)  as [count]
from manger
group by DID


insert into manger  values (7,'ans',130)

select count(*)  as [count],DID
from manger
group by DID 
having count(*)=2

select max(timesofPurchasing)
from products

select min(timesofPurchasing)
from products

select sum(timesofPurchasing)
from products

select m.ID, fname+' '+lname as [fullname],DName
from employee e, manger m, department d
where e.ID=m.ID and m.DID = d.DID

select DName , ID,MName
from department  d join /* or iner join there is no diffrence*/  manger m
on d.DID=m.DID


select DName , ID,MName
from department  d left outer join  manger m
on d.DID=m.DID

select DName , ID,MName
from department  d right outer join  manger m
on d.DID=m.DID


select DName , ID,MName
from department  d full outer join  manger m
on d.DID=m.DID

select  ID
from employee
union
select ID
from manger

select  ID
from employee
intersect
select ID
from manger

select  ID
from employee
except
select ID
from manger

select distinct DID
from manger


