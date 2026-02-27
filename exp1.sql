
mysql> CREATE DATABASE College;
Query OK, 1 row affected (0.00 sec)

mysql> use College
Database changed
mysql> use College;
Database changed
mysql> CREATE TABLE Student(Roll_no INT , Name VARCHAR(50) ,Phone VARCHAR(10) , Blood_grp VARCHAR(5) );
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE course(Course_id  INT ,Course_name VARCHAR(50) , Course_duration INT );
Query OK, 0 rows affected (0.01 sec)

mysql> SHOW TABLES ;
+-------------------+
| Tables_in_College |
+-------------------+
| Student           |
| course            |
+-------------------+
2 rows in set (0.00 sec)

mysql> describe Student ;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Roll_no   | int(11)     | YES  |     | NULL    |       |
| Name      | varchar(50) | YES  |     | NULL    |       |
| Phone     | varchar(10) | YES  |     | NULL    |       |
| Blood_grp | varchar(5)  | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> ALTER TABLE Student
    -> DROP COLUMN Blood_grp;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE Student MODIFY Phone INT;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> mysql> ALTER TABLE Student ADD Adhar_no BIGINT;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DROP TABLE Student;
Query OK, 0 rows affected (0.01 sec)


mysql> DROP TABLE course;
Query OK, 0 rows affected (0.01 sec)

mysql> DROP DATABASE College;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE DATABASE Organization;
Query OK, 1 row affected (0.00 sec)

mysql> use Organization;
Database changed
mysql> CREATE TABLE Employee (emp_no VARCHAR(10) , emp_name VARCHAR(50) , dob DATE , address TEXT ,Mobile_no INT, dep_no VARCHAR(10),salary INT);
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE Department (dept_no VARCHAR(10) ,dept_name VARCHAR(50), location VARCHAR(50));
Query OK, 0 rows affected (0.01 sec)



mysql>  show tables;
+------------------------+
| Tables_in_Organization |
+------------------------+
| Department             |
| Employee               |
+------------------------+
2 rows in set (0.00 sec)

mysql> describe Employee ;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| emp_no    | varchar(10) | YES  |     | NULL    |       |
| emp_name  | varchar(50) | YES  |     | NULL    |       |
| dob       | date        | YES  |     | NULL    |       |
| address   | text        | YES  |     | NULL    |       |
| Mobile_no | int(11)     | YES  |     | NULL    |       |
| dep_no    | varchar(10) | YES  |     | NULL    |       |
| salary    | int(11)     | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> describe Department ;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_no   | varchar(10) | YES  |     | NULL    |       |
| dept_name | varchar(50) | YES  |     | NULL    |       |
| location  | varchar(50) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE Employee ADD Designation VARCHAR(30);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE Department DROP COLUMN location;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe Department ;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_no   | varchar(10) | YES  |     | NULL    |       |
| dept_name | varchar(50) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)
