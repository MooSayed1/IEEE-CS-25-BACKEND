# RDBMS (Relational Database Management System)

## What is RDBMS?
RDBMS (Relational Database Management System) is a type of database management system that stores data in a **structured format using tables, rows, and columns**. It follows the **relational model**, meaning data is organized with relationships between tables using **primary keys and foreign keys**.

### Key Features:
- **Structured Storage**: Data is stored in tables.
- **Relationships**: Uses keys (Primary, Foreign) to link tables.
- **ACID Compliance**: Ensures **Atomicity, Consistency, Isolation, and Durability** for transactions.
- **SQL Support**: Uses **Structured Query Language (SQL)** for querying and managing data.
- **Scalability & Security**: Supports multi-user environments with access control.

### Examples of RDBMS:
- **PostgreSQL**
- **MySQL**
- **Microsoft SQL Server**
- **Oracle Database**
- **SQLite**

---

## RDBMS vs DBMS

| Feature          | **RDBMS** (Relational DBMS) | **DBMS** (Database Management System) |
|-----------------|-------------------------|--------------------------------|
| **Data Structure** | Stores data in tables (rows & columns) | Stores data as files, hierarchical, network, or object-based |
| **Relationships** | Uses **Primary & Foreign keys** | No strict relationships between data |
| **Data Integrity** | Follows **ACID properties** for consistency | Does not necessarily follow ACID |
| **Query Language** | Uses **SQL** for data manipulation | May use **SQL, NoSQL, or other custom queries** |
| **Normalization** | Supports **normalization** to reduce redundancy | No strict normalization rules |
| **Security** | Better security with access control & permissions | Less secure compared to RDBMS |
| **Examples** | PostgreSQL, MySQL, SQL Server, Oracle | MongoDB, Redis, XML Databases, File Systems |

### Summary:
- **RDBMS is a subset of DBMS** that follows a structured relational model.
- **DBMS includes both relational and non-relational databases.**

---

## Naming Conventions in RDBMS

Following a good **naming convention** improves **readability, maintainability, and consistency** in databases.

### Best Practices for Naming Conventions:

| **Item**         | **Best Practice** | **Example** |
|-----------------|-----------------|-------------|
| **Tables**       | Use **singular nouns** | `User`, `Order`, `Product` (NOT `Users`, `Orders`) |
| **Columns**      | Use lowercase & underscores (snake_case) | `first_name`, `created_at`, `order_id` |
| **Primary Key**  | Name as `id` or `[table]_id` | `id`, `user_id`, `order_id` |
| **Foreign Key**  | Reference parent table with `_id` | `user_id` (FK to `User.id`) |
| **Indexes**      | Prefix with `idx_` + table + column(s) | `idx_user_email` |
| **Constraints**  | Prefix with `chk_`, `fk_`, `pk_`, `uq_` | `pk_user_id`, `fk_order_user_id` |
| **Procedures**   | Use `sp_` + action + object | `sp_get_user_orders` |
| **Views**        | Prefix with `vw_` + purpose | `vw_active_users` |
| **Boolean Columns** | Use `is_` or `has_` prefix | `is_active`, `has_discount` |
| **Timestamps**   | Use `_at` for clarity | `created_at`, `updated_at` |

### Example Table Schema (Following Conventions):

```sql
CREATE TABLE user (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

---

## Conclusion
- **RDBMS** is a structured database system based on tables and relationships.
- **RDBMS vs DBMS**: RDBMS is more structured, secure, and relational, while DBMS includes a broader range of storage models.
- **Naming conventions** ensure clarity and consistency in database design.

