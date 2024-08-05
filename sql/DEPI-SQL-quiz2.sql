use learning;

CREATE TABLE units (
unit_id INT,
unit_type VARCHAR(50),
location VARCHAR(100),
status VARCHAR(20) ,
date_listed DATE
);

INSERT INTO units (unit_id, unit_type, location, status, date_listed)
VALUES
(1, 'Apartment', 'New York, NY', 'Available', '2023-01-01'),
(2, 'House', 'Los Angeles, CA', 'Sold', '2023-02-15'),
(3, 'Condo', 'Chicago, IL', 'Sold', '2023-03-20'),
(4, 'Townhouse', 'Miami, FL', 'Available', '2023-04-10'),
(5, 'Apartment', 'San Francisco, CA', 'Sold', '2023-05-05'),
(6, 'House', 'Seattle, WA', 'Available', '2023-06-20'),
(7, 'Condo', 'Boston, MA', 'Available', '2023-07-15'),
(8, 'Apartment', 'Austin, TX', 'Sold', '2023-08-10'),
(9, 'House', 'Denver, CO', 'Available', '2023-09-01'),
(10, 'Townhouse', 'Philadelphia, PA', 'Available', '2023-10-18'),
(11, 'Condo', 'Phoenix, AZ', 'Sold', '2023-11-25'),
(12, 'Apartment', 'Portland, OR', 'Sold', '2023-12-05'),
(13, 'House', 'Atlanta, GA', 'Available', '2024-01-15'),
(14, 'Condo', 'Las Vegas, NV', 'Available', '2024-02-20'),
(15, 'Apartment', 'Dallas, TX', 'Sold', '2024-03-10'),
(16, 'House', 'Houston, TX', 'Sold', '2024-04-01'),
(17, 'Townhouse', 'Charlotte, NC', 'Available', '2024-05-15'),
(18, 'Condo', 'San Diego, CA', 'Sold', '2024-06-20'),
(19, 'Apartment', 'Washington, DC', 'Available', '2024-07-01'),
(20, 'House', 'Nashville, TN', 'Sold', '2024-08-10');



CREATE TABLE sales (
sale_id INT,
unit_id INT,
client_id INT,
employee_id INT,
sale_date DATE,
sale_price DECIMAL(10, 2));


INSERT INTO sales (sale_id, unit_id, client_id, employee_id, sale_date, sale_price)
VALUES
(1, 1, 101, 201, '2023-01-15', 500000.00),
(2, 2, 102, 202, '2023-02-20', 700000.00),
(3, 3, 103, 203, '2023-04-01', 300000.00),
(4, 4, 104, 201, '2023-04-15', 400000.00),
(5, 5, 105, 202, '2023-05-20', 600000.00),
(6, 6, 106, 203, '2023-07-01', 550000.00),
(7, 7, 107, 201, '2023-08-15', 480000.00),
(8, 8, 108, 202, '2023-09-20', 620000.00),
(9, 9, 109, 203, '2023-10-10', 530000.00),
(10, 10, 110, 201, '2023-11-01', 450000.00),
(11, 11, 111, 202, '2023-12-15', 680000.00),
(12, 12, 112, 203, '2024-01-20', 570000.00),
(13, 13, 113, 201, '2024-03-01', 510000.00),
(14, 14, 114, 202, '2024-04-15', 590000.00),
(15, 15, 115, 203, '2024-06-01', 640000.00),
(16, 16, 116, 201, '2024-07-10', 530000.00),
(17, 17, 117, 202, '2024-08-20', 700000.00),
(18, 18, 118, 203, '2024-09-15', 680000.00),
(19, 19, 119, 201, '2024-10-01', 480000.00),
(20, 20, 120, 202, '2024-11-15', 620000.00);



CREATE TABLE employees (
employee_id INT ,
first_name VARCHAR(50),
last_name VARCHAR(50),
department_id INT,
join_date DATE,
salary DECIMAL(10, 2));



INSERT INTO employees (employee_id, first_name, last_name, department_id, join_date,
salary)
VALUES
(201, 'John', 'Doe', 1, '2010-05-15', 80000.00),
(202, 'Jane', 'Smith', 2, '2015-03-10', 90000.00),
(203, 'Michael', 'Johnson', 1, '2018-07-20', 75000.00),
(204, 'Emily', 'Brown', 3, '2019-01-15', 70000.00),
(205, 'David', 'Williams', 1, '2016-06-01', 85000.00),
(206, 'Sarah', 'Davis', 2, '2017-02-20', 95000.00),
(207, 'Christopher', 'Wilson', 3, '2020-08-10', 72000.00),
(208, 'Jessica', 'Martinez', 1, '2014-04-15', 88000.00),
(209, 'Andrew', 'Garcia', 2, '2013-09-01', 92000.00),
(211, 'James', 'Lopez', 1, '2011-08-05', 81000.00),
(212, 'Ashley', 'Miller', 2, '2016-03-25', 93000.00),
(213, 'Robert', 'Jackson', 3, '2015-07-10', 70000.00),
(214, 'Jennifer', 'Thomas', 1, '2017-10-01', 86000.00),
(215, 'William', 'Harris', 2, '2018-12-15', 94000.00),
(216, 'Elizabeth', 'Clark', 3, '2019-04-20', 71000.00),
(217, 'Daniel', 'Lewis', 1, '2020-02-01', 82000.00),
(218, 'Karen', 'Lee', 2, '2014-06-15', 91000.00),
(219, 'Kevin', 'Walker', 3, '2013-11-10', 68000.00),
(220, 'Amanda', 'Young', 1, '2015-09-20', 83000.00);



CREATE TABLE clients (
client_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
phone VARCHAR(20)
);



INSERT INTO clients (client_id, first_name, last_name, email, phone)
VALUES
(101, 'Alice', 'Brown', 'alice@example.com', '555-1234'),
(102, 'Bob', 'Williams', 'bob@example.com', '555-5678'),
(103, 'Eve', 'Davis', 'eve@example.com', '555-7890'),
(104, 'Charlie', 'Garcia', 'charlie@example.com', '555-2345'),
(105, 'Diana', 'Martinez', 'diana@example.com', '555-6789'),
(106, 'Frank', 'Lopez', 'frank@example.com', '555-8901'),
(107, 'Grace', 'Miller', 'grace@example.com', '555-3456'),
(108, 'Henry', 'Jones', 'henry@example.com', '555-7890'),
(109, 'Isabel', 'Taylor', 'isabel@example.com', '555-1234'),
(110, 'Jack', 'Wilson', 'jack@example.com', '555-5678'),
(111, 'Karen', 'Anderson', 'karen@example.com', '555-8901'),
(112, 'Leo', 'Thomas', 'leo@example.com', '555-2345'),
(113, 'Maria', 'White', 'maria@example.com', '555-6789'),
(114, 'Nathan', 'Scott', 'nathan@example.com', '555-8901'),
(115, 'Olivia', 'Young', 'olivia@example.com', '555-3456'),
(116, 'Paul', 'Harris', 'paul@example.com', '555-7890'),
(117, 'Quinn', 'Clark', 'quinn@example.com', '555-1234'),
(118, 'Rachel', 'Lewis', 'rachel@example.com', '555-5678'),
(119, 'Sam', 'Adams', 'sam@example.com', '555-8901'),
(120, 'Tina', 'Moore', 'tina@example.com', '555-2345');


CREATE TABLE departments (
department_id INT ,
department_name VARCHAR(100)
);

INSERT INTO departments (department_id, department_name)
VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Finance'),
(4, 'Customer Service'),
(5, 'Human Resources'),
(6, 'IT'),
(7, 'Operations'),
(8, 'Legal'),
(9, 'Research & Development'),
(10, 'Administration');


-- 1. Using CTE to find the total sales value and number of units sold by each
-- department, and then list those departments with total sales above $1,000,000.

with department_cte as
(
select d.department_name , SUM(s.sale_price) as total_sales , COUNT(s.unit_id) as units_number  
from departments d
join employees e
on d.department_id = e.department_id
join sales s 
on e.employee_id = s.employee_id
group by d.department_name)

select * from department_cte
where total_sales > 1000000;





--2. Find the average number of days a unit remains 'Available' before being sold for each unit type.



select u.unit_type , avg(DATEDIFF (DAY , u.date_listed , s.sale_date)) number_of_days
from units u
join sales s
on u.unit_id = s.unit_id
group by u.unit_type;


-- 3. Using a subquery to find the employee who sold the most units within the last year.

-- 

select first_name+ ' ' +last_name as 'Full Name' 
from employees 
where employee_id in

(select top 1 employee_id
from sales 
where YEAR(sale_date) = 2023
group by employee_id
order by count(unit_id) desc); 


-- 4. CTE to find employees who have never sold a unit and list their details along with
-- their department names.

with zero_employee as 
(select e.employee_id , e.first_name ,e.last_name , e.department_id
from sales s
join employees e
on s.employee_id = e.employee_id
group by e.employee_id , e.first_name ,e.last_name, e.department_id
having COUNT(sale_id) = 0)

select ze.employee_id , ze.first_name , ze.last_name , d.department_name
from departments d
join zero_employee ze
on d.department_id = ze.department_id


-- 5. Find all units that have been sold more than once and list the details of their sales.
select * from sales 
where unit_id in
(select unit_id 
from sales
group by unit_id
having COUNT(employee_id) > 1)



 -- 6. Using a subquery to find the unit type that generates the highest average sales price.



-- this is the solution with the subquery but it might not be the accurate solution
select unit_type
from units
where unit_id in 
(select top 1 unit_id
from sales
group by unit_id
order by AVG(sale_price) desc);


-- This is the accurate solution
select top 1 u.unit_type 
from units u
join sales s
on u.unit_id = s.sale_id
group by u.unit_type
order by AVG(s.sale_price) desc

-- in this soultion the answer is the same in the both ways 
-- but in the first we calculated the unit with the average price sale then we got its type
-- but maybe if we combine based on the type the average will change


-- 7. List the employees along with the number of units they have sold, sorted by the
-- number of units sold in descending order

select e.first_name , e.last_name , COUNT(unit_id) as 'number of units'
from employees e
join sales s 
on e.employee_id = s.employee_id
group by e.first_name , e.last_name
order by 'number of units' desc;

-- 8. Using CTE to find the total revenue generated by each client, and then list those
-- clients who have spent more than $1,000,000.

with client_revenue as 
(
select client_id , SUM(sale_price) as total_revenue
from sales
group by client_id
)
select c.first_name , c.last_name , cr.total_revenue
from client_revenue cr
join clients c
on c.client_id = cr.client_id
where cr.total_revenue > 1000000;

-- 9. Using joins and CASE WHEN, categorize employees based on their total sales into 'High
-- Sales', 'Medium Sales', and 'Low Sales' categories.

with employee_sales as 
(select employee_id , SUM (sale_price) as total_sales
from sales
group by employee_id)

SELECT e.first_name , e.last_name , case 
	when es.total_sales > 4000000 then 'High'
	when es.total_sales > 3300000 then 'medium'
	else 'Low'
	end as category
from employees e
join employee_sales es
on e.employee_id = es.employee_id

-- 10. List all units along with their status (Sold or Available) and the corresponding sale price
 -- if sold.
 select u.unit_id , u.status , s.sale_price
 from units u
 join sales s
 on u.unit_id = s.unit_id