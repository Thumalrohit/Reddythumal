create table salesman(saleman_id int primary key,
salesman_name varchar(20) not null,
salesman_city varchar(20) not null,
commission int);

DESCRIBE salesman
INSERT ALL
    INTO salesman VALUES(1, 'thumal', 'new york',15)
    INTO salesman VALUES(2, 'sai', 'nellore',16)
    INTO salesman VALUES(3, 'riswanth', 'koduru',17)
    INTO salesman VALUES(4, 'naveen', 'kadapa',18)
    INTO salesman VALUES(5, 'ramu', 'tirupati',19)
SELECT 1 FROM DUAL;
select * from salesman;

select saleman_id,salesman_city from salesman;
select * from salesman where salesman_city='new york';
select saleman_id,commission from salesman where saleman_name='thumal';
alter table salesman add(grade int);
select * from salesman;

UPDATE salesman set grade=100;

update salesman set grade =200 WHERE SALESMAN_CITY='nellore';
UPDATE salesman set grade =300 where salesman_name='riswanth';
update salesman set salesman_name='pavan' where salesman_name='naveen';