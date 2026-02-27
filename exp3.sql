mysql> USE Organization;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> describe Employee;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| emp_no      | varchar(10) | NO   | PRI | NULL    |       |
| emp_name    | varchar(50) | YES  |     | NULL    |       |
| Mobile_no   | int(11)     | YES  |     | NULL    |       |
| salary      | int(11)     | YES  |     | NULL    |       |
| Designation | varchar(30) | YES  |     | NULL    |       |
| dept_no     | varchar(10) | YES  | MUL | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> alter table Employee drop column Designation;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe Employee;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| emp_no    | varchar(10) | NO   | PRI | NULL    |       |
| emp_name  | varchar(50) | YES  |     | NULL    |       |
| Mobile_no | int(11)     | YES  |     | NULL    |       |
| salary    | int(11)     | YES  |     | NULL    |       |
| dept_no   | varchar(10) | YES  | MUL | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)


mysql> INSERT INTO Department (dept_no, dept_name)
    -> VALUES
    -> ('D01', 'Human Resources'),
    -> ('D02', 'Finance'),
    -> ('D03', 'Information Technology'),
    -> ('D04', 'Marketing'),
    -> ('D05', 'Sales'),
    -> ('D06', 'Research and Development'),
    -> ('D07', 'Customer Support'),
    -> ('D08', 'Administration'),
    -> ('D09', 'Operations'),
    -> ('D10', 'Quality Assurance');
Query OK, 10 rows affected (0.00 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select * from Department
    -> ;
+---------+--------------------------+
| dept_no | dept_name                |
+---------+--------------------------+
| D01     | Human Resources          |
| D02     | Finance                  |
| D03     | Information Technology   |
| D04     | Marketing                |
| D05     | Sales                    |
| D06     | Research and Development |
| D07     | Customer Support         |
| D08     | Administration           |
| D09     | Operations               |
| D10     | Quality Assurance        |
+---------+--------------------------+
10 rows in set (0.00 sec)

mysql> alter table Employee
    -> ADD column Designation VARCHAR(50);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Employee (emp_no, emp_name, Mobile_no, salary, dept_no, Designation)VALUES
    -> ('E001', 'Arjun Kumar', 987654321, 4500, 'D01', 'HR Executive'),
    -> ('E002', 'Priya Sharma', 987654322, 4800, 'D02', 'Accountant'),
    -> ('E003', 'Ravi Patel', 987654323, 5200, 'D01', 'HR Manager'),
    -> ('E004', 'Neha Singh', 987654324, 4700, 'D03', 'Software Engineer'),
    -> ('E005', 'Amit Verma', 987654325, 6000, 'D02', 'Senior Accountant'),
    -> ('E006', 'Sneha Iyer', 987654326, 5500, 'D03', 'System Analyst'),
    -> ('E007', 'Karan Mehta', 987654327, 4300, 'D01', 'HR Assistant'),
    -> ('E008', 'Pooja Nair', 987654328, 5000, 'D02', 'Finance Analyst'),
    -> ('E009', 'Rahul Das', 987654329, 6200, 'D03', 'Project Manager'),
    -> ('E010', 'Anjali Gupta', 987654330, 5800, 'D01', 'Recruitment Lead');
Query OK, 10 rows affected (0.00 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select * from Employee;
+--------+--------------+-----------+--------+---------+-------------------+
| emp_no | emp_name     | Mobile_no | salary | dept_no | Designation       |
+--------+--------------+-----------+--------+---------+-------------------+
| E001   | Arjun Kumar  | 987654321 |   4500 | D01     | HR Executive      |
| E002   | Priya Sharma | 987654322 |   4800 | D02     | Accountant        |
| E003   | Ravi Patel   | 987654323 |   5200 | D01     | HR Manager        |
| E004   | Neha Singh   | 987654324 |   4700 | D03     | Software Engineer |
| E005   | Amit Verma   | 987654325 |   6000 | D02     | Senior Accountant |
| E006   | Sneha Iyer   | 987654326 |   5500 | D03     | System Analyst    |
| E007   | Karan Mehta  | 987654327 |   4300 | D01     | HR Assistant      |
| E008   | Pooja Nair   | 987654328 |   5000 | D02     | Finance Analyst   |
| E009   | Rahul Das    | 987654329 |   6200 | D03     | Project Manager   |
| E010   | Anjali Gupta | 987654330 |   5800 | D01     | Recruitment Lead  |
+--------+--------------+-----------+--------+---------+-------------------+
10 rows in set (0.00 sec)

mysql> select emp_no,emp_name from Employee where dept_no ='D02';
+--------+--------------+
| emp_no | emp_name     |
+--------+--------------+
| E002   | Priya Sharma |
| E005   | Amit Verma   |
| E008   | Pooja Nair   |
+--------+--------------+
3 rows in set (0.01 sec)


mysql> select emp_no,emp_name,Designation,dept_no,salary from Employee  order by salary desc;
+--------+--------------+-------------------+---------+--------+
| emp_no | emp_name     | Designation       | dept_no | salary |
+--------+--------------+-------------------+---------+--------+
| E009   | Rahul Das    | Project Manager   | D03     |   6200 |
| E005   | Amit Verma   | Senior Accountant | D02     |   6000 |
| E010   | Anjali Gupta | Recruitment Lead  | D01     |   5800 |
| E006   | Sneha Iyer   | System Analyst    | D03     |   5500 |
| E003   | Ravi Patel   | HR Manager        | D01     |   5200 |
| E008   | Pooja Nair   | Finance Analyst   | D02     |   5000 |
| E002   | Priya Sharma | Accountant        | D02     |   4800 |
| E004   | Neha Singh   | Software Engineer | D03     |   4700 |
| E001   | Arjun Kumar  | HR Executive      | D01     |   4500 |
| E007   | Karan Mehta  | HR Assistant      | D01     |   4300 |
+--------+--------------+-------------------+---------+--------+
10 rows in set (0.00 sec)

mysql> select emp_no,emp_name from Employee where salary between 2000 and 5000;
+--------+--------------+
| emp_no | emp_name     |
+--------+--------------+
| E001   | Arjun Kumar  |
| E002   | Priya Sharma |
| E004   | Neha Singh   |
| E007   | Karan Mehta  |
| E008   | Pooja Nair   |
+--------+--------------+
5 rows in set (0.00 sec)

mysql> select distinct Designation from Employee;
+-------------------+
| Designation       |
+-------------------+
| HR Executive      |
| Accountant        |
| HR Manager        |
| Software Engineer |
| Senior Accountant |
| System Analyst    |
| HR Assistant      |
| Finance Analyst   |
| Project Manager   |
| Recruitment Lead  |
+-------------------+
10 rows in set (0.00 sec)

mysql> alter table Employee
    -> ;
Query OK, 0 rows affected (0.00 sec)

mysql> update Employee 
    -> set salary =45000
    -> where Designation ='HR Manager';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Employee;
+--------+--------------+-----------+--------+---------+-------------------+
| emp_no | emp_name     | Mobile_no | salary | dept_no | Designation       |
+--------+--------------+-----------+--------+---------+-------------------+
| E001   | Arjun Kumar  | 987654321 |   4500 | D01     | HR Executive      |
| E002   | Priya Sharma | 987654322 |   4800 | D02     | Accountant        |
| E003   | Ravi Patel   | 987654323 |  45000 | D01     | HR Manager        |
| E004   | Neha Singh   | 987654324 |   4700 | D03     | Software Engineer |
| E005   | Amit Verma   | 987654325 |   6000 | D02     | Senior Accountant |
| E006   | Sneha Iyer   | 987654326 |   5500 | D03     | System Analyst    |
| E007   | Karan Mehta  | 987654327 |   4300 | D01     | HR Assistant      |
| E008   | Pooja Nair   | 987654328 |   5000 | D02     | Finance Analyst   |
| E009   | Rahul Das    | 987654329 |   6200 | D03     | Project Manager   |
| E010   | Anjali Gupta | 987654330 |   5800 | D01     | Recruitment Lead  |
+--------+--------------+-----------+--------+---------+-------------------+
10 rows in set (0.00 sec)

mysql> update Employee  set Mobile_no =999568302 where emp_name ='Rahul Das';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0



mysql> delete from Employee where salary=5000;
Query OK, 1 row affected (0.00 sec)

mysql> select emp_name,Mobile_no from Employee where emp_name like 'A%';
+--------------+-----------+
| emp_name     | Mobile_no |
+--------------+-----------+
| Arjun Kumar  | 987654321 |
| Amit Verma   | 987654325 |
| Anjali Gupta | 987654330 |
+--------------+-----------+
3 rows in set (0.01 sec)


mysql> select  * from Employee where length(emp_name)>=3 and salary > 5000;
+--------+--------------+-----------+--------+---------+-------------------+
| emp_no | emp_name     | Mobile_no | salary | dept_no | Designation       |
+--------+--------------+-----------+--------+---------+-------------------+
| E003   | Ravi Patel   | 987654323 |  45000 | D01     | HR Manager        |
| E005   | Amit Verma   | 987654325 |   6000 | D02     | Senior Accountant |
| E006   | Sneha Iyer   | 987654326 |   5500 | D03     | System Analyst    |
| E009   | Rahul Das    | 999568302 |   6200 | D03     | Project Manager   |
| E010   | Anjali Gupta | 987654330 |   5800 | D01     | Recruitment Lead  |
+--------+--------------+-----------+--------+---------+-------------------+
5 rows in set (0.00 sec)

mysql> select  * from Employee where emp_no in('E001','E002','E006');
+--------+--------------+-----------+--------+---------+----------------+
| emp_no | emp_name     | Mobile_no | salary | dept_no | Designation    |
+--------+--------------+-----------+--------+---------+----------------+
| E001   | Arjun Kumar  | 987654321 |   4500 | D01     | HR Executive   |
| E002   | Priya Sharma | 987654322 |   4800 | D02     | Accountant     |
| E006   | Sneha Iyer   | 987654326 |   5500 | D03     | System Analyst |
+--------+--------------+-----------+--------+---------+----------------+
3 rows in set (0.00 sec)

mysql> select emp_name,emp_no from Employee
    -> where salary between 12000 and 20000;
Empty set (0.00 sec)

mysql> select emp_name,emp_no from Employee where salary between 12000 and 50000;
+------------+--------+
| emp_name   | emp_no |
+------------+--------+
| Ravi Patel | E003   |
+------------+--------+
1 row in set (0.00 sec)

mysql> select * from Employee
    -> where Designation ='HR Manager' or 'software engineer';
+--------+------------+-----------+--------+---------+-------------+
| emp_no | emp_name   | Mobile_no | salary | dept_no | Designation |
+--------+------------+-----------+--------+---------+-------------+
| E003   | Ravi Patel | 987654323 |  45000 | D01     | HR Manager  |
+--------+------------+-----------+--------+---------+-------------+
1 row in set, 1 warning (0.00 sec)

mysql> select * from Employee where Designation ='HR Manager' or 'Software Engineer';
+--------+------------+-----------+--------+---------+-------------+
| emp_no | emp_name   | Mobile_no | salary | dept_no | Designation |
+--------+------------+-----------+--------+---------+-------------+
| E003   | Ravi Patel | 987654323 |  45000 | D01     | HR Manager  |
+--------+------------+-----------+--------+---------+-------------+
1 row in set, 1 warning (0.00 sec)

mysql> select * from Employee where Designation ='HR Manager' or 'Software Engineer';
+--------+------------+-----------+--------+---------+-------------+
| emp_no | emp_name   | Mobile_no | salary | dept_no | Designation |
+--------+------------+-----------+--------+---------+-------------+
| E003   | Ravi Patel | 987654323 |  45000 | D01     | HR Manager  |
+--------+------------+-----------+--------+---------+-------------+
1 row in set, 1 warning (0.00 sec)

mysql> select * from Employee where Designation ='HR Manager' or 'System Analyst';
+--------+------------+-----------+--------+---------+-------------+
| emp_no | emp_name   | Mobile_no | salary | dept_no | Designation |
+--------+------------+-----------+--------+---------+-------------+
| E003   | Ravi Patel | 987654323 |  45000 | D01     | HR Manager  |
+--------+------------+-----------+--------+---------+-------------+
1 row in set, 1 warning (0.00 sec)

mysql> select * from Employee where Designation ='HR Manager' OR 'System Analyst';
+--------+------------+-----------+--------+---------+-------------+
| emp_no | emp_name   | Mobile_no | salary | dept_no | Designation |
+--------+------------+-----------+--------+---------+-------------+
| E003   | Ravi Patel | 987654323 |  45000 | D01     | HR Manager  |
+--------+------------+-----------+--------+---------+-------------+
1 row in set, 1 warning (0.00 sec)


mysql> select * from Employee where Designation ='HR Manager' OR Designation='System Analyst';
+--------+------------+-----------+--------+---------+----------------+
| emp_no | emp_name   | Mobile_no | salary | dept_no | Designation    |
+--------+------------+-----------+--------+---------+----------------+
| E003   | Ravi Patel | 987654323 |  45000 | D01     | HR Manager     |
| E006   | Sneha Iyer | 987654326 |   5500 | D03     | System Analyst |
+--------+------------+-----------+--------+---------+----------------+
2 rows in set (0.00 sec)

mysql> select dept_no ,count(*) as total_employees
    -> from Employee group by dept_no;
+---------+-----------------+
| dept_no | total_employees |
+---------+-----------------+
| D01     |               4 |
| D02     |               2 |
| D03     |               3 |
+---------+-----------------+
3 rows in set (0.00 sec)

mysql> select dept_no, AVG(salary) AS average_salary 
    -> from Employee group by dept_no;
+---------+----------------+
| dept_no | average_salary |
+---------+----------------+
| D01     |     14900.0000 |
| D02     |      5400.0000 |
| D03     |      5466.6667 |
+---------+----------------+
3 rows in set (0.01 sec)

mysql> select dept_no, SUM(salary) AS total_salary  from Employee group by dept_no;
+---------+--------------+
| dept_no | total_salary |
+---------+--------------+
| D01     |        59600 |
| D02     |        10800 |
| D03     |        16400 |
+---------+--------------+
3 rows in set (0.00 sec)

mysql> select  dept_no, MAX(salary) AS highest_salary, MIN(salary) AS lowest_salary from Employee group by dept_no;
+---------+----------------+---------------+
| dept_no | highest_salary | lowest_salary |
+---------+----------------+---------------+
| D01     |          45000 |          4300 |
| D02     |           6000 |          4800 |
| D03     |           6200 |          4700 |
+---------+----------------+---------------+
3 rows in set (0.00 sec)

mysql> select dept_no ,AVG(salary) from Employee where dept_no != 'D01' group by dept_no;
+---------+-------------+
| dept_no | AVG(salary) |
+---------+-------------+
| D02     |   5400.0000 |
| D03     |   5466.6667 |
+---------+-------------+
2 rows in set (0.00 sec)

mysql> select dept_no ,AVG(salary) AS avg_salary from Employee where dept_no != 'D03' group by dept_no HAVING AVG(salary)>20000 order by avg_salary ASC;
Empty set (0.00 sec)

mysql> select dept_no ,AVG(salary) AS avg_salary from Employee where dept_no != 'D03' group by dept_no HAVING AVG(salary)>2000 order by avg_salary ASC;
+---------+------------+
| dept_no | avg_salary |
+---------+------------+
| D02     |  5400.0000 |
| D01     | 14900.0000 |
+---------+------------+
2 rows in set (0.00 sec)


