# goit-rdb-hw-05
Home work 5 Relational DB

Homework Description:

1. Write an SQL query that will display the order_details table and the customer_id field from the orders table, respectively, for each field of a record from the order_details table.

This should be done using a nested query in the SELECT statement.

2. Write an SQL query that will display the order_details table. Filter the results so that the corresponding record from the orders table satisfies the condition shipper_id=3.

This should be done using a nested query in the WHERE statement.

3. Write an SQL query, nested in the FROM statement, that will select rows with the condition quantity>10 from the order_details table. For the obtained data, find the average value of the quantity field — group by order_id.

4. Solve problem 3 using the WITH statement to create a temporary table temp. If your MySQL version is earlier than 8.0, create this query by analogy with how it is done in the abstract.

5. Create a function with two parameters that will divide the first parameter by the second. Both parameters and the return value must be of type FLOAT.

Use the DROP FUNCTION IF EXISTS construct. Apply the function to the quantity attribute of the order_details table. The second parameter can be any number you want.
