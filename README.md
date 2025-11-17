✅ README.md for Your PL/SQL Assignment
# PL/SQL Records, Collections & GOTO Demonstration

This project demonstrates the use of **PL/SQL Records**, **Collections (Nested Table of Records)**, and **GOTO statements** through a simple Employee Bonus Calculation program.  
It is designed for academic assessment and follows the requirements for demonstrating core PL/SQL procedural features.

---

## 📌 **Project Overview**

The program stores a list of employees using:

- A **user-defined RECORD type** (`emp_rec_type`)
- A **Collection of Records** implemented as a **Nested Table** (`emp_table_type`)
- A loop that processes employee salary data
- A **GOTO** statement that handles invalid input conditions

The system calculates a **10% bonus** for each employee with a valid salary and prints a formatted bonus report.

---

## 📁 **Contents of This Repository**

| File | Description |
|------|-------------|
| `bonus_demo.sql` | Main PL/SQL script demonstrating Records, Nested Table Collections, and GOTO. |
| `README.md` | Documentation explaining the program's purpose and usage. |

---

## 🧠 **Concepts Demonstrated**

### ✔️ **1. PL/SQL Record**
A custom record type stores employee attributes:
- `emp_id`
- `emp_name`
- `salary`
- `bonus`

### ✔️ **2. Collection of Records**
A **Nested Table** stores multiple employee records:
```plsql
TYPE emp_table_type IS TABLE OF emp_rec_type;
