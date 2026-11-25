USE project1;

CREATE TABLE customers(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
email VARCHAR(30) UNIQUE NOT NULL,
city VARCHAR(40) ,
signup_date DATE DEFAULT (CURRENT_DATE())
);

CREATE TABLE products(
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(30) NOT NULL,
category VARCHAR(30),
price INT NOT NULL CHECK (price > 0),
stock_quantity INT DEFAULT 0 CHECK(stock_quantity >= 0 )
);

CREATE TABLE orders(
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT ,
FOREIGN KEY(customer_id) REFERENCES customers(customer_id), 
order_date DATE NOT NULL,
order_status VARCHAR(20) ,CHECK(order_status = "placed" OR order_status = "shipped" OR order_status = "delivered" OR order_status = "cancelled")
);

CREATE TABLE order_items(
order_item_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT ,
FOREIGN KEY(order_id) REFERENCES orders(order_id), 
product_id INT,
FOREIGN KEY(product_id) REFERENCES products(product_id), 
quantity INT , CHECK(quantity > 0),
unit_price INT
);

INSERT INTO customers
(customer_id, first_name, last_name, email, city, signup_date)
VALUES
(1, 'Aarav', 'Sharma', 'aarav@gmail.com', 'Kolkata', '2025-12-10'),
(2, 'Riya', 'Das', 'riya@gmail.com', 'Mumbai', '2025-12-15'),
(3, 'Arjun', 'Mehta', 'arjun@gmail.com', 'Delhi', '2026-01-02'),
(4, 'Priya', 'Sen', 'priya@gmail.com', 'Bangalore', '2026-01-05'),
(5, 'Rahul', 'Roy', 'rahul@gmail.com', 'Kolkata', '2026-01-10'),
(6, 'Sneha', 'Patel', 'sneha@gmail.com', 'Pune', '2026-01-15'),
(7, 'Kabir', 'Khan', 'kabir@gmail.com', 'Chennai', '2026-02-01'),
(8, 'Ananya', 'Bose', 'ananya@gmail.com', '', '2026-02-05'),
(9, 'Ishaan', 'Gupta', 'ishaan@gmail.com', 'Hyderabad', '2026-02-10'),
(10, 'Meera', 'Paul', 'meera@gmail.com', 'Kolkata', '2026-03-01');

INSERT INTO products
(product_id, product_name, category, price, stock_quantity)
VALUES
(1, 'Wireless Mouse', 'Electronics', 799, 50),
(2, 'Keyboard', 'Electronics', 1299, 35),
(3, 'Headphones', 'Electronics', 1999, 25),

(4, 'T-Shirt', 'Clothing', 499, 100),
(5, 'Jeans', 'Clothing', 1499, 40),
(6, 'Hoodie', 'Clothing', 1799, 30),

(7, 'Smart Watch', 'Accessories', 2499, 20),
(8, 'Backpack', 'Accessories', 999, 45),
(9, 'Sunglasses', 'Accessories', 699, 60),

(10, 'Coffee Mug', 'Home', 299, 80),
(11, 'Table Lamp', 'Home', 1199, 15),
(12, 'Wall Clock', 'Home', 899, 25);

INSERT INTO orders
(order_id, customer_id, order_date, order_status)
VALUES
-- January 2026
(1, 1, '2026-01-05', 'delivered'),
(2, 1, '2026-01-12', 'delivered'),
(3, 1, '2026-01-20', 'shipped'),
(4, 1, '2026-01-25', 'delivered'),
(5, 1, '2026-01-28', 'placed'),
(6, 1, '2026-01-30', 'delivered'),
(7, 2, '2026-01-15', 'delivered'),

-- February 2026
(8, 2, '2026-02-05', 'shipped'),
(9, 3, '2026-02-10', 'delivered'),
(10, 3, '2026-02-18', 'placed'),
(11, 4, '2026-02-22', 'delivered'),
(12, 5, '2026-02-25', 'cancelled'),

-- March 2026
(13, 6, '2026-03-03', 'delivered'),
(14, 7, '2026-03-10', 'shipped'),
(15, 8, '2026-03-15', 'cancelled');

INSERT INTO order_items
(order_item_id, order_id, product_id, quantity, unit_price)
VALUES

-- Order 1
(1, 1, 1, 2, 799),
(2, 1, 4, 1, 499),
(3, 1, 10, 2, 299),

-- Order 2
(4, 2, 2, 1, 1299),
(5, 2, 8, 1, 999),

-- Order 3
(6, 3, 3, 1, 1999),
(7, 3, 5, 2, 1499),
(8, 3, 10, 1, 299),

-- Order 4
(9, 4, 7, 1, 2499),
(10, 4, 9, 2, 699),

-- Order 5
(11, 5, 6, 1, 1799),
(12, 5, 4, 2, 499),
(13, 5, 11, 1, 1199),

-- Order 6
(14, 6, 1, 1, 799),
(15, 6, 3, 1, 1999),

-- Order 7
(16, 7, 5, 1, 1499),
(17, 7, 10, 3, 299),

-- Order 8
(18, 8, 2, 1, 1299),
(19, 8, 8, 2, 999),
(20, 8, 9, 1, 699),

-- Order 9
(21, 9, 7, 1, 2499),
(22, 9, 4, 1, 499),

-- Order 10
(23, 10, 6, 1, 1799),
(24, 10, 11, 1, 1199),

-- Order 11
(25, 11, 1, 2, 799),
(26, 11, 5, 1, 1499),
(27, 11, 10, 2, 299),

-- Order 12 (Cancelled)
(28, 12, 3, 1, 1999),
(29, 12, 8, 1, 999),

-- Order 13
(30, 13, 2, 1, 1299),
(31, 13, 4, 2, 499),

-- Order 14
(32, 14, 7, 1, 2499),
(33, 14, 9, 1, 699),

-- Order 15 (Cancelled)
(34, 15, 6, 1, 1799),
(35, 15, 11, 1, 1199);


-- List ALL customers


SELECT * FROM customers;

-- List the name and price of every product.

SELECT product_name,price FROM products;

-- Show products costing more than 500.

SELECT * FROM products
WHERE price > 500;

-- Show customers from one city of your choice.

SELECT * FROM customers
WHERE city = "Kolkata";

-- Show the five most expensive products.

SELECT * FROM products
ORDER BY price DESC
LIMIT 5;

-- Show all customers who signed up in the last six months of your data.

SELECT * FROM customers
WHERE signup_date >= '25-05-2026';

--  Find products in two named categories using IN.

SELECT * FROM products
WHERE category IN ("Electronics","Clothing");

-- Find customers whose email ends with a certain domain using a wildcard.

SELECT * FROM customers
WHERE email LIKE "%@gmail.com";

-- Find orders that are not cancelled.

SELECT * FROM orders
WHERE order_status != "cancelled";

-- List products sorted by category, then by price from high to low.

SELECT * FROM products
ORDER BY category,price DESC; 

-- Count the customers.

SELECT COUNT(*) AS total_customers FROM customers;

-- Find the average product price per category.

SELECT AVG(price) as average_price,category FROM products
GROUP BY category; 

-- Find the total stock per category.

SELECT SUM(stock_quantity) as total_quantity,category FROM products
GROUP BY category;

-- Find the number of orders per status.

SELECT COUNT(order_id) as total_orders , order_status FROM orders
GROUP BY order_status;

-- Find categories with more than two products, using HAVING.

SELECT COUNT(product_id) as total_products, category FROM products
GROUP BY category
HAVING COUNT(product_id) > 2;

-- List each order with the customer's name.

SELECT orders.order_id,orders.customer_id, CONCAT(customers.first_name," ",customers.last_name) AS customer_name , customers.email FROM
orders INNER JOIN customers
ON orders.customer_id = customers.customer_id;

-- List each order item with the product name and quantity.

SELECT order_item_id,order_id,product_name,stock_quantity FROM 
order_items INNER JOIN products
ON order_items.product_id = products.product_id
ORDER BY order_id ASC;


-- Calculate the total value of each order by multiplying quantity by unit price and summing.

SELECT order_id,product_name,quantity,unit_price,(quantity * unit_price) AS total_price FROM
order_items INNER JOIN products
ON order_items.order_id = products.product_id;

-- Find customers who have never placed an order, using a LEFT JOIN.

SELECT * FROM 
customers LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE order_id IS NULL;

-- 25. Use CASE to label each product as Cheap, Medium, or Expensive.

SELECT
    product_id,
    product_name,
    price,
    CASE
        WHEN price < 500 THEN 'Cheap'
        WHEN price BETWEEN 500 AND 1500 THEN 'Medium'
        ELSE 'Expensive'
    END AS price_category
FROM products;

-- 26. Use COALESCE to show "Unknown" for a missing city.

SELECT
    customer_id,
    first_name,
    last_name,
    COALESCE(NULLIF(city, ''), 'Unknown') AS city
FROM customers;

-- 27. Use a CTE to calculate order totals, then list orders above the average total.

WITH order_totals AS (
    SELECT
        o.order_id,
        o.customer_id,
        o.order_date,
        SUM(oi.quantity * oi.unit_price) AS total_amount
    FROM orders o
    JOIN order_items oi
        ON o.order_id = oi.order_id
    WHERE o.order_status != 'cancelled'
    GROUP BY
        o.order_id,
        o.customer_id,
        o.order_date
)
SELECT *
FROM order_totals
WHERE total_amount > (
    SELECT AVG(total_amount)
    FROM order_totals
);

-- 28. Use ROW_NUMBER to rank products by price within each category.

SELECT
    product_id,
    product_name,
    category,
    price,
    ROW_NUMBER() OVER (
        PARTITION BY category
        ORDER BY price DESC
    ) AS price_rank
FROM products;

-- 29. Use a running total with a window function to show cumulative sales by month.

WITH monthly_sales AS (
    SELECT
        DATE_FORMAT(o.order_date, '%Y-%m') AS sales_month,
        SUM(oi.quantity * oi.unit_price) AS total_sales
    FROM orders o
    JOIN order_items oi
        ON o.order_id = oi.order_id
    WHERE o.order_status != 'cancelled'
    GROUP BY DATE_FORMAT(o.order_date, '%Y-%m')
)
SELECT
    sales_month,
    total_sales,
    SUM(total_sales) OVER (
        ORDER BY sales_month
    ) AS cumulative_sales
FROM monthly_sales;

-- 30. Find the best selling product in each category.

WITH product_sales AS (
    SELECT
        p.product_id,
        p.product_name,
        p.category,
        SUM(oi.quantity) AS total_sold,
        RANK() OVER (
            PARTITION BY p.category
            ORDER BY SUM(oi.quantity) DESC
        ) AS sales_rank
    FROM products p
    JOIN order_items oi
        ON p.product_id = oi.product_id
    JOIN orders o
        ON oi.order_id = o.order_id
    WHERE o.order_status != 'cancelled'
    GROUP BY
        p.product_id,
        p.product_name,
        p.category
)
SELECT
    product_id,
    product_name,
    category,
    total_sold
FROM product_sales
WHERE sales_rank = 1;

