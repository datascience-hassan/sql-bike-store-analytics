use SQL_Project;
SELECT 	
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS total_spend                
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id
INNER JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.first_name, c.last_name
Order by total_spend desc
limit 10;

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(o.order_id) > 1;

SELECT 
    c.city,
    c.state,
    COUNT(DISTINCT c.customer_id) AS total_customers,
    COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.city, c.state
ORDER BY total_customers DESC, total_orders DESC
LIMIT 10;

SELECT 
    c.first_name,
    c.last_name,
    c.customer_id
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

select DATE_FORMAT(order_date, '%Y-%m')as total_revenue_month,
Sum(oi.quantity * oi.list_price * (1 - oi.discount)) as total_revenue
from orders o 
inner join order_items oi
	on o.order_id = oi.order_id
Group by  total_revenue_month
order by total_revenue_month asc;
    


WITH order_totals AS (
    SELECT SUM(quantity) AS total_items
    FROM order_items
    GROUP BY order_id
)
SELECT AVG(total_items) AS avg_items
FROM order_totals;


with discount_loss As (
select product_id, sum(quantity * list_price * discount) as dis_loss
from order_items
Group by product_id
)
select product_id, max(dis_loss) as highest_discount
from discount_loss
group by product_id
order by dis_loss desc
limit 1;

with product_Revenue As (
select product_id, sum(quantity * list_price * (1-discount)) as total_revenue
from order_items
group by product_id
)
select *
from product_Revenue
order by total_revenue desc
limit 1;
















    
 
    
