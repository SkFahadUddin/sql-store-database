# SQL Store Database

A relational database for a small online store, built in MySQL. It holds customers, products, orders, and order items. The project includes table constraints, sample data, and 25 queries that answer business questions.

## Skills shown

- Schema design with primary keys, foreign keys, and CHECK constraints
- Filtering, sorting, and wildcards
- Joins, GROUP BY, and HAVING
- CASE and COALESCE
- CTEs, a subquery, and window functions.

## Tables

- customers: stores each shopper's name, unique email, city, and signup date.
- products: stores name, category, price, and stock. A CHECK blocks prices of zero or less and negative stock.
- orders: stores one row per order. It links to customers and holds a status of placed, shipped, delivered, or cancelled.
- order_items: stores the products inside each order. It links to orders and products, and it holds the quantity and the price at the time of sale.

## Sample data

- 10 customers, 12 products in four categories, 15 orders, and 35 order items
- Edge cases built in: one customer with a missing city, two customers with no orders, one product that never sold, two cancelled orders, and one customer with six orders

## Design decisions

Why does order_items store unit_price when products already has price?
A product price changes over time. If an old order read the current price, its total would change. Storing unit_price keeps each past order accurate.

Why use a separate order_items table?
One order holds many products. Putting them in one orders row would force repeated columns or repeated rows. A separate table gives each product line its own row and keeps the data clean.

What happens when you delete a customer who has orders?
I used the default foreign key rule, so MySQL blocks the delete while orders exist. This protects order history from silent loss.

## Queries I am proud of

Query 27: orders above the average order total
A CTE sums each order's value and skips cancelled orders. The main query keeps the orders above the average. It taught me to build a result in steps and reuse it.

Query 29: cumulative sales by month
A CTE totals sales per month. A window function then adds a running total. It taught me how SUM OVER works with ORDER BY.

Query 30: best selling product in each category
RANK with PARTITION BY ranks products inside each category. The outer query keeps rank one. It taught me to filter on a window function result through a CTE.

## A mistake I made

My first export failed with a permission error. Workbench tried to write inside a OneDrive folder, and Windows blocked it. I moved the project to a plain folder outside OneDrive and exported again.

## How to run

1. Open MySQL Workbench and connect to your server.
2. Run schema.sql to create the database and tables.
3. Run data.sql to insert the sample data.
4. Run queries.sql to see the results.

## Files

- schema.sql: creates the database and tables
- data.sql: inserts the sample data
- queries.sql: 25 queries with comments
- diagram.png: table diagram