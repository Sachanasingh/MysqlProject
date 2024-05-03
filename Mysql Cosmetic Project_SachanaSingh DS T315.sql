create database mcms;
use mcms;

Create table Brand(
BrandId int primary key,
BrandName varchar(50),
CountryOfOrigin varchar(30));

insert into Brand(BrandId, BrandName, CountryOfOrigin)
values(1,'LoveMe Cosmetics','Russia'),
(2,'Knockout Makeup','Africa'),
(3,'Eternal Beauty','Algeria'),
(4,'Pressed','Argentina'),
(5,'Organica Beauty','Armenia'),
(6,'Retreat Cosmetics','Thailand'),
(7,'Cuffed Beauty','America'),
(8,'Sentirsi Organics','China'),
(9,'Centre of Attention Cosmetics','Japan'),
(10,'Smelly Belly Beauty','Korea'),
(11,'Narcissique','Australia'),
(12,'Blur Beauty','Canada'),
(13,'Birthday Girl Beauty','Belgium'),
(14,'Vrai Luxe','Cuba'),
(15,'Ingenue Cosmetics','Brazil'),
(16,'Femme Fatale','Afghanistan'),
(17,'Junkie Makeup','Pakistan'),
(18,'Date Night','Poland'),
(19,'Risky Beauty','Qatar'),
(20,'WHO.IS.SHE','Romania'),
(21,'Bare Necessary Beauty','Samoa'),
(22,'Abbracciami Beauty','Saudi Arabia'),
(23,'BreakNeck Beauty','Saint Lucia'),
(24,'Happy Hour','Switzerland'),
(25,'Abundant Beauty','Texas'),
(26,'See Me Beauty','Tonga'),
(27,'ESSENTIALIST','Ukraine'),
(28,'MiAmor Makeup','Vietnam'),
(29,'Upgrade','Zambia'),
(30,'Blended Beauty','Dubai');

desc Brand;
select * from Brand;

Create table Type(
TypeId int primary key, 
ProductType varchar(30));

insert into Type(TypeId, ProductType)
values(1,'HairCare'),
(2,'SkinCare'),
(3,'LipCare'),
(4,'NailCare'),
(5,'EyeCare');

desc type;
select * from Type;

create table Customer(
CustomerId int Primary key,
FirstName varchar(20),
LastName varchar(20),
Gender varchar(6),
Age int);

insert into Customer(CustomerId,FirstName,LastName,Gender,Age)
values (1,'Aidan','Butler','Female',22),
(2,'Haroid','Simmons','Male',78),
(3,'Conner','Flores','Female',34),
(4,'Peter','Bennett','Male',33),
(5,'Hunter','Sanders','Female',35),
(6,'Eli','Hughes','Male',23),
(7,'Alberto','Bryant','Female',40),
(8,'Carlos','Patterson','Female',39),
(9,'Shane','Matthews','Male',45),
(10,'Aaron','Jenkins','Female',55),
(11,'Marlin','Watkins','Male',28),
(12,'Paul','Ward','Female',34),
(13,'Ricardo','Murphy','Male',45),
(14,'Hector','Bailey','Female',44),
(15,'Alexis','Beil','Male',26),
(16,'Adrain','Cox','Female',67),
(17,'Kingston','Martinez','Male',33),
(18,'Douglas','Evans','Female',56),
(19,'Geraid','Rivera','Male',32),
(20,'Joey','Peterson','Female',49),
(21,'Johnny','Gomez','Male',20),
(22,'Charlie','Murray','Female',45),
(23,'Scott','Tucker','Female',34),
(24,'Martin','Hicks','Female',56),
(25,'Tristin','Crawford','Female',30),
(26,'Amara','Atticus','Female',45),
(27,'Ava','Asher','Female',50),
(28,'Bella','Baron','Female',28),
(29,'Cora','Beckett','Female',45),
(30,'Ella','Callum','Female',37),
(31,'Evie','Carson','Female',66),
(32,'Evelyn','Colt','Female',28),
(33,'Freya','Declan','Female',45),
(34,'Grace','Felix','Female',56),
(35,'Iris','George','Female',39),
(36,'Jane','Graham','Female',32),
(37,'Katherine','Henry','Female',27),
(38,'Layla','Jasper','Female',36),
(39,'Lillian','Jude','Female',27),
(40,'Lucy','Kai','Female',22),
(41,'Maeve','Leo','Female',56),
(42,'Margot','Luke','Female',29),
(43,'Mila','Max','Female',40),
(44,'Oaklyn','Noah','Female',47),
(45,'Palmer','Owen','Female',37),
(46,'Poppy','Roman','Female',48),
(47,'Reese','Samuel','Female',36),
(48,'Sadie','Sink','Female',35),
(49,'Stella','Silas','Female',30),
(50,'Thea','Theo','Female',40);

desc Customer;
select * from Customer;

create table WomensDaySpecial(
GiftId int,
OcassionDate date default '2024-08-09',
CustomerId int,
CustName Varchar(30),
Gender varchar(6) check(Gender='Female'),
GiftHamper Varchar(30),
CONSTRAINT fk_Customer FOREIGN KEY(CustomerId) REFERENCES Customer(CustomerId));

insert into WomensDaySpecial(GiftId,CustomerId,CustName, Gender,GiftHamper)
values(1,1,'Aidan Butler','Female','Chocolates'),
(2,3,'Conner Flores','Female','Vouchers'),
(3,5,'Hunter Sanders','Female','Dress'),
(4,7,'Alberto Bryant','Female','Perfumes'),
(5,8,'Carlos Patterson','Female','VacationCoupon'),
(6,10,'Aaron Jenkins','Female','crockery set'),
(7,12,'Paul Ward','Female','NailColor'),
(8,14,'Hector Bailey','Female','Diamond'),
(9,16,'Adrain Cox','Female','Bracelet'),
(10,18,'Douglas Evans','Female','Necklace'),
(11,20,'Joey Peterson','Female','Gold ring'),
(12,22,'Charlie Murray','Female','Earrings'),
(13,23,'Scott Tucker','Female','Sandals'),
(14,24,'Martin Hicks','Female','Gold ring'),
(15,25,'Tristin Crawford','Female','Chocolates'),
(16,26,'Amara Atticus','Female','Diamond'),
(17,27,'Ava Ashar','Female','Perfumes'),
(18,28,'Bella Baron','Female','crockery set'),
(19,29,'CoraBeckett','Female','Necklace'),
(20,30,'Ella Callum','Female','Dress');

desc WomensDaySpecial;
select * from WomensDaySpecial;

create table Product(
ProductId int Primary Key,
ProdName varchar(40),
ProductPrice int,
ManufacturingDate datetime,
Usebeforedate datetime,
BrandId int,
TypeId int),
CONSTRAINT fk_brand FOREIGN KEY(BrandId) REFERENCES Brand(BrandId),
CONSTRAINT fk_type FOREIGN KEY(TypeId) REFERENCES Type(TypeId));



insert into Product(ProductId, ProdName, ProductPrice, ManufacturingDate, Usebeforedate, BrandId, TypeId)
values(1,'Foundation',1299,'2021-08-31 04:30:00','2026-09-06 12:00:00',1,2),
(2,'Primer',899,'2021-09-17 00:15:00','2025-09-07 12:00:00',7,5),
(3,'Concealer',599,'2021-10-01 14:28:00','2027-11-05 12:00:00',29,3),
(4,'Eyeliner',499,'2021-10-07 11:22:00','2028-09-12 12:00:00',4,4),
(5,'Mascara',1300,'2021-10-02 10:45:00','2030-11-09 12:00:00',29,3),
(6,'Blush',2549,'2021-10-10 17:16:00','2024-12-05 12:00:00',30,1),
(7,'Highlighter',699,'2021-10-03 15:57:00','2029-05-01 12:00:00',14,5),
(8,'Lipstick',1300,'2021-10-09 10:43:00','2026-08-02 12:00:00',17,2),
(9,'CC Cream',400,'2021-10-07 13:19:00','2027-05-05 12:00:00',19,3),
(10,'Eyeshadow',1500,'2021-10-15 18:55:00','2026-04-05 12:00:00',20,4),
(11,'Lip Gloss',1300,'2021-10-09 08:32:00','2027-02-14 12:00:00',22,5),
(12,'Palette', 2000,'2021-10-14 08:17:00','2025-06-08 12:00:00',26,1),
(13,'Setting Spray',799,'2021-10-09 15:48:00','2028-07-07 12:00:00',4,2),
(14,'Bronzer',1200,'2021-10-21 10:51:00','2029-10-10 12:00:00',5,4),
(15,'Contour',1500,'2021-10-10 19:55:00','2040-12-12 12:00:00',6,5),
(16,'Face Powder',300,'2021-10-15 09:20:00','2034-07-05 12:00:00',7,3),
(17,'Moisturizer',799,'2021-10-14 10:25:00','2027-07-05 12:00:00',7,1),
(18,'Eyebrow pencil',599,'2021-10-14 12:52:00','2030-06-06 12:00:00',8,3),
(19,'Sunscreen',1500,'2021-10-16 08:53:00','2050-11-19 12:00:00',15,4),
(20,'Face Serums',1600,'2021-10-29 18:47:00','2029-12-17 12:00:00',16,3),
(21,'Cleansers',2000,'2021-10-24 10:50:00','2030-04-09 12:00:00',17,2),
(22,'Bathing Soaps',1800,'2021-11-05 18:19:00','2045-12-09 12:00:00',18,1),
(23,'Deodorants',1900,'2021-10-24 13:48:00','2030-09-04 12:00:00',19,5),
(24,'Shampoo',2100,'2021-10-28 19:33:00','2026-03-04 12:00:00',25,2);

desc Product;
select * from Product;

Create table Transaction (
TransactionId int primary key,
CustomerId int,
ProductId int,
ProductPrice int,
ProductName varchar(30),
CONSTRAINT fk_CustomerId FOREIGN KEY(CustomerId) REFERENCES Customer(CustomerId),
CONSTRAINT fk_ProductId FOREIGN KEY(ProductId) REFERENCES Product(ProductId));



insert into Transaction( TransactionId, CustomerId,ProductId,ProductPrice,ProductName)
values(1,2,23,1900,'Deodorants'),
(2,49,21,2000,'Cleansers'),
(3,45,20,1600,'Face Serums'),
(4,44,19,1500,'Sunscreen'),
(5,50,6,2549,'Blush'),
(6,23,5,1300,'Mascara'),
(7,26,7,699,'Highlighter'),
(8,44,2,899,'Primer'),
(9,11,8,1300,'Lipstick'),
(10,12,15,1500,'Contour'),
(11,13,18,599,'Eyebrow pencil'),
(12,14,13,799,'Setting Spray'),
(13,15,22,1800,'Bathing Soaps'),
(14,16,20, 1600,'Face Serums'),
(15,40,24,2100,'Shampoo'),
(16,17,20,1600,'Face Serums'),
(17,18,12,2000,'Palette'),
(18,19,11,1300,'Lip Gloss'),
(19,20,9,400,'CC Cream'),
(20,21,8,1300,'Lipstick'),
(21,22,16,300,'Face Powder'),
(22,31,10,1500,'Eyeshadow'),
(23,32,11,1300,'Lip Gloss'),
(24,33,21,2000,'Cleansers'),
(25,34,7,699,'Highlighter'),
(26,35,20,1600,'Face Serums'),
(27,36,3,599,'Concealer'),
(28,37,14,1200,'Bronzer'),
(29,38,15,1500,'Contour'),
(30,39,6,2549,'Blush'),
(31,40,18,599,'Eyebrow pencil'),
(32,41,8,1300,'Lipstick'),
(33,42,14,1200,'Bronzer'),
(34,43,23,1900,'Deodorants'),
(35,44,3,599,'Concealer'),
(36,45,15,1500,'Contour'),
(37,46,8,1300,'Lipstick'),
(38,47,16,300,'Face Powder'),
(39,48,1,1299,'Foundation'),
(40,39,3,599,'Concealer'),
(41,40,17,799,'Moisturizer'),
(42,9,3,599,'Concealer'),
(43,10,19,1500,'Sunscreen'),
(44,11,24,2100,'Shampoo'),
(45,12,13,799,'Setting Spray'),
(46,33,13,799,'Setting Spray'),
(47,38,14,1200,'Bronzer'),
(48,46,16,300,'Face Powder'),
(49,37,8,1300,'Lipstick'),
(50,4,9,400,'CC Cream'),
(51,45,21,2000,'Cleansers'),
(52,46,4,499,'Eyeliner'),
(53,34,4,499,'Eyeliner'),
(54,23,6,2549,'Blush'),
(55,22,9,400,'CC Cream'),
(56,37,12,2000,'Palette'),
(57,23,5,1300,'Mascara'),
(58,6,17,799,'Moisturizer'),
(59,45,7,699,'Highlighter'),
(60,12,14,1200,'Bronzer');


desc Transaction;
select * from Transaction;

/* QUERIES

/*1.Select the Product with the highest Price.*/
select ProductPrice,ProdName from Product where ProductPrice in (select max(ProductPrice) from Product);

/*2.Display the names of the Customers whos names are starting with H.*/
Select concat(FirstName,' ',LastName) as Name  from Customer where FirstName like "H%";

/*3.select the product with lowest price*/
select ProductPrice, ProdName from Product where ProductPrice in (select min(ProductPrice) from Product);

/*4.Display ProductId, Name, Price and Manufacturing date of  Product whos Manufacturing date is after 2020-08-09 12:00:00.*/
 select ProductId, ProdName, ProductPrice,ManufacturingDate  from Product where ManufacturingDate > '2020-08-09 12:00:00';

/*5.Display the ProductName, Price of the Products  whos Price is more than 1000 show the data in arranged column wise manner.*/
select max(ProductPrice) as MaxProductPrice, ProdName from Product group by ProdName having max(ProductPrice)>1000;

/*6.Display names, Price, ManufacturingDate of the Products whose name starts with 'C' in descending order of Price.*/
select ProdName, ProductPrice, ManufacturingDate from Product where ProdName like 'C%' order by ProductPrice desc;

/*7.Display ProductId, ProdName, productPrice, validity  period of  all the products.*/
select ProductId, ProdName, ProductPrice, datediff(Usebeforedate,ManufacturingDate) as ValidforDays from Product;

/*8.Display the Customer names and the number of gifts each one received.*/
select  CustName, count(GiftHamper) as Gifts from WomensDaySpecial group by CustName;

/*9.Display the Id, names  and ValidityDate of the Products that are worth rs. 499, rs.1300, rs.2549.*/
Select ProductId,ProdName, Usebeforedate From Product where ProductPrice = ANY (Select ProductPrice from Product where ProductPrice in (499,1300,2549));



 /* SUBQUERIES :
 
/*1.Display Price of the third highest costly Product.*/
select max(ProductPrice) from Product where ProductPrice < (select max(ProductPrice) from Product where ProductPrice < (select max(ProductPrice) from Product));

/*2.Write a query to find the Manufacturing dates and Prices of the Products whose Price is greater than the Price of the Product with ProductId 23.*/
select ProdName,ProductPrice,ManufacturingDate, UsebeforeDate from Product where ProductPrice > (select ProductPrice from product where ProductId = 23);

/*3.Display LastName and Gender of the Customer named Shane.*/
select LastName, Gender from Customer where CustomerId = (select CustomerId from Customer where LastName = 'Matthews');

/*4.Display the names, Id, Gender and gifts of Customer Who received same Gift  as Aidan Butler and Aaron Jenkins.*/
 select CustomerId,CustName, Gender, GiftHamper 
 from WomensDaySpecial
 where GiftHamper 
 in (select GiftHamper from WomensDaySpecial where CustName in ('Aidan Butler', 'Aaron Jenkins'));

/*5.Write a query to find the Price of all  products whose price is greater than the Price of Product With Product Id 19.*/
select ProdName, ProductPrice, ManufacturingDate from Product where ProductPrice > (select ProductPrice from Product where ProductId = 19);


/* JOINS:

 /*1.Display the names of all the customers who have  made  purchases*/
 select Customer.CustomerId, concat( FirstName,'  ',LastName ) as Name
 from Customer left join transaction
 on Customer.CustomerId = Transaction.TransactionId where TransactionId is not null;
 
 /*2.Display Brand Name, Product Name of only the Products named Foundation, Concealer, Eyeliner with date of Manufacturing performing the suitable join.*/
  select BrandName, ProdName, ManufacturingDate 
  from Brand inner join Product
  on Product.ProductId = Brand.BrandId 
  where ProdName in ('Foundation', 'Concealer',' Mascara','Eyeliner');
  
  
 /*3.Display the Country , Name and Price of Product using the join also the price range should vary somewhere  between 500 and 1500.*/
 select CountryOfOrigin , ProdName, ProductPrice 
 from Brand right join Product
 on Brand.BrandId = Product.BrandId 
 where ProductPrice between 500 and 1500;
 
 /*4.Write  a query to find The Name of product and Id of Customers who bought the most expensive product also fetch the product name using suitable join.*/
 select Customer.CustomerId, Transaction.TransactionId, Transaction.ProductPrice, Transaction.ProductName
 from Customer inner join Transaction
 on Customer.CustomerId = Transaction.CustomerId 
 where ProductPrice = (select max(ProductPrice) from Product);
 
 
 
 
 
 
 
 
 

 
 
 