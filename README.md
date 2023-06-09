<div>
  <img src="https://github.com/devicons/devicon/blob/master/icons/postgresql/postgresql-original-wordmark.svg" title="postgresql" alt="postgresql" width="40"
</div>
  
### SQL HW_1
  ___
 
 ```
  CREATE TABLE public.students (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	"password" varchar(50) NOT NULL,
	created_on timestamp NOT NULL,
	CONSTRAINT students_email_key UNIQUE (email),
	CONSTRAINT students_pkey PRIMARY KEY (id)
);
  ```
  ___
  
 1. Вывести все поля и все строки.
```
  select * from students;
```
2. Вывести всех студентов в таблице
```
  select name from students;
```
3. Вывести только Id пользователей
```
  select id from students;
```
4. Вывести только имя пользователей
```
  select name from students;
```
5. Вывести только email пользователей
```
  select email from students;
```
6. Вывести имя и email пользователей
```
  select name, email from students;
```
7. Вывести id, имя, email и дату создания пользователей
```
  select id, name, email, created_on  from students;
```
8.Вывести пользователей где password 12333
```
  select * from students
  where password = '12333'
```
9.Вывести пользователей которые были созданы 2021-03-26 00:00:00
```
  select * from students
  where created_on  = '2021-03-26 00:00:00'
```
10.Вывести пользователей где в имени есть слово Анна
```
  select * from students
  where name like '%Anna%'
```
11. Вывести пользователей где в имени в конце есть 8
```
  select * from students
  where name like '%8'
```
12.Вывести пользователей где в имени в есть буква а
```
  select * from students
  where name like '%a%'
```
13.Вывести пользователей которые были созданы 2021-07-12 00:00:00
```
  select * from students
  where created_on = '2021-07-12 00:00:00'
```
14.Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
```
  select * from students
  where created_on = '2021-07-12 00:00:00' and password = '1m313'
```
15.Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
```
  select * from students
  where created_on = '2021-07-12 00:00:00' and name like '%Andrey%'
```
16.Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
```
  select * from students
  where created_on = '2021-07-12 00:00:00' and name like '%8%'
```
17. Вывести пользователя у которых id равен 110
```
  select * from students
  where id = '110'
```
18. Вывести пользователя у которых id равен 153
```
  select * from students
  where id = '153'
```
19. Вывести пользователя у которых id больше 140
```
  select * from students
  where id > '140'
```
20. Вывести пользователя у которых id меньше 130
```
  select * from students
  where id < '130'
```
21. Вывести пользователя у которых id меньше 127 или больше 188
```
  select * from students
  where id < '127' or id > '188'
```
22. Вывести пользователя у которых id меньше либо равно 137
```
  select * from students
  where id <= '137'
```
23. Вывести пользователя у которых id больше либо равно 137
```
  select * from students
  where id >= '137'
```
24. Вывести пользователя у которых id больше 180 но меньше 190
```
  select * from students
  where id > '180' and id < '190'
```
25. Вывести пользователя у которых id между 180 и 190
```
  select * from students
  where id between '180' and '190'
```
26. Вывести пользователей где password равен 12333, 1m313, 123313
```
  select * from students
  where password in ('12333', '1m313', '123313')
```
27.Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
```
  select * from students
  where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00')
```
28. Вывести минимальный id
```
  select min(id) as minimum_id from students;
```
29. Вывести максимальный id.
```
  select max(id) as maximum_id from students;
```
30. Вывести количество пользователей
```
  select count (id) from students;
```
31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
```
  select id, name, created_on from students
  order by created_on asc
```
32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
```
  select id, name, created_on from students
  order by created_on desc
```
___
### SQL HW_2
___
#### Таблица employees

1. Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
```
	create table employees(
	id serial primary key,
	employee_name Varchar(50) not null
);
```			       
2. Наполнить таблицу employee 70 строками.
```
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
```
			       
#### Таблица salary

3. Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
```
create table salary(
id serial primary key,
monthly_salary Int not null
);
```			       
4. Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500
 
```
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
```

#### Таблица employee_salary

5. Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
```			       
create table employee_salary (
id serial  primary key,
employee_id Int not null unique,
salary_id Int not null
);
```			       
6. Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id
			       
|id|employee_id|salary_id|
|:---|:---|:---|	
|1|3|7|
|2|1|4|
|3|5|9|
|4|40|13|
|5|23|4|
|6|11|2|
|7|52|10|
|8|15|13|
|9|26|4|
|10|16|1|
|11|33|7|
|...|...|...|	
```
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
```
#### Таблица roles

7. Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
```
create table roles(
id serial primary key,
role_name int not null unique
);
```
8. Поменять тип столба role_name с int на varchar(30)
```
alter table roles alter column role_name type varchar(30);
```
9. Наполнить таблицу roles 20 строками:
			       
|id|role_name
|:---|:---|	
|1|Junior Python developer|
|2|Middle Python developer|
|3|Senior Python developer|
|4|Junior Java developer|
|5|Middle Java developer|
|6|Senior Java developer|
|7|Junior JavaScript developer|
|8|Middle JavaScript developer|
|9|Senior JavaScript developer|
|10|Junior Manual QA engineer|
|11|Middle Manual QA engineer|
|12|Senior Manual QA engineer|
|13|Project Manager|
|14|Designer|
|15|HR|
|16|CEO|
|17|Sales manager|
|18|Junior Automation QA engineer|
|19|Middle Automation QA engineer
|20|Senior Automation QA engineer|
```
insert into roles (role_name)
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
```
#### Таблица roles_employee

10. Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
```
create table roles_employee(
id serial primary key,
emploee_id int not null unique,
role_id int not null,
foreign key (emploee_id)
references employees(id),
foreign key (role_id)
references roles_HW(id)
);
```
11. Наполнить таблицу roles_employee 40 строками:
			  
|id|employee_id|role_id|
|:---|:---|:---|	
|1|7|2|
|2|20|4|
|3|3|9|
|4|5|13|
|5|23|4|
|6|11|2|
|7|10|9|
|8|22|13|
|9|21|3|
|10|34|4|
|11|6|7|
|...|...|...|
```
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
```

___
### SQL HW_3
___			       
			       
1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами. 
```
select employees.employee_name, salary.monthly_salary
from employee_salary 
join salary on employee_salary.salary_id=salary.id
join employees on employee_salary.employee_id=employees.id;
```
2. Вывести всех работников у которых ЗП меньше 2000.
```
select employees.employee_name, salary.monthly_salary
from employee_salary 
join salary on employee_salary.salary_id=salary.id
join employees on employee_salary.employee_id=employees.id
where monthly_salary < 2000;
```
3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

Добавляем позицию по з/п без сотрудника
```
insert into salary (monthly_salary)
values (800),
(900);

Добавляем id зарплатных позиций в таблицу employee_salary

insert into employee_salary (salary_id)		  
values (17),
(18); 
```
```
select  salary.monthly_salary, employees.employee_name
from employee_salary
left join salary on employee_salary.salary_id = salary.id
left join employees on employee_salary.employee_id = employees.id
where employees.employee_name is null;
```	

4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
```
select salary.monthly_salary, employees.employee_name
from employee_salary
left join salary on employee_salary.salary_id = salary.id
left join employees on employee_salary.employee_id = employees.id
where salary.monthly_salary < 2000 and employees.employee_name is null;
```
```
Добавляем id зарплатных позиций в таблицу employee_salary
insert into employee_salary (employee_id)		  
values (64),
(66);
```		  
5. Найти всех работников кому не начислена ЗП.
```
select salary.monthly_salary, employees.employee_name
from employee_salary
left join salary on employee_salary.salary_id = salary.id
left join employees on employee_salary.employee_id = employees.id
where monthly_salary is null;
```
6. Вывести всех работников с названиями их должности
```
select employees.employee_name, roles.role_name
from roles_employee
join employees on employee_id = employees.id
join roles on role_id = roles.id;
```
7. Вывести имена и должность только Java разработчиков.
```
select employees.employee_name, roles.role_name
from roles_employee
join employees on employee_id = employees.id
join roles on role_id = roles.id
where roles.role_name like '%Java %';
```
8. Вывести имена и должность только Python разработчиков.
```
select employees.employee_name, roles.role_name
from roles_employee
join employees on employee_id = employees.id
join roles on role_id = roles.id
where roles.role_name like '%Python%';
```
9. Вывести имена и должность всех QA инженеров. 
```
select employees.employee_name, roles.role_name
from roles_employee
join employees on employee_id = employees.id
join roles on role_id = roles.id
where roles.role_name like '%QA%';
```
10. Вывести имена и должность ручных QA инженеров.
```
select employees.employee_name, roles.role_name
from roles_employee
join employees on employee_id = employees.id
join roles on role_id = roles.id
where roles.role_name like '%Manual QA%';
```
11. Вывести имена и должность автоматизаторов QA
```
select employees.employee_name, roles.role_name
from roles_employee
join employees on employee_id = employees.id
join roles on role_id = roles.id
where roles.role_name like '%Automation QA%';
```
12. Вывести имена и зарплаты Junior специалистов
```
select employees.employee_name, monthly_salary
from roles_employee
join employees on employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Junior%';
```
13. Вывести имена и зарплаты Middle специалистов
```
select employees.employee_name, monthly_salary 
from roles_employee
join employees on employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Middle%';
```
14. Вывести имена и зарплаты Senior специалистов
```
select employees.employee_name, monthly_salary 
from roles_employee
join employees on employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Senior%';
```
15. Вывести зарплаты Java разработчиков
```
select employees.employee_name, monthly_salary 
from roles_employee
join employees on employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Java %';
```
16. Вывести зарплаты Python разработчиков
```
select employees.employee_name, monthly_salary 
from roles_employee
join employees on employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Python %';
```
17. Вывести имена и зарплаты Junior Python разработчиков
```
select employees.employee_name, salary.monthly_salary
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Junior Python%'; 
```
18. Вывести имена и зарплаты Middle JS разработчиков
```
--Добавляем для прохождения следующего кейса
insert into employee_salary (employee_id, salary_id)
values (37,5);
```
```
select employees.employee_name, salary.monthly_salary
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Middle JavaScript%'; 
```
19. Вывести имена и зарплаты Senior Java разработчиков
```
Добавляем для прохождения следующего кейса
insert into employee_salary (employee_id, salary_id)
values (2,10);
```
```
select employees.employee_name, salary.monthly_salary
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Senior Java %'; 
```
20. Вывести зарплаты Junior QA инженеров
```
Добавляем для прохождения следующего кейса
insert into employee_salary (employee_id, salary_id)
values (31,13);
```
```
select salary.monthly_salary
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like 'Junior%QA %';
```
21. Вывести среднюю зарплату всех Junior специалистов
```
select avg(salary.monthly_salary) as avg_monthly_salary_junior
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like 'Junior%';
```
22. Вывести сумму зарплат JS разработчиков
```
select sum(salary.monthly_salary) as sum_monthly_salary_js
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%JavaScript%';
```
23. Вывести минимальную ЗП QA инженеров
```
select MIN(salary.monthly_salary) as min_monthly_salary_qa
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%QA%';
```
24. Вывести максимальную ЗП QA инженеров
```
select max(salary.monthly_salary) as max_monthly_salary_qa
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%QA%';
```
25. Вывести количество QA инженеров
```
select count(roles.role_name) as count_qa
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
where roles.role_name like '%QA%';
```
26. Вывести количество Middle специалистов
```
select count(roles.role_name) as count_middle
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
where roles.role_name like 'Middle%';
```
27. Вывести количество разработчиков
```
select count(roles.role_name) as count_developer
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
where roles.role_name like '%developer';
```
28. Вывести фонд (сумму) зарплаты разработчиков.
```
select sum(salary.monthly_salary) as sum_monthly_salary_dev
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%developer';
```
29. Вывести имена, должности и ЗП всех специалистов по возрастанию
```
select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
order by salary.monthly_salary asc; 
```
30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
```
select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary asc;
```
31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
```
select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2300
order by salary.monthly_salary asc;
```
32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
```
select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary in (1100, 1500, 2000)
order by salary.monthly_salary asc;
```
