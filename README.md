# Restaurant Operation Analysis
### Tasks
- Explore the menu_items to get idead of what is on the menue
- Explore the order_details to get idead of data of order items
- Combine both tables to understand customer behaviors

### Objective 1: Use Aggregate Functions (COUNT(), AVG()), WHERE Clause, ORDER BY Clause to explore meny_items to answer questions:
- View menu_items
- Find the least and most expensive items:
- Find many Italian dishes and find the least and most expensive dishes
- Find how many dishes in each category and what average dish price

###  Objective 1: Use Aggregate Functions [COUNT(Distinct()), AVG(), Min(), Max(), Having Statement, ORDER BY Clause, Group By Clause and SUBQuerries to explore meny_items to answer questions:
      
-1. View the order_details table
-2. What is the date range of the table?
-3. How many orders ware many within this date range?
-4. How many items were ordered within this date range?
-5. Which orders had the most number of items?
-6. How many orders has more than 12 items?
Select count(*)  from
(Select order_id, COUNT(item_id) AS num_items
from order_details
group by order_id
Having num_items >12) AS num_orders
