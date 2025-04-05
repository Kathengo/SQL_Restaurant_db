-- 1. Combine the the menu_items and order_details tables into a single table
Select * from menu_items ;
SELECT * from order_details;
Select * 
FROM order_details od Left Join menu_items mi 
	ON od.item_id = mi.menu_item_id;
	
-- 2. What were the least and most ordered items? What categories were they in?
Select item_name , category, COUNT(order_details_id) AS num_Purchases    
FROM order_details od Left Join menu_items mi 
	ON od.item_id = mi.menu_item_id
Group by item_name, category
Order by num_Purchases desc;

-- 3. What were the top 5 orders that spent the most money?
Select  order_id, SUM(price) AS total_spend 
FROM order_details od Left Join menu_items mi 
	ON od.item_id = mi.menu_item_id
group by order_id
Order by total_spend desc
Limit 5 ;
	
-- 4. View the details of the highest spend order. What insights can you gather from the results?
Select  category, count(item_id) AS num_items
FROM order_details od Left Join menu_items mi 
	ON od.item_id = mi.menu_item_id
Where order_id = 440 
Group By category;

-- 5. View the details of the top 5 highest spend orders. What insights can you gather from the results?
Select  order_id, category, count(item_id) AS num_items
FROM order_details od Left Join menu_items mi 
	ON od.item_id = mi.menu_item_id
Where order_id IN (440, 2075, 1957, 330, 2675)
Group By order_id , category;

-- keep Italian items on menu 
