--task-1
SELECT contact_name, city, country
FROM customers
ORDER BY contact_name, COALESCE(city, country)
			
--task-2
SELECT product_name, unit_price,
CASE
    WHEN unit_price >= 100 THEN 'Too expensive'
	WHEN unit_price >= 50  AND unit_price < 100 THEN 'Average'
	ELSE 'low price'
END AS price
FROM products

--Task-3
SELECT c.contact_name,COALESCE(order_id::text, 'no order')
FROM customers c
JOIN orders USING(customer_id)

--Task-4
SELECT contact_name, 
CASE
    WHEN contact_title = 'Sales Representative' THEN 'Sales Stuff'
	ELSE contact_title
END
FROM customers

