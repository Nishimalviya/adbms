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
select * from employee where last_name='Smith' ; 
select * from employee where department_id=20 ; --list employees who are working in department 20 
select * from employee where salary between 1000 and 4500 ; --list employees who are earning salary between 1000-3000
select * from employee where department_id =10 or department_id = 20 ;--list employees who are working in department 10 or 20
select * from employee where department_id =30 or department_id = 20 ;
select * from employee where last_name like 'S%' ; --list the employees whose name start with s
select * from employee where last_name like 'S%h' ; --list the employees whose name start with s and end with h
select * from employee where last_name like 'A%n'; 
select * from employee where last_name like 'S___' ; --list the employees whose name length is 4 and start with s
select * from employee where last_name like 'W___' ;
select * from employee where department_id =20 and salary>500; --list the employees who are working in department 20 and draw the salary more than 1000 
select * from employee where comm is null ; --list the employees who are not receiving commission

-- order by clause
select id_of_the_employee, last_name from employee order by id_of_the_employee ;
select id_of_the_employee, last_name, salary from employee order by salary desc ;
select * from employee order by last_name,salary desc ;
select * from employee order by last_name,department_id desc ;

-- group by and having clause 
select department_id from employee group by department_id  ;
select min(salary), max(salary), avg(salary) from employee  group by department_id ;
select min(salary), max(salary), avg(salary) from employee  group by job_id ;
select count(id_of_the_employee) from employee group by hire_date ;
