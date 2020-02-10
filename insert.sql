-- location table
insert into location values(122 ,'New York');
insert into location values(123 ,'Dallas');
insert into location values(124 ,'Chicago');
insert into location values(167 ,'Boston');

-- department table
insert into department values(10,'Accounting',122);
insert into department values(20 ,'Research',124);
insert into department values(30 ,'Sales',123);
insert into department values(40 ,'Operations',167)

-- job table
insert into job values(667,'Clerk');
insert into job values(668,'Staff');
insert into job values(669,'Analyst');
insert into job values(671,'Manager');
insert into job values(672,'President');
insert into job values(670,'Sales');

-- employee table
insert into employee values (7369,'Smith','John','Q',667,7902,'17-dec-84',800,null,20);
insert into employee values (7499,'Allen','Kevin','J',670,7698,'20-feb-85',1600,300,30);
insert into employee values (7505,'Doyle','Jean','K',671,7839,'04-apr-85',2850,null,30);
insert into employee values (7506,'Dennis','Lynn','S',671,7839,'15-may-85',2750,null,30);
insert into employee values (7507,'Baker','Leslie','D',671,7839,'10-jun-85',2200,null,40);
insert into employee values (7521,'Wark','Cynthia','D',670,7698,'22-feb-85',1250,500,30);
