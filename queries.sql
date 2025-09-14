-- Task 1. List of all users who are over 30 years old:

SELECT * FROM qa_shop.user 
	WHERE EXTRACT(YEAR FROM AGE(CURRENT_DATE, date_of_birth)) > 30
;


-- Task 2. Products ordered by user Julian Dunajski:

SELECT p.product_name, oi.quantity, p.price
	FROM qa_shop.product p
		INNER JOIN qa_shop.order_item oi ON p.product_id = oi.product_id
		INNER JOIN qa_shop.order o ON oi.order_id = o.order_id
		INNER JOIN qa_shop.user u ON o.user_id = u.user_id
	WHERE u.first_name = 'Julian' AND u.last_name = 'Dunajski'
;


-- Task 3. Find the order number and amount for the largest single order:

SELECT o.order_id, u.first_name, u.last_name, SUM(p.price * oi.quantity) as total
	FROM qa_shop.product p
		INNER JOIN qa_shop.order_item oi ON p.product_id=oi.product_id
		INNER JOIN qa_shop.order o ON o.order_id=oi.order_id
		INNER JOIN qa_shop.user u ON o.user_id=u.user_id
	GROUP BY o.order_id, u.first_name, u.last_name
	ORDER BY total desc
LIMIT 1
;


-- Task 4. List products that were never ordered:

SELECT p.product_name, p.product_id 
	FROM qa_shop.product p
		LEFT JOIN qa_shop.order_item oi ON p.product_id=oi.product_id
		LEFT JOIN qa_shop.order o ON oi.order_id=o.order_id
	WHERE oi.product_id is NULL
;


-- Task 5. Most frequently ordered product:

SELECT SUM(oi.quantity) as amount, p.product_name 
	FROM qa_shop.product p
		INNER JOIN qa_shop.order_item oi ON oi.product_id=p.product_id
	GROUP BY p.product_name
	ORDER BY amount DESC
LIMIT 1
;


-- Task 6. Calculate the total sales value for each month:


SELECT LPAD(EXTRACT(MONTH FROM DATE(o.order_date))::text, 2, '0') || '-' || EXTRACT(YEAR FROM DATE(o.order_date)) as month_and_year, SUM(oi.quantity * p.price) as total_amount 
	FROM qa_shop.order_item oi
		INNER JOIN qa_shop.product p ON oi.product_id = p.product_id
		INNER JOIN qa_shop.order o ON oi.order_id = o.order_id
	GROUP BY month_and_year
	ORDER BY month_and_year ASC
;



-- Task 7. Calculate the average value of a single order across the entire database:

SELECT AVG(total_amount) FROM (
SELECT SUM(oi.quantity * p.price) as total_amount, o.order_id FROM qa_shop.order_item oi
	INNER JOIN qa_shop.product p ON oi.product_id = p.product_id
	INNER JOIN qa_shop.order o ON oi.order_id = o.order_id
	GROUP BY o.order_id
	)
;


-- Task 8. Identify customers who spent more than 1000 PLN:

SELECT u.first_name, u.last_name, SUM(oi.quantity * p.price) as total_amount 
	FROM qa_shop.order_item oi
		INNER JOIN qa_shop.product p ON oi.product_id = p.product_id
		INNER JOIN qa_shop.order o ON oi.order_id = o.order_id
		INNER JOIN qa_shop.user u ON u.user_id = o.user_id
	GROUP BY u.user_id
	HAVING SUM(oi.quantity * p.price) > 1000
;