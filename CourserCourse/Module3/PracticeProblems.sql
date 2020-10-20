use dbms_course;

create table Customer (
    CustNo varchar(8) not null,
    CustName varchar(20) not null,
    Address varchar(15) not null,
    Internal varchar(3) not null,
    Contact varchar(20) not null,
    Phone varchar(8) not null,
    City varchar(15) not null,
    State char(2) not null,
    Zip integer not null,
    primary key (CustNo)
);

insert into Customer values ('C100','Football','Box 352200','Y','Mary Manager','6857100','Boulder','CO','80309');
insert into Customer values ('C101','Men''s Basketball','Box 352400','Y','Sally Supervisor','5431700','Boulder','CO','80309');
insert into Customer values ('C103','Baseball','Box 352020','Y','Bill Baseball','5431234','Boulder','CO','80309');
insert into Customer values ('C104','Women''s Softball','Box 351200','Y','Sue Softball','5434321','Boulder','CO','80309');
insert into Customer values ('C105','High School Football','123 AnyStreet','N','Coach Bob','4441234','Louisville','CO','80027');

create table Facility (
    FacNo varchar(8) not null,
    FacName varchar(20) not null,
    primary key (FacNo)
);

insert into Facility values ('F100','Football stadium');
insert into Facility values ('F101','Basketball arena');
insert into Facility values ('F102','Baseball field');
insert into Facility values ('F103','Recreation room');


create table Location (
    LocNo varchar(8) not null,
    FacNo varchar(8),
    LocName varchar(20) not null,
    primary key (LocNo),
    foreign key (FacNo) references Facility(FacNo)
);

insert into Location values ('L100','F100','Locker room');
insert into Location values ('L101','F100','Plaza');
insert into Location values ('L102','F100','Vehicle gate');
insert into Location values ('L103','F101','Locker room');
insert into Location values ('L104','F100','Ticket Booth');
insert into Location values ('L105','F101','Gate');
insert into Location values ('L106','F100','Pedestrian gate');
