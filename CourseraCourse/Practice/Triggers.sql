use University;

create table ExampleTrigger
( StdId int(10) Primary Key auto_increment, StdName varchar(10) not null, StdMarks int(10) );

desc ExampleTrigger;

create trigger Trigger_Name
before insert
on ExampleTrigger
for each row
SET new.StdMarks = new.StdMarks+50;

insert into ExampleTrigger values ('1','A','25');
insert into ExampleTrigger values ('2','B','35');
insert into ExampleTrigger values ('3','C','45');

select * from ExampleTrigger;

show triggers
in University;
