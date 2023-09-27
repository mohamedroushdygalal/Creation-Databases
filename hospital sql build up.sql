create database hospital
create table patient 
(
id int primary key,
BD date,
patient_name varchar(50),
)

alter table patient add ward_id int  

alter table patient add constraint fk1 foreign key(ward_id)
references ward(id)
-------------------------------------------------------------
create table ward 
(
id int primary key,
ward_name varchar(50),
)
-------------------------------------------------------------

create table consultant 
(
id int primary key,
consultant_name varchar(50)
)

alter table patient add consultant_id int 

alter table patient add constraint fk4 foreign key (consultant_id)
references consultant (id)

-------------------------------------------------------------

create table patient_consultant 
(
patient_id int,
consultant_id int,
constraint pk2 primary key(patient_id,consultant_id),
constraint f foreign key(patient_id)
references patient(id),
constraint fk5 foreign key(consultant_id)
references consultant(id)
)
-------------------------------------------------------------

create table nurse 
(
number int primary key,
nurse_name varchar(50),
nurse_address varchar(50)
)
-------------------------------------------------------------

alter table ward add nurse_nu int 

alter table ward add constraint fk foreign key(nurse_nu)
references nurse(number)

-------------------------------------------------------------

alter table nurse add ward_id int 

alter table nurse add constraint fkey foreign key(ward_id)
references ward(id)

-------------------------------------------------------------
create table drug 
(
code_nu int primary key,
dosage varchar(50),
)

------------------------------------------------------------
create table gives
(
nu int,
code_nu int,
p_id int,
date date,
time time
constraint pk1 primary key(nu,code_nu,p_id),
constraint fkey2 foreign key(nu)
references nurse(number),
constraint fkey3 foreign key(code_nu)
references drug(code_nu),
constraint fkey4 foreign key(p_id)
references patient(id)
)
------------------------------------------------------------