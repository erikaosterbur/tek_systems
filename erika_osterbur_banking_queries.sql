-- 1. For each product, show the product name "Product" and the product type name "Type".

use Banking;

select NAME as `Product`, PRODUCT_TYPE_CD as `Type`
from product
;

-- 2. For each branch, list the branch name and city, plus the last name and title of each employee who works in that branch.

select b.NAME as `Name`, b.CITY as `City`, e.LAST_NAME as `Last Name`, e.TITLE  as `Title`
from branch as b
join employee as e on b.BRANCH_ID = e.ASSIGNED_BRANCH_ID 
;

-- 3. Show a list of each unique employee title.

select distinct TITLE 
from employee
;

-- 4. Show the last name and title of each employee, along with the last name and title of that employee's boss.

select e.LAST_NAME as `Last Name`, e.TITLE as `Title`, b.LAST_NAME as `Boss's Last Name`, b.TITLE as `Boss's Title`
from employee as e
left join employee b on b.EMP_ID = e.SUPERIOR_EMP_ID 
;

-- 5. For each account, show the name of the account's product, the available balance, and the customer's last name.

select p.NAME as `Product Name`, a.AVAIL_BALANCE as `Available Balance`, i.LAST_NAME as `Customer Last Name`  
from account as a
join product p on p.PRODUCT_CD = a.PRODUCT_CD 
join customer c on c.CUST_ID = a.CUST_ID 
join individual i on i.CUST_ID = c.CUST_ID 
;

-- 6. List all account transaction details for individual customers whose last name starts with 'T'.

select ac.TXN_ID, ac.AMOUNT, ac.FUNDS_AVAIL_DATE, ac.TXN_DATE, ac.TXN_TYPE_CD, ac.ACCOUNT_ID, ac.EXECUTION_BRANCH_ID, ac.TELLER_EMP_ID  
from acc_transaction as ac
join account a on a.ACCOUNT_ID = ac.ACCOUNT_ID
join customer c on c.CUST_ID = a.CUST_ID 
join individual i on i.CUST_ID = c.CUST_ID 
where i.LAST_NAME like 'T%'
;

-- test change

