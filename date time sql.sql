use vinod;
CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(30),
    order_date DATE,
    delivery_date DATE
);

INSERT INTO orders VALUES
(101,'Rahul','2026-01-15','2026-01-20'),
(102,'Anjali','2026-02-28','2026-03-05'),
(103,'Ravi','2026-03-25','2026-03-30'),
(104,'Sneha','2026-04-10','2026-04-15'),
(105,'Arjun','2026-05-18','2026-05-25'),
(106,'Priya','2026-06-22','2026-06-30'),
(107,'Kiran','2026-07-01','2026-07-05'),
(108,'Neha','2026-08-14','2026-08-20'),
(109,'Amit','2026-09-09','2026-09-15'),
(110,'Pooja','2026-10-12','2026-10-18'),
(111,'Vikram','2026-11-20','2026-11-28'),
(112,'Divya','2026-12-25','2027-01-02');
select customer_name,order_date ,date_sub(order_date,interval 100 day) day_before_100_day from orders;
select customer_name,delivery_date from orders where quarter(order_date)=1 and datediff(order_date,delivery_date)>5;
select customer_name from orders where quarter(order_date)=4;
select customer_name,year(order_date)as order_year, adddate(order_date,20) new_order_date from orders;