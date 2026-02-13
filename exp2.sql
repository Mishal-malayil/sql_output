mysql> CREATE TABLE persons (person_id INT PRIMARY KEY, Name VARCHAR(50) NOT NULL, adhar BIGINT NOT NULL UNIQUE,Age INT CHECK(Age>18));
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE Orders (order_id INT PRIMARY KEY,order_number INT NOT NULL,person_id INT ,FOREIGN KEY(person_id)REFERENCES persons(person_id));

mysql> describe persons;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| person_id | int(11)     | NO   | PRI | NULL    |       |
| Name      | varchar(50) | NO   |     | NULL    |       |
| adhar     | bigint(20)  | NO   | UNI | NULL    |       |
| Age       | int(11)     | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> describe Orders;
+--------------+---------+------+-----+---------+-------+
| Field        | Type    | Null | Key | Default | Extra |
+--------------+---------+------+-----+---------+-------+
| order_id     | int(11) | NO   | PRI | NULL    |       |
| order_number | int(11) | NO   |     | NULL    |       |
| person_id    | int(11) | YES  | MUL | NULL    |       |
+--------------+---------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE Employee ADD PRIMARY KEY (emp_no);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE Department ADD PRIMARY KEY (dept_no);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE Employee ADD CONSTRAINT Fk_dept FOREIGN KEY(dept_no) REFERENCES Department(dept_no) ON DELETE CASCADE;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE Orders
    -> DROP PRIMARY KEY;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe Orders;
+--------------+---------+------+-----+---------+-------+
| Field        | Type    | Null | Key | Default | Extra |
+--------------+---------+------+-----+---------+-------+
| order_id     | int(11) | NO   |     | NULL    |       |
| order_number | int(11) | NO   |     | NULL    |       |
| person_id    | int(11) | YES  | MUL | NULL    |       |
+--------------+---------+------+-----+---------+-------+
3 rows in set (0.00 sec)
