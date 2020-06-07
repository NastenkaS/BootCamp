SELECT CUSTOMER.cust_name AS "Customer Name", CUSTOMER.city, SALESMAN.name as "Salesman", SALESMAN.commission
FROM salesman 
JOIN customer 
ON salesman.salesman_id=customer.salesman_id;

SELECT salesman.salesman_id, salesman.city, orders.customer_id, orders.ord_no, orders.purch_amt, orders.ord_date, 
customer.cust_name, customer.grade, salesman.name, salesman.commission 
FROM orders 
JOIN salesman 
ON orders.salesman_id=salesman.salesman_id 
JOIN customer 
ON orders.customer_id=customer.customer_id;

SELECT orders.ord_no, orders.purch_amt, customer.cust_name, customer.city 
FROM orders 
JOIN customer 
ON orders.customer_id=customer.customer_id 
WHERE orders.purch_amt 
BETWEEN 500 and 2000;

SELECT orders.ord_no 
FROM orders 
JOIN salesman 
ON orders.salesman_id=salesman.salesman_id 
WHERE salesman.name='James Hoog';

SELECT orders.ord_no 
FROM orders
WHERE salesman_id = (SELECT salesman_id FROM salesman WHERE name='James Hoog');

SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id 
FROM orders 
WHERE purch_amt > (SELECT AVG(purch_amt) FROM orders WHERE ord_date <= '10.10.2012');
