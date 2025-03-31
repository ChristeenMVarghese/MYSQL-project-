create database Library;
use Library;
create table Branch(Branch_id int primary key,
Manager_Id int,
Branch_address varchar(24));
drop table Branch;
insert Branch(Branch_id,Manager_Id,Branch_address)
values (001,1035,'Thrissur center');
insert Branch(Branch_id,Manager_Id,Branch_address)
values (002,1045,'Thrissur west');
insert Branch(Branch_id,Manager_Id,Branch_address)
values (003,1046,'Thrissur north');
insert Branch(Branch_id,Manager_Id,Branch_address)
values (004,1047,'Ernakulam vippin');
insert Branch(Branch_id,Manager_Id,Branch_address)
values (005,1048,'Ernakulam center');
insert Branch(Branch_id,Manager_Id,Branch_address)
values (006,1049,'cochi');
insert Branch(Branch_id,Manager_Id,Branch_address)
values (007,1050,'allapuzha');
insert Branch(Branch_id,Manager_Id,Branch_address)
values (008,1051,'Shornur');
insert Branch(Branch_id,Manager_Id,Branch_address)
values (009,1052,'Kozhikode');
insert Branch(Branch_id,Manager_Id,Branch_address)
values (010,1053,'Kannur');
create table Employee( Empl_ID int primary key,
Employee_Name varchar(24),Position varchar(10),Salary int,
Branch_no int,foreign key(Branch_no)
references Branch(
Branch_id));
insert Employee(Empl_ID,Employee_NAme,position,Salary,Branch_no) values
(1831,'Nitheesh','MD',50000,010);
insert Employee(Empl_ID,Employee_NAme,position,Salary,Branch_no) values
(1833,'Divya','clerk',18000,008);
insert Employee(Empl_ID,Employee_NAme,position,Salary,Branch_no) values
(1835,'Dipu','clerk',18000,009);
insert Employee(Empl_ID,Employee_NAme,position,Salary,Branch_no) values
(1836,'Diya','ES',24000,010);
insert Employee(Empl_ID,Employee_NAme,position,Salary,Branch_no) values
(1837,'Vishnu','TL',30000,001);
insert Employee(Empl_ID,Employee_NAme,position,Salary,Branch_no) values
(1838,'Christy','DA',45000,003);
insert Employee(Empl_ID,Employee_NAme,position,Salary,Branch_no) values
(1839,'Jose','DA',40000,004);
insert Employee(Empl_ID,Employee_NAme,position,Salary,Branch_no) values
(1840,'Liliy','MD',80000,005);
insert Employee(Empl_ID,Employee_NAme,position,Salary,Branch_no) values
(1841,'Anil','CEO',1500000,006);
insert Employee(Empl_ID,Employee_NAme,position,Salary,Branch_no) values
(1842,'Creal','CL',40000,007);
select Employee_NAme,position,Salary from Employee where 
Salary >50000;
select Branch.Branch_id, Employee.Employee_NAme
from Employee
inner join Branch on Branch.Branch_id = Employee.Branch_no;
select Branch_id, count(Branch_id) 
from Branch group by Branch_id;
select Branch_no, count(Branch_no) as Employee_count from Employee group by Branch_no;
select Branch_no, count(Branch_no) as Employee_count from Employee group by Branch_no  having Employee_count >1;
create table Books(ISBN int primary key,Book_title varchar(40),Catagory varchar(40),
Rental_price int,Status_ varchar(10),Author varchar(50),Publisher varchar(40));
drop table Books;
insert Books(ISBN,Book_title,Catagory,Rental_price,Status_,Author,Publisher)values(1000000001,
'Babel','Historical Fantasy',60,'yes','R.F.Kuang','HarperVoyager');
insert Books(ISBN,Book_title,Catagory,Rental_price,Status_,Author,Publisher)values(1000000002,
'The Forest ','Mythology',60,'no',
'Chithra Banerjee'
,'Harper Collins India');
insert Books(ISBN,Book_title,Catagory,Rental_price,Status_,Author,Publisher)values(1000000003,
'Latitdes of Longing','Magical Realism',
60,'yes','Shubhangi Swarup','HarperCollins India');
insert Books(ISBN,Book_title,Catagory,Rental_price,Status_,Author,Publisher)values(1000000004,
'The Night Circus','Fantasy',50,'no','Erin Morgenstern',
'Vintage Books');
insert Books(ISBN,Book_title,Catagory,Rental_price,Status_,Author,Publisher)value(1000000005,
'The Song of Achilles','Romance',40,'no','Madeline Miller',
'Bloomsbury Publishing');
insert Books(ISBN,Book_title,Catagory,Rental_price,Status_,Author,Publisher)value(1000000006,
'A Gentleman in Moscow','Historical Fiction',50,
'yes','Amor Towles','Viking');
insert Books(ISBN,Book_title,Catagory,Rental_price,Status_,Author,Publisher)value(1000000007,
'The Ministry of Utmost Happiness','Political Fiction',
40,'yes','Arunthati Roy','Penguin India');
insert Books(ISBN,Book_title,Catagory,Rental_price,Status_,Author,Publisher)value(1000000008,
'Daughter of Smoker and Bone','Fantasy',50,'
no','Laini Taylor','Hodder and Stoughton');
insert Books(ISBN,Book_title,Catagory,Rental_price,Status_,Author,Publisher)value(1000000009,
'The Far Field','Literary Fiction',60,
'yes','Madhuri Vijay','HarperCollins India');
insert Books(ISBN,Book_title,Catagory,Rental_price,Status_,Author,Publisher)value(1000000010,
'Enter the valle of the Gods','Fantasy',50,
'yes','Saksham Garg','Penguin India');
select*from Books;
select Catagory, count(Catagory) as Bookcount 
from Books group by Catagory;
select Book_title from Books where Catagory = 'Fantasy';
create table Customer(Customer_Id int primary key,
Customer_name varchar(30),Customer_address varchar(150),
Reg_date date);
insert Customer(Customer_Id,
Customer_name,Customer_address,
Reg_date) values(1236,'Vishnu','vilayath(H) velur','2016-09-22');
insert Customer(Customer_Id,
Customer_name,Customer_address,
Reg_date) values(1237,'Ram','naraynath(H) alva','2017-11-23');
insert Customer(Customer_Id,
Customer_name,Customer_address,
Reg_date) values(1238,'Divya','valayath(H) nedupzha','2015-09-25');
insert Customer(Customer_Id,
Customer_name,Customer_address,
Reg_date) values(1239,'christy','chirayath(H) thirur','2017-01-16');
insert Customer(Customer_Id,
Customer_name,Customer_address,
Reg_date) values(1240,'Biju','tharayil(H) arimpur','2010-10-05');
insert Customer(Customer_Id,
Customer_name,Customer_address,
Reg_date) values(1241,'Anandhu','ramedath(H) mukatukara','2009-09-09');
insert Customer(Customer_Id,
Customer_name,Customer_address,
Reg_date) values(1242,'Paul','Thattil(H) thrissur','2016-08-12');
insert Customer(Customer_Id,
Customer_name,Customer_address,
Reg_date) values(1243,'Diphu','aragansheri(H) chittatukara','2016-03-06');
insert Customer(Customer_Id,
Customer_name,Customer_address,
Reg_date) values(1244,'Varghese','chittayil(H) thiruvanikave','2015-04-18');
select*from Customer;
select Customer_name,
Reg_date from Customer where Reg_date >2016-12-12;
create table IssueStatus(Issue_Id int primary key,
Issued_cust int,foreign key (Issued_cust) 
references Customer(Customer_Id),
Issued_book varchar(50), Issue_date date,
Isbn_book int, foreign key 
(Isbn_book) references Books(ISBN));
drop table IssueStatus;
insert IssueStatus(Issue_Id,
Issued_cust,Issued_book,Issue_date,Isbn_book) 
values(1,1237,'Babel','1990-10-12',1000000001);
insert IssueStatus(Issue_Id,
Issued_cust,Issued_book,Issue_date,Isbn_book) 
values(2,1236,'The Forest','1999-09-08',1000000003);
insert IssueStatus(Issue_Id,
Issued_cust,Issued_book,Issue_date,Isbn_book) 
values(3,1238,'Latitudes of Longing','1998-11-02',
1000000002);
insert IssueStatus(Issue_Id,
Issued_cust,Issued_book,Issue_date,Isbn_book) 
values(4,1239,'The Night Circus','1994-08-11',
1000000004);
insert IssueStatus(Issue_Id,
Issued_cust,Issued_book,Issue_date,Isbn_book) 
values(5,1240,'The Song of Achilles','2000-07-21',1000000010);
insert IssueStatus(Issue_Id,
Issued_cust,Issued_book,Issue_date,Isbn_book) 
values(6,1241,'A Gentleman in Moscow','1991-11-21',1000000008);
insert IssueStatus(Issue_Id,
Issued_cust,Issued_book,Issue_date,Isbn_book) 
values(7,1242,'The Ministry of Utmost Happiness',
'1992-03-22',1000000007);
insert IssueStatus(Issue_Id,
Issued_cust,Issued_book,Issue_date,Isbn_book) 
values(8,1243,'Daughter of Smoke and Bone','1994-05-10',1000000006);
insert IssueStatus(Issue_Id,
Issued_cust,Issued_book,Issue_date,Isbn_book) 
values(9,1244,'The Far Field','2001-09-03',1000000005);
insert IssueStatus(Issue_Id,
Issued_cust,Issued_book,Issue_date,Isbn_book) 
values(10,1236,'Samsara:Enter the valle of the Gods','1994-03-04',1000000004);
select*from IssueStatus;
select Customer.Customer_name,IssueStatus.Issue_date
from Customer 
inner join IssueStatus on Customer.Customer_Id = IssueStatus.Issued_cust
where IssueStatus.Issue_date between '1994-05-01' and '1994-05-31';
create table ReturnStatus(Return_id int primary key,
Return_cust int,Return_book_name varchar(50),Return_date
date,Isbn_book2 int,foreign key(Isbn_book2) references
Books(ISBN));
insert ReturnStatus(Return_id,
Return_cust,Return_book_name,Return_date,Isbn_book2) values (
10,1236,'Samsara:Enter the valle of the Gods','2024-10-14',1000000004);
insert ReturnStatus(Return_id,
Return_cust,Return_book_name,Return_date,Isbn_book2)
values(1,1237,'Babel','2025-12-20',1000000001);
insert ReturnStatus(Return_id,
Return_cust,Return_book_name,Return_date,Isbn_book2)
values(2,1236,'The Forest','2025-09-28',1000000003);
insert ReturnStatus(Return_id,
Return_cust,Return_book_name,Return_date,Isbn_book2)
values(3,1238,'Latitudes of Longing','2025-01-29',
1000000002);
insert ReturnStatus(Return_id,
Return_cust,Return_book_name,Return_date,Isbn_book2)
values(4,1239,'The Night Circus','2025-02-19',
1000000004);
insert ReturnStatus(Return_id,
Return_cust,Return_book_name,Return_date,Isbn_book2)
values(5,1240,'The Song of Achilles','2019-12-12',1000000010);
insert ReturnStatus(Return_id,
Return_cust,Return_book_name,Return_date,Isbn_book2)
values(6,1241,'A Gentleman in Moscow','2018-04-15',1000000008);
insert ReturnStatus(Return_id,
Return_cust,Return_book_name,Return_date,Isbn_book2)
values(7,1242,'The Ministry of Utmost Happiness',
'2023-03-22',1000000007);
insert ReturnStatus(Return_id,
Return_cust,Return_book_name,Return_date,Isbn_book2)
values(8,1243,'Daughter of Smoke and Bone','2025-05-10',1000000006);
insert ReturnStatus(Return_id,
Return_cust,Return_book_name,Return_date,Isbn_book2)
values(9,1244,'The Far Field','2023-07-03',1000000005);
select*from ReturnStatus;
select*from Branch;
select*from Employee;
select*from Books;
select*from Customer;
create view Books_details as select Book_title,Catagory,Rental_price
from Books;
select*from Books_details;
select*from Employee order by Employee_NAme, Salary desc;
select IssueStatus.Issued_book, Customer.Customer_name
from IssueStatus
inner join Customer on IssueStatus.Issued_cust = Customer.Customer_Id;
select distinct Customer.Customer_name
from Customer
inner join IssueStatus on Customer.Customer_Id = IssueStatus.
Issued_cust inner join  Books on IssueStatus.Isbn_book = Books.ISBN
where Books.Rental_price > 50;

