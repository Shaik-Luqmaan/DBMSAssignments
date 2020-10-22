use University;
select * from course;
select * from student;

create view Students_of_Seattle as
select stdNo, stdFirstName,stdLastName 
from student
where stdcity = 'SEATTLE';

select * from Students_of_Seattle;

create or replace view Students_of_Seattle as
select stdNo, stdFirstName, stdLastName, stdZip
from student
where stdCity = 'SEATTLE';

select * from Students_of_Tacoma;

drop view Students_of_Tacoma;