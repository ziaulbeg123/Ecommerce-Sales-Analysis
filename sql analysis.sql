use power_bi ;


create table dataset(
Row_ID Int primary key,
Order_ID varchar(200),
Order_Date date,
Ship_date date, 
Ship_Mode varchar(350),
Customer_ID varchar(250),
Customer_Name varchar(500),
Segment varchar(200),
Country varchar(300),
City varchar(350),
State varchar(1009),
Postal_Code bigint,
Region varchar(100),
Product_ID varchar(352),
Category varchar(292),
Sub_Category varchar(202),
Product_Name varchar(500),
Sales float,
Sales_capped float
);


select * from dataset d
-- sum of sales capped 
SELECT SUM(Sales_capped) AS sum_capped
FROM dataset d;

-- sum of sales
SELECT SUM(Sales) AS sum_of_sales
FROM dataset d;

-- avg of sales_capped
SELECT AVG(Sales_capped) AS avg_capped
FROM dataset d;

--  avg of sales
SELECT AVG(Sales) AS avg_sales
FROM dataset d;

-- count of sales
SELECT COUNT(Sales_capped) AS count_sales
FROM dataset d;

-- avg,total saless by category

select category,count(sales), SUM(Sales_capped),SUM(d.Sales ),AVG(d.Sales ),AVG(d.Sales_capped )from dataset d 
group by 1
order by 1;

-- avg,total_sales by region

select d.Region ,count(d.Sales ), SUM(Sales_capped),SUM(d.Sales ),AVG(d.Sales ),AVG(d.Sales_capped )from dataset d 
group by 1
order by 1;


-- avg,total_sales by state
select d.State,d.Category   ,count(d.Sales ), SUM(Sales_capped),SUM(d.Sales ),AVG(d.Sales ),AVG(d.Sales_capped )from dataset d 
group by 1,2
order by 1;


-- combine all
SELECT Category, Region, State, SUM(Sales) AS total_sales
FROM dataset d 
GROUP BY Category, Region, State
ORDER BY total_sales ;


-- ORDER BY + LIMIT for top products
SELECT Product_Name, SUM(Sales_capped) AS total_sales
FROM dataset
GROUP BY Product_Name
ORDER BY total_sales  desc
limit 10


SELECT Product_Name, SUM(Sales) AS total_sales
FROM dataset
GROUP BY Product_Name
ORDER BY total_sales  desc
limit 10

-- WHERE clause to filter data. 

select * from dataset d where d.Region ='South';

select * from dataset d where d.Sales_capped >1000;


select * from dataset d ;


-- DATE FUNCTION

-- YEARLY TRENDS

select YEAR(Order_Date) as order_year,
SUM(Sales_capped) as total_sales
from dataset d 
group by YEAR(Order_Date )
order by 1;

-- Monthly Trend
select MONTH(Order_Date) as order_month,
SUM(Sales_capped) as total_sales
from dataset d 
group by MONTH(Order_Date ) 
order by 1;

-- day trend

select DAY(Order_Date) as order_day,
SUM(Sales_capped) as total_sales
from dataset d 
group by DAY(Order_Date )
order by 1;


-- combine  year month days
SELECT YEAR(Order_Date) AS order_year,
       MONTH(Order_Date) AS order_month,
       SUM(Sales_capped) AS total_sales
FROM dataset
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY order_year, order_month;


-- Shipping Duration Trend


SELECT DATEDIFF(Ship_Date, Order_Date) AS shipping_days,
       COUNT(*) AS total_orders,
       SUM(Sales_capped) AS total_sales
FROM dataset
GROUP BY DATEDIFF(Ship_Date, Order_Date)
ORDER BY shipping_days;



-- top categories per month
SELECT Category, MONTH(Order_Date) AS order_month,
       SUM(Sales_capped) AS total_sales
FROM dataset
GROUP BY Category, MONTH(Order_Date)
ORDER BY order_month, total_sales DESC;


-- top customers
SELECT Customer_Name, SUM(Sales_capped) AS total_sales
FROM dataset
GROUP BY Customer_Name
ORDER BY total_sales DESC
LIMIT 10;



