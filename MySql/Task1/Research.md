# Database and SQL Research

## What is a Database and Why Does It Exist?

A database is an organized collection of structured data that allows users to store, retrieve, manage, and manipulate information efficiently. Databases exist to solve the problem of data organization, storage, and retrieval, ensuring that data remains consistent, accessible, and secure.

### Why Do Databases Exist?

- **Data Organization**: Helps structure and manage vast amounts of data.  
- **Data Integrity**: Maintains accuracy and consistency over time.  
- **Data Security**: Protects sensitive data with access control and encryption.  
- **Efficient Querying**: Allows fast searches and retrieval of information.  
- **Multi-user Access**: Supports multiple users accessing data simultaneously.  
- **Backup & Recovery**: Ensures data can be restored in case of failures.  

## Types of Databases

- **Relational Databases (RDBMS)** – MySQL, PostgreSQL, Oracle.  
- **NoSQL Databases** – MongoDB, Cassandra, Redis.  
- **Graph Databases** – Neo4j.  
- **Key-Value Stores** – Amazon DynamoDB.  

## What is SQL?

SQL (Structured Query Language) is a domain-specific language used for managing and querying relational databases. It allows users to interact with databases by performing operations such as inserting, updating, deleting, and retrieving data.

### Key Features of SQL

- **Declarative Language**: Describes what needs to be done, not how to do it.  
- **Data Querying**: Uses `SELECT` statements to retrieve data.  
- **Data Manipulation**: Supports `INSERT`, `UPDATE`, `DELETE` commands.  
- **Data Definition**: Creates and modifies schema using `CREATE`, `ALTER`, `DROP`.  
- **Transaction Control**: Ensures consistency using `COMMIT`, `ROLLBACK`.  

### Example SQL Queries

```sql
-- Retrieve all users
SELECT * FROM users;

-- Insert a new user
INSERT INTO users (id, name, email) VALUES (1, 'John Doe', 'john@example.com');

-- Update user email
UPDATE users SET email = 'john.doe@example.com' WHERE id = 1;
