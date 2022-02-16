use mock_sba_db;

-- 1. Create a query to return all orders made by users with the first name of “Marion” 
select o.* 
from orders as o
join users as u on u.USER_ID = o.USER_ID
where u.FIRST_NAME = 'Marion'
;

-- 2. Create a query to select all users that have not made an order 






-- 3. Create a Query to select the names and prices of all items that have been part of 2 or more separate orders. 






-- 4. Create a query to return the Order Id, Item name, Item Price, and Quantity from orders made at stores in the city “New York”. Order by Order Id in ascending order. 






-- 5. Your boss would like you to create a query that calculates the total revenue generated by each item. 
-- Revenue for an item can be found as (Item Price * Total Quantity Ordered). 
-- Please return the first column as ‘ITEM_NAME’ and the second column as ‘REVENUE’. 






-- 6. Create a query with the following output: 
	-- a. Column 1 - Store Name 
		-- i. The name of each store 
	-- b. Column 2 - Order Quantity 
		-- i. The number of times an order has been made in this store 
	-- c. Column 3 - Sales Figure 
		-- i. If the store has been involved in more than 3 orders, mark as ‘High’ 
		-- ii. If the store has been involved in less than 3 orders but more than 1 order, mark as ‘Medium’ 
		-- iii. If the store has been involved with 1 or less orders, mark as ‘Low’ 
	-- d. Should be ordered by the Order Quantity in Descending Order 
	 
