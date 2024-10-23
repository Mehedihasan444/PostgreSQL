#Questions (Answer 10 Questions):
- What is PostgreSQL?
  - PostgreSQL is a relational database management system.
- What is the purpose of a database schema in PostgreSQL?
  - A schema is a logical container for organizing tables, views, and other database objects. It helps manage and structure database objects within a namespace.
- Explain the primary key and foreign key concepts in PostgreSQL.
What is the difference between the VARCHAR and CHAR data types?
  - Primary key is an unique identifier of a table and foreign key is a referential key of another table which linked both tables. And VARCHAR is dynamic string data type if declared 30 but take 20 characters it will only take 20 characters space on the other side CHAR is static string data type if declared 30 and take 20 characters it will take 30 characters space.
- Explain the purpose of the WHERE clause in a SELECT statement.
What are the LIMIT and OFFSET clauses used for?
  - Using the WHERE clause we can add conditions in a SELECT statement. And LIMIT and OFFSET clauses are used for pagination.
- How can you perform data modification using UPDATE statements?
  - The UPDATE statement modifies existing data in a table by changing column values. You specify the table, set the new values using SET, and filter the rows to modify using WHERE.
- What is the significance of the JOIN operation, and how does it work in PostgreSQL?
  - JOIN combines rows from two or more tables based on related columns. Common types include INNER JOIN, LEFT JOIN, and RIGHT JOIN. It helps in retrieving data from multiple tables.
- Explain the GROUP BY clause and its role in aggregation operations.
  - GROUP BY groups rows that have the same values in specified columns and is used with aggregate functions like COUNT, SUM, AVG, etc. It helps in summarizing data.
- How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?
  - COUNT returns the number of rows, SUM adds numeric values, and AVG calculates the average of a column. They are often used with GROUP BY.
- What is the purpose of an index in PostgreSQL, and how does it optimize query performance?
  - An index speeds up data retrieval by creating a data structure that allows faster searching and sorting. It reduces query execution time, especially on large tables.
- Explain the concept of a PostgreSQL view and how it differs from a table.
  -  A view is a virtual table based on a query, showing data from one or more tables without storing it. A table stores actual data. Views simplify complex queries.