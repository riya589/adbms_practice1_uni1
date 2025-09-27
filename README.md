# SQL ACID Properties Demonstration

This repository provides a hands-on SQL script (`FeePayments_ACID_Demo.sql`) that demonstrates the fundamental principles of database transactions and the four ACID properties: **Atomicity, Consistency, Isolation, and Durability**.

The script simulates real-world scenarios in a `FeePayments` table, including successful transactions, failures due to constraint violations, and the use of `COMMIT` and `ROLLBACK` to maintain data integrity.

---

## Key Concepts Covered

* **Atomicity**: Transactions are treated as a single, indivisible unit. Either all operations succeed, or none of them do.
* **Consistency**: A transaction brings the database from one valid state to another, never leaving it in a partially updated or invalid state.
* **Isolation**: Concurrent transactions do not interfere with each other, preventing issues like dirty reads.
* **Durability**: Once a transaction is committed, its changes are permanent and will survive system failures.

---

## Prerequisites

To run this script, you will need a running instance of a relational database system, such as:
* MySQL
* PostgreSQL
* SQL Server
* Oracle

---

## Script Breakdown

The SQL script is divided into four main parts:

* **Part A: Successful Transaction (`COMMIT`)**
    * Inserts three valid payment records into the `FeePayments` table.
    * Uses `COMMIT` to make these changes permanent.
    * **Demonstrates: Atomicity & Durability.**

* **Part B: Failed Transaction (`ROLLBACK` - Duplicate Key)**
    * Attempts to insert a valid record and then an invalid one with a duplicate primary key.
    * The entire transaction is undone using `ROLLBACK`.
    * **Demonstrates: Atomicity & Consistency.**

* **Part C: Failed Transaction (`ROLLBACK` - Constraint Violation)**
    * Attempts to insert a valid record and then an invalid one that violates a `NOT NULL` constraint.
    * The entire transaction is again undone using `ROLLBACK`.
    * **Demonstrates: Atomicity & Consistency.**

* **Part D: Final Verification**
    * Shows the final state of the table, confirming that only the data from the first successful transaction exists.
    * Includes a summary of how all four ACID properties were illustrated.

---

## Expected Output

After running the entire script, the final `SELECT * FROM FeePayments;` query will show only the three records that were successfully committed in Part A, proving that all failed transactions were correctly rolled back.

| payment\_id | student\_name | amount | payment\_date |
| :--- | :--- | :--- | :--- |
| 1 | Ashish | 5000.00 | 2024-06-01 |
| 2 | Smaran | 4500.00 | 2024-06-02 |
| 3 | Vaibhav | 5500.00 | 2024-06-03 |
