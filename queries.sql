-- simple queries
select * from employee; --list all employee details
select * from department; --list all the department details
select * from job; --list all job details
select * from locations; --list all location details
select first_name, last_name, salary, comm from employee; --list name, salary, commission for all employees
select employee_id, last_name, department_id from employee; --list employee id, last name, commission for all employees
ALTER TABLE employee RENAME COLUMN employee_id TO id_of_the_employee; --rename employee id as id of the employee
ALTER TABLE employee RENAME COLUMN  last_name to name_of_employee; --rename last name to name of employee
select first_name, last_name, salary from employee; --list employee's annual salary with their names only

-- where condition
select * from employee where first_name='Smith' ; --list details about smith
select * from employee where name_of_employee='Smith' ; 
select * from employee where department_id=20 ; --list employees who are working in department 20 
select * from employee where salary between 1000 and 4500 ; --list employees who are earning salary between 1000-3000
select * from employee where department_id =10 or department_id = 20 ;--list employees who are working in department 10 or 20
select * from employee where department_id =30 or department_id = 20 ;
select * from employee where not department_id =30 and not department_id = 20 ;--list employees who are not working in department 30 or 20
select * from employee where name_of_employee like 'S%' ; --list the employees whose name start with s
select * from employee where name_of_employee like 'S%h' ; --list the employees whose name start with s and end with h
select * from employee where name_of_employee like 'A%n'; 
select * from employee where name_of_employee like 'S___' ; --list the employees whose name length is 4 and start with s
select * from employee where name_of_employee like 'W___' ;
select * from employee where department_id =20 and salary>500; --list the employees who are working in department 20 and draw the salary more than 1000 
select * from employee where comm is null ; --list the employees who are not receiving commission

-- order by clause
select id_of_the_employee, name_of_employee from employee order by id_of_the_employee ; --list the employee id who are working in different department wise in the rganisation
select id_of_the_employee, name_of_employee, salary from employee order by salary desc ; --list the employee id, name in descending order based on salary column
select * from employee order by name_of_employee,salary desc ; --list the employee id, name in descending order based on salary column and last name in ascending order
select * from employee order by name_of_employee,department_id desc ; -- list employee details according to their last name in ascending order and then on department id in desending order

-- group by and having clause 
SELECT department_id, COUNT(*) FROM employee GROUP BY department_id; -- number of employees working in each department
select min(salary), max(salary), avg(salary) from employee  group by department_id ; --list out the department wise maximum salary, minimum salary, average salary of the employees
select min(salary), max(salary), avg(salary) from employee  group by job_id ; --list out the job wise maximum salary, minimum salary, average salary of the employees
select count(extract(month from hire_date)) from employee group by extract(month from hire_date); --list number of employee joined in every month
select count(extract(month from hire_date)) from employee group by extract(month from hire_date) order by count(extract(month from hire_date));--list number of employee joined in every month in ascending order
select count(extract(year from hire_date)) from employee group by extract(year from hire_date) order by count(extract(year from hire_date));--list number of employee joined in every month and year in ascending order
SELECT department_id, COUNT(*) FROM employee GROUP BY department_id having count(*)>=4; --department having at least 4 employees
select count(extract(month from hire_date)) from employee where hire_date between '01-feb-85' and '28-feb-85' group by extract(month from hire_date); --no of employees joined in february
select count(extract(year from hire_date)) from employee where hire_date between '01-jan-85' and '31-dec-85' group by extract(year from hire_date); -- employees joined in year 1985 
select count(extract(month from hire_date)) from employee where hire_date between '01-jan-85' and '31-dec-85' group by extract(month from hire_date); -- no of employees joied every month in 1985
SELECT department_id, COUNT(*) FROM employee where hire_date between '01-feb-85' and '28-feb-85' GROUP BY department_id having count(*)>=2; -- department having gretaer than or equal to 2 employees joined in february
                     
                                                                                                                      
                                                                               


