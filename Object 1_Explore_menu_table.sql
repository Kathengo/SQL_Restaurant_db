Use restaurant_db;

-- 1. View the menu_items table
Select * from menu_items;

-- 2. Find the number of items on the menu 
Select COUNT(*) from menu_items;

-- 3. What are the least and most expensive items on the menu?
Select * from menu_items
Order by price DESC;

-- 4. How many Italian dishes are on the menu? 
Select COUNT(*) from menu_items
WHERE category = 'Italian' ;

-- 5. What are the least and most expensive Italian dishes on the menu?
Select * 
from menu_items
WHERE category = 'Italian' 
ORDER BY price;

Select * 
from menu_items
WHERE category = 'Italian' 
ORDER BY price desc;
-- 6. How many dishese are in each category?
Select category, COUNT(menu_item_id) AS num_dishes
from menu_items
GROUP By category;

-- 7. What is the average dish price within each category?
Select category, avg(price) AS avg_price_dishes
from menu_items
GROUP By category;

