create table Final_Marks
( total_Marks int(100) );

create trigger total_marks
after insert
on ExampleTrigger
for each row
insert into Final_Marks values(new.StdMarks); 

select * from Final_Marks;