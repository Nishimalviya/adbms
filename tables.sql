create table location(
  location_id int not null primary key,
  regional_grp varchar(10)not null
);
create table department(
  department_id int not null primary key, 
  dept_name varchar(10)not null, 
  location_id int not null ,
  foreign key(location_id) references location (location_id)
);
create table job(
  job_id int not null primary key, 
  function varchar(10)
 ); 
 create table employee(
    employee_id int not null primary key,
    last_name varchar(10) not null,
    first_name varchar(10) not null,
    mid_name char(1) not null,
    job_id int not null,
    manager_id int not null,
    hire_date date,
    salary int not null,
    comm int,
    department_id int not null,
    foreign key(job_id) references job(job_id),
    foreign key(department_id) references department(department_id)
);
