use WFA3DotNet
--1.Create table
create table ProductDetail(
ProductId int not null primary key identity(1,1),
Descriptions varchar(30) not null unique,
setqty int not null
check (setqty=1 Or setqty=5 or setqty=10)
default 1,
rate decimal(10,2)
check (rate>=51 and rate<=5000)
)
--2.Insert 20 Records 
--1
insert into ProductDetail values('Magnetic Eyelashes',5,56.90)
--2
insert into ProductDetail values('Nail extensions',10,77.7)
--3
insert into ProductDetail values('Green Powder',5,70.7)
--4
insert into ProductDetail values('Car phone holder',10,66.7)
--5
insert into ProductDetail values('Wireless chrger',5,90.7)
--6
insert into ProductDetail values('Phone cases',1,78.8)
--7
insert into ProductDetail values('Wearable devices',10,87.7)
--8
insert into ProductDetail values('Pet food',5,56.7)
--9
insert into ProductDetail values('pet bathing tool',10,700.7)
--10
insert into ProductDetail values('Pet carrier',1,78.7)
--11
insert into ProductDetail values('Neon clothes',1,80.7)
--12
insert into ProductDetail values('Collared',10,90.7)
--13
insert into ProductDetail values('Sport bottles',5,89.7)
--14
insert into ProductDetail values('Asus',10,800.7)
--15
insert into ProductDetail values('Luggage',1,500.7)
--16
insert into ProductDetail values('Mesh shoes',5,200.7)
--17
insert into ProductDetail values('Car Rear Camera',10,100.7)
--18
insert into ProductDetail values('Car Led light',10,300.7)
--19
insert into ProductDetail values('Car covers',1,700.7)
--20
insert into ProductDetail values('Stackable',10,100.7)

select * from ProductDetail
--3.Update all the rates with 10% rate hike.
update ProductDetail set rate=rate*1.1 
from ProductDetail

--4.Delete last record by providing the productid
delete from ProductDetail 
where productid=20

--5.Alter the table and add the following column
alter table productdetail add margincode char(1)
check (margincode='A' or margincode='B' or margincode=null)

--Update few records to set margincode to A and some records Marginrecords to B
update ProductDetail
set margincode='A'
where ProductId<6

update ProductDetail
set margincode='B'
where ProductId=12

select * from ProductDetail