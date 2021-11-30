create table employees (
id serial primary key, 
employee_name varchar(50) not null
)

select * from employees
 
insert into employees(employee_name)
values ('Eshal Mckinney'),
	('John Doe'),
	('Jorgie Navarro'),
	('Isha Choi'),
	('Zeshan Schmitt'),
	('Juan Macleod'),
	('Kian Sumner'),
	('Imaan Tran'),
	('Miah Meza'),
	('Zayne Whittaker'),
	('Amy Andrews'),
	('Rafi Church'),
	('Annabell Odling'),
	('Tahir Willis'),
	('Marissa Levy'),
	('Arianne Carr'),
	('Roxie Shaffer'),
	('Cynthia Sellers'),
	('Vincent Spooner'),
	('Keyaan Winter'),
	('Imaani Vaughn'),
	('Danielle Friedman'),
	('Reef Allman'),
	('Amara Sutton'),
	('Fredrick Glenn'),
	('Angelika Chambers'),
	('Cheyenne Butler'),
	('Agatha Paterson'),
	('Shakir Nelson'),
	('Homer Colley'),
	('Aston Deleon'),
	('Humza Monaghan'),
	('Erin Coffey'),
	('Rajveer Sanford'),
	('Taslima Gilmour'),
	('Klaudia Frederick'),
	('Flora Connolly'),
	('Milli Forbes'),
	('Samad Brock'),
	('Anisa Drake'),
	('Giselle Benjamin'),
	('Jia Huffman'),
	('Vishal Wells'),
	('Sorcha Villanueva'),
	('Lyndsey Wooten'),
	('Raphael Whitley'),
	('Madihah Cohen'),
	('Clementine Sierra'),
	('Misha Mcmanus'),
	('Emilie Dickson'),
	('Nikita Becker'),
	('Maison Richardson'),
	('Gemma Stokes'),
	('Kiyan Weiss'),
	('Bear Mcleod'),
	('Phillip Thompson'),
	('Maisie Talbot'),
	('Aryan Byers'),
	('Adnaan Mill'),
	('Denzel Greenwood'),
	('Tyreese Mcculloch'),
	('Arran Duffy'),
	('Lylah Herring'),
	('Jaydon Odonnell'),
	('Gilbert Knowles'),
	('Aleisha Stacey'),
	('Mila Church'),
	('Kyran Bean'),
	('Humairaa Lucero');

	select * from employees;

create table salary (
	id serial primary key,
	monthly_salary Int not null
)

select * from salary 


insert into salary(monthly_salary)
values	(1000),
	(1100),
	(1200),
	(1300),
	(1400),
	(1500),
	(1600),
	(1700),
	(1800),
	(1900),
	(2000),
	(2100),
	(2200),
	(2300),
	(2400);




create table employees_salary(
id serial primary key,
id_employees int not null unique,
id_salary int not null
)

select * from employees_salary;

insert into employees_salary(id_employees, id_salary)
values (1, 5),
(2,7),
(3,9),
(4,2),
(5,4),
(6,7),
(7,6),
(8,7),
(9,5),
(10,11),
(11,12),
(12,13),
(13,14),
(14,15),
(15,10),
(16,9),
(17,7),
(18,3),
(19,7),
(20,8),
(21,9),
(22,8),
(23,2),
(24,3),
(25,7),
(26,5),
(27,6),
(28,7),
(29,6),
(30,2),
(71,7),
(72,9),
(73,5),
(74,5),
(75,7),
(76,7),
(77,5),
(78,5),
(79,4),
(80,4);

create table roles (
id serial primary key,
role_name int not null unique
)

select * from roles

ALTER TABLE roles ALTER COLUMN role_name TYPE varchar(30);

insert into roles(role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

select * from roles;

create table roles_employee (
id serial primary key, 
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles(id)
)

select * from roles_employee;

insert into roles_employee(employee_id, role_id)
values (1, 5),
(2,7),
(3,9),
(4,2),
(5,4),
(6,7),
(7,6),
(8,7),
(9,5),
(10,11),
(11,12),
(12,13),
(13,14),
(14,15),
(15,10),
(16,9),
(17,7),
(18,3),
(19,7),
(20,8),
(21,9),
(22,8),
(23,2),
(24,3),
(25,7),
(26,5),
(27,6),
(28,7),
(29,6),
(30,2),
(31,7),
(32,9),
(33,5),
(34,5),
(35,7),
(36,7),
(37,5),
(38,5),
(39,4),
(40,4);

select * from roles_employee