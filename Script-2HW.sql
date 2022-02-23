--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
id serial primary key,
employee_name Varchar(50) not null
);

select *
from employees 

--Наполнить таблицу employee 70 строками.

insert into employees(employee_name)
values ('Мила Руднева'),
('София Калинина'),
('Татьяна Зайко'),
('Артём Логинов'),
('Даниил Шевцов'),
('Майя Николаева'),
('Сергей Попов'),
('Вероника Громова'),
('Александр Сергеев'),
('Ирина Шилова'),
('Юлия Лукина'),
('Эмиль Королев'),
('Александр Борисов'),
('Анна Сергеева'),
('Максим Зайцев'),
('Артём Артамонов'),
('Марк Лебедев'),
('Александр Еремеев'),
('Руслан Блинов'),
('Даниил Киселев'),
('Анастасия Тарасова'),
('Тимофей Кочетков'),
('Елизавета Измайлова'),
('Полина Максимова'),
('Максим Иванов'),
('Мия Попова'),
('Арсений Воронин'),
('Даниил Ушаков'),
('Зоя Маркова'),
('Варвара Абрамова'),
('Лев Васильев'),
('Николай Исаев'),
('Диана Яковлева'),
('Роман Дубинин'),
('Камилла Суслова'),
('Виктор Тихомиров'),
('Мария Щеглова'),
('Александра Мартынова'),
('Ева Алексеева'),
('Алиса Тимофеева'),
('Антон Голиков'),
('Фёдор Мухин'),
('Михаил Тарасов'),
('Олег Иванов'),
('Виктория Егорова'),
('Артемий Гришин'),
('Мирослав Герасимов'),
('Иван Максимов'),
('Кира Лукьянова'),
('Алина Филатова'),
('Ангелина Константинова'),
('Роман Никитин'),
('Вероника Петрова'),
('Дарья Яковлева'),
('Дарья Орлова'),
('Вера Ефимова'),
('Маргарита Иванова'),
('Максим Цветков'),
('Стефания Волкова'),
('Ольга Родионова'),
('Илья Воронин'),
('Григорий Седов'),
('Артём Грачев'),
('Алёна Давыдова'),
('Анастасия Сидорова'),
('Фёдор Сорокин'),
('Лев Попов'),
('Никита Абрамов'),
('Павел Петухов'),
('Глеб Исаев');

select *
from employees;

--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary(
id serial primary key,
monthly_salary int not null
);

--Наполнить таблицу salary 15 строками:

insert into salary(monthly_salary)
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

select *
from salary;

--Создать таблицу employee_salary
-- id. Serial  primary key,
--employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

select *
from employee_salary;

--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
values (3, 10),
(7, 1),
(5, 2),
(8, 2),
(10, 12),
(11, 12),
(13, 15),
(16, 14),
(18, 3),
(20, 6),
(23, 4),
(26, 2),
(28, 7),
(32, 5),
(35, 7),
(37, 12),
(40, 11),
(44, 14),
(47, 3),
(50, 6),
(52, 10),
(54, 1),
(58, 2),
(60, 3),
(62, 8),
(61, 4),
(63, 15),
(64, 14),
(66, 3),
(68, 6),
(74, 10),
(76, 1),
(80, 2),
(84, 2),
(86, 12),
(88, 12),
(91, 15),
(93, 14),
(96, 3),
(97, 6);

select *
from employee_salary;

--Создать таблицу roles
--id. Serial  primary key,
-- role_name. int, not null, unique

create table roles(
id serial primary key,
role_name int not null unique
);

--Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

--Наполнить таблицу roles 20 строками:

insert into roles(role_name)
values ('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Junior Avtomation QA engineer'),
	('Middle Avtomation QA engineer'),
	('Senior_avto_senior'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager');

--Создать таблицу roles_employee

create table roles_employee(
 id serial  primary key,
 employee_id Int not null unique,
 role_id Int not null 
);

--Наполнить таблицу roles_employee 40 строками:

insert into roles_employee(employee_id, role_id)
values (70, 1),
(67, 2),
(65, 3),
(63, 4),
(61, 5),
(59, 6),
(57, 7),
(55, 8),
(53, 9),
(50, 10),
(48, 11),
(46, 12),
(44, 13),
(42, 14),
(40, 15),
(38, 16),
(36, 17),
(34, 18),
(32, 19),
(30, 20),
(28, 1),
(26, 2),
(24, 3),
(22, 4),
(20, 5),
(18, 6),
(16, 7),
(14, 8),
(13, 9),
(12, 10),
(10, 11),
(9, 12),
(8, 13),
(7, 14),
(6, 15),
(5, 16),
(4, 17),
(3, 18),
(2, 19),
(1, 20);

 select *
 from roles_employee
