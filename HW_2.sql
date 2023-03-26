--1. Таблица employees
create table employees(
	id serial primary key,
	employee_name Varchar(50) not null
);

--2. Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
values ('Reggie Batey'), 
('Clara Poore'), 
('Tammy Galindo'), 
('Rickey Jones'), 
('Jill Anspach'), 
('Lacy Racicot'), 
('David Macias'), 
('Jessica Manns'), 
('Amber Holcomb'), 
('Betty Wells'), 
('Miguel Fletcher'), 
('Joseph Hodges'), 
('Ida Bohannon'), 
('Cindy Merrifield'), 
('Mary Dowell'), 
('Marie Thomas'), 
('Donald Fierro'), 
('Anna Wick'), 
('Robert Harian'), 
('Michael Mark'), 
('Lucius Patterson'), 
('Lorna Rose'), 
('Karen Santiago'), 
('Peggy Beachler'), 
('Chester Baird'), 
('Ronda Colley'), 
('Robert Chapman'), 
('Sandra Hibbard'), 
('Steven Pagano'), 
('Ramona Russell'), 
('Ryan Morgan'), 
('Shannon Daugherty'), 
('Charlene Little'), 
('Steve Lewandowski'), 
('Donnie Shoemaker'), 
('Veronica Treto'), 
('Jonathon Belanger'), 
('William Hughes'), 
('Courtney Alston'), 
('Isaac Walters'), 
('Leon Ashcraft'), 
('Daniel Patterson'), 
('Randall Phillips'), 
('James Williams'), 
('Nancy Searles'), 
('Edward Hilliard'), 
('Joel Vandevelde'), 
('Nancy Bravo'), 
('Jesse Clark'), 
('Gregory Magelssen'), 
('Ella Cortez'), 
('Michael Diaz'), 
('Robert Walsh'), 
('Valorie Seibert'), 
('Yoshiko Miller'), 
('Timothy Johnson'), 
('Lita Webb'), 
('Lindsay Barrera'), 
('Jacqulyn Matthews'), 
('Lee Rehart'), 
('Fred Spencer'), 
('Melinda Webster'), 
('Shawn Pretti'), 
('Betty Schaefer'), 
('Barbara Teets'), 
('Patricia Tomas'), 
('Mattie Kelley'), 
('Mary Yates'), 
('Andrea Croes'), 
('Amanda Riley');

--3. Создать таблицу salary
create table salary(
	id serial primary key,
	monthly_salary Int not null
);

--4. Наполнить таблицу salary 15 строками:
insert into salary (monthly_salary)
values (1000),
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
		 (2400),
		 (2500);
		
-- 5. Создать таблицу employee_salary	
	create table employee_salary (
	id serial  primary key,
	employee_id Int not null unique,
	salary_id Int not null
	);


--	6. Наполнить таблицу employee_salary 40 строками:
insert into employee_salary(employee_id, salary_id)
values (3, 7),
		(1, 4),
		(5, 6),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(2, 8),
		(4, 2),
		(6, 6),
		(7, 1),
		(8, 3),
		(9, 5),
		(10, 15),
		(12, 15),
		(13, 13),
		(14, 10),
		(17, 7),
		(18, 11),
		(19, 2),
		(20, 14),
		(21, 5),
		(22, 9),
		(24, 3),
		(25, 7),
		(28, 1),
		(81, 5),
		(91, 7),
		(101, 15),
		(111, 9),
		(120, 1),
		(125, 6),
		(178, 2),
		(93, 8),
		(88, 2),
		(115, 1);
	
	
	

--7. Создать таблицу roles
	create table roles(
	id serial primary key,
	role_name int not null unique
	);

--8. Поменять тип столба , с int на varchar(30)
alter table roles alter column role_name type varchar(30);

--9. Наполнить таблицу roles 20 строками:
insert into roles (role_name)
values		('Junior Python developer'),
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
		
--10. Создать таблицу roles_employee 
create table roles_employee(
		id serial primary key,
		emploee_id int not null unique,
		role_id int not null,
		foreign key (emploee_id)
		references employees(id),
		foreign key (role_id)
		references roles_HW(id)
		);
	
	--11. Наполнить таблицу roles_employee 40 строками:
	insert into roles_employee(emploee_id, role_id)
	values (1, 8),
			(3, 7),
			(5, 9),
			(7, 20),
			(9, 13),
			(11, 16),
			(13, 15),
			(15, 15),
			(17, 19),
			(19, 17),
			(2, 11),
			(4, 9),
			(6, 8),
			(8, 16),
			(10, 10),
			(12, 17),
			(14, 1),
			(16, 3),
			(18, 11),
			(20, 20),
			(21, 8),
			(25, 7),
			(28, 9),
			(36, 20),
			(35, 13),
			(22, 16),
			(33, 15),
			(65, 15),
			(47, 19),
			(29, 17),
			(42, 11),
			(44, 9),
			(56, 8),
			(68, 16),
			(50, 10),
			(62, 17),
			(24, 1),
			(37, 3),
			(38, 11),
			(69, 20);

	
	
	
	


		

