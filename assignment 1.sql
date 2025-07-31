select p.ProductID, p.Name, p.Color, p.ListPrice 
    from production.Product as p 


select ProductID, Name, Color, ListPrice
from production.Product 
where ListPrice <>  




select ProductID, name, color, ListPrice
from production.Product 
where color IS NULL


select ProductID, name, color, ListPrice
from production.Product 
where color IS not NULL



select ProductID, name, color, ListPrice
from production.Product 
where color is not null 
and ListPrice > 0 


select ( name + ' ' + color ) as 'name and color'
from Production.Product 
where color is not null 

select name, color 
from Production.Product
where color in ( 'black' , 'silver') 

Select Concat( 'name:' , name , ' --color:' , color ) as 'final result' 
from Production.Product 
where 
color IN ( 'black','silver' ) And
name In ( 'll crankarm','ml crankarm','hl crankarm','chainring bolts','chainring bolts','chainring nut','chainring' ) 

select ProductID, name 
from production.Product 
where ProductID Between '400' and '500' 

select productID,name, color 
from Production.Product
where not color in ( 'black' , 'blue') 

select name
from Production.Product
where name like 's%'  


select name, ListPrice
from Production.Product
where name like 's%' 
order by name 


select name, ListPrice
from Production.Product
where name like 'a%' or name like's%' 
order by name

select name 
from Production.Product 
where name like 'spo%' and name not like 'spok%' 
order by name

select distinct color 
from Production.Product 
order by color desc