# Database Research

## Relations in Databases

### 1. One-to-One (1:1)
- Each record in **Table A** is associated with exactly one record in **Table B** and vice versa.
- Example: **A person and their passport** (Each person has one passport, and each passport belongs to one person).

### 2. One-to-Many (1:M)
- A single record in **Table A** can be related to multiple records in **Table B**, but each record in **Table B** is related to only one record in **Table A**.
- Example: **A customer and their orders** (A customer can place multiple orders, but each order belongs to only one customer).

### 3. Many-to-Many (M:N)
- Multiple records in **Table A** can be related to multiple records in **Table B**.
- Implemented using a **junction table** (or bridge table).
- Example: **Students and courses** (A student can enroll in multiple courses, and each course can have multiple students).

📖 **References:**
- [Relational Database Concepts](https://www.geeksforgeeks.org/types-of-database-relationships/)
- [One-to-One, One-to-Many, Many-to-Many Relationships](https://www.educative.io/answers/what-are-the-types-of-database-relationships)

---

## Write-Ahead Logging (WAL)

### **What is Write-Ahead Logging?**
- A **database consistency** mechanism where changes are first written to a log before being applied to the main database.
- Ensures **durability (D) in ACID** properties.
- Helps in **crash recovery**.

### **How it Works:**
1. A change (transaction) is recorded in a **WAL log file** before modifying the actual database.
2. If a crash occurs before changes are fully committed, the system can replay the WAL log and restore consistency.

### **Benefits of WAL:**
- Faster writes (since logs are sequential).
- Better crash recovery.
- Concurrency control.

📖 **References:**
- [PostgreSQL Write-Ahead Logging](https://www.postgresql.org/docs/current/wal-intro.html)
- [WAL Explained](https://www.geeksforgeeks.org/write-ahead-logging-in-dbms/)

---

## Normalization vs Denormalization

### **Normalization**
- The process of organizing a database to **reduce redundancy** and **improve integrity**.
- Achieved through **normal forms** (1NF, 2NF, 3NF, etc.).
- Reduces data duplication by breaking large tables into **smaller related tables**.

### **Denormalization**
- The process of **combining tables** to improve **read performance** at the cost of redundancy.
- Used in **data warehouses** and **high-performance read-heavy applications**.

### **Differences Between Normalization and Denormalization**
| Feature           | Normalization        | Denormalization     |
|------------------|--------------------|--------------------|
| Purpose         | Reduce redundancy, maintain integrity | Improve query performance |
| Data Redundancy | **Low** (minimized)  | **High** (increased) |
| Query Performance | Slower (requires joins) | Faster (fewer joins) |
| Storage Space   | Less (efficient)    | More (duplicated data) |
| Best For       | Transactional systems (OLTP) | Analytical systems (OLAP) |

📖 **References:**
- [Normalization vs. Denormalization](https://www.geeksforgeeks.org/normalization-vs-denormalization/)
- [Database Normalization Explained](https://www.educative.io/answers/what-is-database-normalization)

---
