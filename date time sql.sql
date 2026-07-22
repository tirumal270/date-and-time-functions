use vinod;
select customer_name,order_date ,date_sub(order_date,interval 100 day) day_before_100_day from orders;
select customer_name,delivery_date from orders where quarter(order_date)=1 and datediff(order_date,delivery_date)>5;
select customer_name from orders where quarter(order_date)=4;
select customer_name,year(order_date)as order_year, adddate(order_date,20) new_order_date from orders;
