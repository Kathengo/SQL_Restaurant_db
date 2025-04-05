-- 1. View the order_details table
SELECT * 
FROM order_details;

-- 2. What is the date range of the table?
SELECT * 
FROM order_details
Order by order_date;

SELECT Min(order_date), Max(order_date) 
FROM order_details;

-- 3. How many orders ware many within this date range?
SELECT Count(Distinct order_id)
FROM order_details;

-- 4. How many items were ordered within this date range?
SELECT Count(*)
FROM order_details;

-- 5. Which orders had the most number of items?
Select order_id, COUNT(item_id) AS num_items
from order_details
group by order_id 
Order by num_items desc;

-- 6. How many orders has more than 12 items?
Select count(*)  from
(Select order_id, COUNT(item_id) AS num_items
from order_details
group by order_id
Having num_items >12) AS num_orders

