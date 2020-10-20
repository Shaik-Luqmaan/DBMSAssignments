alter table Country 
add(Population int(100), Year datetime);
select * from Country;

select * from Customer;

select City,count(CustName) 
from Customer 
group by City;

select City,count(CustName) 
from Customer 
group by City
having City = 'Boulder';

SELECT * INTO CustomersBackup2017
FROM Customer;

