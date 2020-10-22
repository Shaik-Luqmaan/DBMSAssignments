select* from Customer;

/*List the customer number, the name, the phone number, and the city of customers.*/
select CustNo, CustName, Address, City 
from Customer;

/* List the customer number, the name, the phone number,
 and the city of customers who reside in Colorado (State is CO).*/
select CustNo, CustName, Address, City 
from Customer 
where state='CO';

/*List all columns of the EventRequest table for events costing more than $4000.  
Order the result by the event date (DateHeld). */
select * from EventRequest;

select * 
from EventRequest 
where Estcost > 4000.00
order by DateHeld;

/*List the event number, the event date (DateHeld), and the estimated audience number with approved status
 and audience greater than 9000 or with pending status and audience greater than 7000. */
 
select EventNo, DateHeld, Estaudience 
from EventRequest
where (Status='Approved' AND Estaudience>9000)
OR (Status='Pending' OR Estaudience>7000);

/*List the event number, event date (DateHeld), customer number and customer name of 
events placed in December 2018 by customers from Boulder */

select EventNo, DateHeld, Customer.CustNo, CustName
from EventRequest inner join Customer
on EventRequest.CustNo = Customer.CustNo
where DateHeld between '2018-12-01' and '2018-12-30'
and City='Boulder';

/*List the average number of resources used (NumberFld) by plan number.
Include only location number L100.*/

select * from ResourceTbl;
select * from Location;

