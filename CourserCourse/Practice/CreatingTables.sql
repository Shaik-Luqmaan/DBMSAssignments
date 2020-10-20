create table Country
(
	CountryID int(5) not null,
    CountryName varchar(25) not null
);
insert into Country values ('2','Nepal');
insert into Country values ('3','Srilanka');

select * from Country;

alter table Country
ADD primary key (CountryID);

create table States
(
	StateId int(5) not null,
    StateName varchar(25) not null,
    CountryID int(5) not null,
    foreign key (CountryID) references Country(CountryID)
    );
    
select * from States;

insert into States values ('1','Telangana','1');
insert into States values ('2','Punjab','1');
insert into States values ('3','Kathmandu','3');
insert into States values ('4','LA','2'); 

select * from States order by CountryID;   

/*To delete a record from a table*/
delete from States where CountryID='1';


