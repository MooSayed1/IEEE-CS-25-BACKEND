# MySQL Research

## 1️⃣ Primary Keys vs Unique Keys  
| Feature | Primary Key | Unique Key |
|---------|------------|------------|
| **Uniqueness** | Ensures unique values in the column | Ensures unique values but allows multiple unique keys |
| **NULL Values** | Cannot contain NULL values | Can contain NULL values |
| **Number per Table** | Only one per table | Multiple unique keys allowed |
| **Indexing** | Creates a clustered index | Creates a non-clustered index |

### 📖 Resources:  
- [MySQL Docs on Keys](https://dev.mysql.com/doc/refman/8.0/en/create-table.html)  
- [Primary Key vs Unique Key (GeeksforGeeks)](https://www.geeksforgeeks.org/difference-between-primary-key-and-unique-key/)  

---

## 2️⃣ Constraints in MySQL  
Constraints are rules enforced on table columns to maintain data integrity.  

### ✅ Common Constraints:  
- `PRIMARY KEY` → Ensures unique & non-null values  
- `UNIQUE` → Ensures uniqueness but allows NULL  
- `NOT NULL` → Prevents NULL values  
- `FOREIGN KEY` → Ensures referential integrity  
- `CHECK` → Restricts values based on a condition  
- `DEFAULT` → Assigns a default value  

### 📖 Resources:  
- [MySQL Constraints (Official Docs)](https://dev.mysql.com/doc/refman/8.0/en/create-table.html#constraint-definitions)  
- [MySQL Constraints Explained (W3Schools)](https://www.w3schools.com/mysql/mysql_constraints.asp)  

---

## 3️⃣ Indexing in MySQL  
Indexes improve query performance by making data retrieval faster.  

### ✅ Types of Indexes:  
- **Primary Index** → Created automatically with `PRIMARY KEY` (Clustered Index)  
- **Unique Index** → Ensures unique values  
- **Full-Text Index** → Used for text searches  
- **Composite Index** → Multiple columns in one index  
- **Spatial Index** → Used for geographical data  

### 📖 Resources:  
- [MySQL Indexing Explained](https://dev.mysql.com/doc/refman/8.0/en/mysql-indexes.html)  
- [W3Schools Index Guide](https://www.w3schools.com/mysql/mysql_indexes.asp)  

---

## 🌟 4️⃣ MySQL vs PostgreSQL (Bonus)  
| Feature | MySQL | PostgreSQL |
|---------|------|------------|
| **Performance** | Faster for read-heavy workloads | Better for complex queries & write-heavy operations |
| **ACID Compliance** | Partially ACID-compliant (MyISAM isn't) | Fully ACID-compliant |
| **JSON Support** | Basic JSON functions | Advanced JSON functions |
| **Indexing** | B-tree, Full-Text | B-tree, Hash, GIN, GiST, BRIN |
| **Partitioning** | Basic support | Advanced table partitioning |
| **Concurrency Control** | Table-level locking (MyISAM), Row-level (InnoDB) | MVCC (Multi-Version Concurrency Control) |

### 📖 Resources:  
- [PostgreSQL vs MySQL (DigitalOcean)](https://www.digitalocean.com/community/tutorials/mysql-vs-postgresql)  
- [PostgreSQL vs MySQL (IBM)](https://www.ibm.com/cloud/blog/mysql-vs-postgresql)  
- [Official MySQL Docs](https://dev.mysql.com/doc/)  
- [Official PostgreSQL Docs](https://www.postgresql.org/docs/)  

Would you like a more detailed comparison on any of these topics? 🚀
