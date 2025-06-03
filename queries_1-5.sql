// 1. Write an SQL query that will display the order_details table and the customer_id field from the orders table, respectively, for each field of a record from the order_details table.
// This should be done using a nested query in the SELECT statement.
SELECT 
    od.*, 
    (SELECT o.customer_id 
     FROM orders o 
     WHERE o.order_id = od.order_id) AS customer_id
FROM order_details od;

// 2. Write an SQL query that will display the order_details table. Filter the results so that the corresponding record from the orders table satisfies the condition shipper_id=3.
// This should be done using a nested query in the WHERE statement.
SELECT * 
FROM order_details od
WHERE od.order_id IN (
    SELECT o.order_id 
    FROM orders o 
    WHERE o.shipper_id = 3
);

// 3. Write an SQL query, nested in the FROM statement, that will select rows with the condition quantity>10 from the order_details table. For the obtained data, find the average value of the quantity field — group by order_id.
SELECT 
    filtered.order_id, 
    AVG(filtered.quantity) AS avg_quantity
FROM (
    SELECT * 
    FROM order_details 
    WHERE quantity > 10
) AS filtered
GROUP BY filtered.order_id;

// 4. Solve problem 3 using the WITH statement to create a temporary table temp. If your MySQL version is earlier than 8.0, create this query by analogy with how it is done in the abstract.
WITH temp AS (
    SELECT * 
    FROM order_details 
    WHERE quantity > 10
)
SELECT 
    temp.order_id, 
    AVG(temp.quantity) AS avg_quantity
FROM temp
GROUP BY temp.order_id;

// 5. Create a function with two parameters that will divide the first parameter by the second. Both parameters and the return value must be of type FLOAT.
// Use the DROP FUNCTION IF EXISTS construct. Apply the function to the quantity attribute of the order_details table. The second parameter can be any number you want.
SELECT 
    order_id,
    product_id,
    quantity,
    divide_floats(quantity, 2.5) AS divided_quantity
FROM order_details;
