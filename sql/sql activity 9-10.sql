-- Create the customers table
create table customers (
    customer_id int primary key, customer_name varchar(32),
    city varchar(20), grade int, salesman_id int);

-- Insert values into it
INSERT ALL
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001)
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001)
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002)
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002)
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006)
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003)
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007)
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005)
SELECT 1 FROM DUAL;

select * from customers;
select * from salesman;

SELECT s.salesman_name, 
       c.customer_name
FROM salesman s
INNER JOIN customers c
ON s.saleman_id = c.saleman_id;

SELECT c.customer_name, 
       c.grade, 
       s.salesman_name
FROM customers c
JOIN salesman s
ON c.salesman_id = s.salesman_id
WHERE c.grade < 300
ORDER BY c.customer_name ASC;

-- Write an SQL statement to find the list of customers who appointed a salesman for their jobs who gets a commission of more than 12%
SELECT customer.customer_name,customer.city, salesman.salesman_name , salesman.commission FROM customers a 
INNER JOIN salesman  ON salesman.saleman_id=customers.saleman_id 
WHERE b.commission>12;

-- Write an SQL statement to find the following details of an order - order number, order date, purchase amount of order, which customer gives the order and which salesman works for that customer and commission rate they get for the order.
SELECT a.order_no, a.order_date, a.purchase_amount, b.customer_name AS "Customer Name", b.grade, c.salesman_name AS "Salesman", c.commission FROM orders a 
INNER JOIN customers b ON a.customer_id=b.customer_id 
INNER JOIN salesman c ON a.saleman_id=c.saleman_id;


SELECT *
FROM orders
WHERE salesman_id IN (
    SELECT salesman_id
    FROM customers
    WHERE customer_id = 3007
);

SELECT *
FROM orders
WHERE salesman_id IN (
    SELECT salesman_id
    FROM salesman
    WHERE city = 'new york'
);

SELECT COUNT(*) AS total_customers
FROM customers
WHERE grade > (
    SELECT AVG(grade)
    FROM customers
    WHERE city = 'New York'
);

SELECT *
FROM orders
WHERE salesman_id IN (
    SELECT salesman_id
    FROM salesman
    WHERE commission = (
        SELECT MAX(commission)
        FROM salesman
    )
);