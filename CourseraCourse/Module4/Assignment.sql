/* List the city, state, and zip codes in the customer table.  Your result should not have duplicates. 
(Hint: The DISTINCT keyword eliminates duplicates.)*/
select distinct City,State,Zip 
from Customer;

/* List the name, department, phone number, and email address of employees with a phone number 
beginning with “3-”.*/

select * from Employee;

select EmpName,Departnment,Phone,Email
 from Employee 
 where Phone 
 Like '3-%';

/*List all columns of the resource table with a rate between $10 and $20. Sort the result by rate*/

select* from ResourceTbl;

select * from ResourceTbl 
where Rate 
between 10.00 and 20.00 
order by Rate;

/*List the event requests with a status of “Approved” or “Denied” and an authorized date in July 2018. 
Include the event number, authorization date, and status in the output.
(Hint: see the examples in Module 4 for date constants in Oracle and MySQL.) */

select * from EventRequest;

select EventNo,Status,DataAuth		
from EventRequest 
where Status = 'Approved' or 'Denied'
and DataAuth between '2018-07-01' and '2018-07-31';

/* List the location number and name of locations that are part of the “Basketball arena”.  
Your WHERE clause should not have a condition involving 
the facility number compared to a constant (“F101”). 
Instead, you should use a condition on the FacName column for the value of “Basketball arena”.
*/

select * from Facility;
select * from Location;

select LocNo, LocName
from Location
where FacNo = (
select FacNo
from Facility
where FacName = 'Basketball arena');
	
/*For each event plan, list the plan number, count of the event plan lines, and sum of the number of resources assigned.  For example, plan number “P100” has 4 lines and 7 resources assigned.
You only need to consider event plans that have at least one line. */

select PlanNo, count(LineNo) as LineCount, sum(NumberFld) as TotalNumberFlds
from EventPlanLine
group by PlanNo;
