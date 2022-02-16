use classicmodels;

-- 1. Write a query to display each customer’s name (as “Customer Name”) alongside the name of the employee who is responsible for that customer’s orders.
-- The employee name should be in a single “Sales Rep” column formatted as “lastName, firstName”.  
-- The output should be sorted alphabetically by customer name.

select c.customerName as `Customer Name`, concat(e.lastName, ", ", e.firstName) as `Sales Rep`
from customers as c
join employees as e on e.employeeNumber = c.salesRepEmployeeNumber 
order by `Customer Name` asc
;

-- 2. Determine which products are most popular with our customers.  
-- For each product, list the total quantity ordered along with the total sale generated (total quantity ordered * priceEach) for that product.  
-- The column headers should be “Product Name”, “Total # Ordered” and “Total Sale”.  
-- List the products by Total Sale descending.


-- 3. Write a query which lists order status and the # of orders with that status.  
-- Column headers should be “Order Status” and “# Orders”.  
-- Sort alphabetically by status.


-- 4. Write a query to list, for each product line, the total # of products sold from that product line.  
-- The first column should be “Product Line” and the second should be “# Sold”.  
-- Order by the second column descending.


-- 5. For each employee who represents customers, output the total # of orders that employee’s customers have placed alongside the total sale amount of those orders.  
-- The employee name should be output as a single column named “Sales Rep” formatted as “lastName, firstName”.  
-- The second column should be titled “# Orders” and the third should be “Total Sales”.   
-- Sort the output by Total Sales descending.  
-- Only (and all) employees with the job title ‘Sales Rep’ should be included in the output, and if the employee made no sales the Total Sales should display as “0.00”.


-- 6. Your product team is requesting data to help them create a bar-chart of monthly sales since the company’s inception.  
-- Write a query to output the month (January, February, etc.), 4-digit year, and total sales for that month.  
-- The first column should be labeled ‘Month’, the second ‘Year’, and the third should be ‘Payments Received’.  
-- Values in the third column should be formatted as numbers with two decimals – for example: 694,292.68.