#3.MEMBUAT TABLE MASTER 
CREATE TABLE bank_muamalat.master_table AS
select o.Date as order_date,
       pc.CategoryName as category_name,
       p.ProdName as product_name,
       p.Price as product_price,
       o.Quantity as order_qty,
       p.Price * o.Quantity as total_sales,
       c.CustomerEmail as cust_email,
       c.CustomerCity as cust_city
from bank_muamalat.Orders as o
join bank_muamalat.Customers as c
on o.CustomerID = c.CustomerID
join bank_muamalat.Products as p
on o.ProdNumber = p.ProdNumber
join bank_muamalat.ProductCategory as pc
on p.Category = pc.CategoryID
order by 1, 5
