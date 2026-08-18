create database School_db;
use school_db;
select *
from bridge;
select *
from chess;
select *
from music;
select *
from students;

create database Loans_db;
use loans_db;
select *
from customers;
select *
from depositcustomers;
select *
from highcreditcardbalance;
select *
from loans;

use loans_db;
select *
from loans limit 10;
select str_to_date(applicationdate, "%Y-%m-%d")
from loans;

/*4. Update the new AppDate column with the converted date*/
set sql_safe_updates = 0;
update loans 
set AppDate = str_to_date(applicationdate, "%Y-%m-%d");

select date_format(applicationdate, "%Y-%m-%d")
from loans ;

alter table loans 
add column Appdate date;

update loans 
set AppDate = str_to_date(applicationdate, "%d-%m-%Y");

alter table loans  
drop column applicationdate;





















