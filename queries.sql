-- simple queries
select * from employee;
select * from department;
select * from job;
select * from locations;
select first_name, last_name, salary, comm from employee;
select employee_id, last_name, department_id from employee;
ALTER TABLE employee RENAME COLUMN employee_id TO id_of_the_employee;
select first_name, last_name, salary from employee;
select * from employee where first_name='Smith' ;
select * from employee where last_name='Smith' ;
select * from employee where department_id=20 ;
select * from employee where salary between 1000 and 4500 ;
select * from employee where department_id =10 or department_id = 20 ;
select * from employee where department_id =30 or department_id = 20 ;
select * from employee where last_name like 'S%' ;
select * from employee where last_name like 'S%h' ;
select * from employee where last_name like 'A%n';
select * from employee where last_name like 'W___' ;
select * from employee where department_id =20 and salary>500;
select * from employee where comm is null ;

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
