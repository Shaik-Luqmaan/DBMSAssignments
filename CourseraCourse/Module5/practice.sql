use dbms_course;
select * from EventRequest;
select * from Customer;

-- List the event number, date held, customer number, customer name, facility number, and facility name of 2018 events placed by Boulder customers.

select EventNo, DateHeld, Customer.CustNo, CustName, Facility.FacNo, FacName
from EventRequest, Customer, Facility 
where EventRequest.CustNo = Customer.CustNo
and EventRequest.FacNo = Facility.FacNo
and DateHeld between '2018-01-01' and '2018-12-31'
and City = "Boulder";

-- List the customer number, customer name, event number, date held, facility number, facility name, and estimated audience cost per person (EstCost / EstAudience) for events held on 2018, in which the estimated cost per person is less than $0.2-- 

select Customer.CustNo, CustName, EventNo, DateHeld, Facility.FacNo, FacName, (Estcost/Estaudience) as CostPerPerson
from EventRequest, Facility, Customer 
where EventRequest.CustNo = Customer.CustNo
and EventRequest.FacNo = Facility.FacNo 
and DateHeld between '2018-01-01' and '2018-12-31'
and Estcost/Estaudience < 0.2;

-- List the customer number, customer name, and total estimated costs for Approved events. The total amount of events is the sum of the estimated cost for each event. Group the results by customer number and customer name.

select Customer.CustNo, CustName, sum(Estcost) 
from Customer,EventRequest 
where EventRequest.status='Approved' 
and Customer.CustNo = EventRequest.CustNo 
group by CustName,Customer.CustNo;	

-- Insert yourself as a new row in the Customer table.
insert into Customer values
('C106','Shaik Luqmaan','Tlck','Y','Zemoso','12345','Hyd','TS','50008' );
 
select * from Customer;
-- 
-- Delete a row

delete from Customer
where CustNo = 'C106';