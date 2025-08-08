select count(*) as ProductCount
from Production.Product

select count(*) as Subcategory
from Production.Product 
where ProductSubcategoryID is not null

select ProductSubcategoryID, count(*) as CountedProducts
from Production.Product 
where ProductSubcategoryID is not null
Group by ProductSubcategoryID

select count(*) as ProductwithoutSubcategory
from Production.Product 
where ProductSubcategoryID is null

select sum(Quantity) as TotalQuantity
from Production.ProductInventory

select productid , sum(Quantity) as TheSum
from Production.ProductInventory
where LocationID = 40 
group by productid
having  sum(Quantity) < 100

select Shelf ,productid , sum(Quantity) as TheSum
from Production.ProductInventory
where LocationID = 40 
group by Shelf,productid 
having  sum(Quantity) < 100

select avg(Quantity) as AverageQuantity
from Production.ProductInventory
where LocationID = 10

select productid,Shelf, avg(Quantity) as TheAvg
from Production.ProductInventory
group by productid,Shelf

select productid,Shelf, avg(Quantity) as TheAvg
from Production.ProductInventory
where shelf is not null
group by productid,Shelf


select color, class, count(*) as TheCount, avg(listprice) as AvgPrice
from Production.Product
where color is not null and class is not null
group by color,class

select cr.Name as country,sp.Name as province
from person.CountryRegion cr join person.StateProvince sp on cr.CountryRegionCode = sp.CountryRegionCode 


select cr.Name as country,sp.Name as province
from person.CountryRegion cr join person.StateProvince sp on cr.CountryRegionCode = sp.CountryRegionCode 
where cr.name in ('Germany','Canada')



