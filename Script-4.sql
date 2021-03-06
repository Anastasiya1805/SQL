--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary, salary_id
from employee_salary
join salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id;

 --2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary, salary_id
from employee_salary
join salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
where monthly_salary < '2000';

 --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select salary_id, monthly_salary, employee_name
from employee_salary
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employee_name is null
order by monthly_salary;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select salary_id, monthly_salary, employee_name
from employee_salary
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employee_name is null and monthly_salary < '2000'
order by monthly_salary;

 --5. Найти всех работников кому не начислена ЗП.
 
 select employee_name, salary_id, monthly_salary
from employee_salary
join salary on employee_salary.salary_id = salary.id
right join employees on employee_salary.employee_id = employees.id
where salary IS NULL;


 --6. Вывести всех работников с названиями их должности.
select role_id, employee_name, role_name
from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id;

 --7. Вывести имена и должность только Java разработчиков.
select role_id, employee_name, role_name
from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%Java%developer%';

--8. Вывести имена и должность только Python разработчиков.
select role_id, employee_name, role_name
from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%Python%developer%';

--9. Вывести имена и должность всех QA инженеров.
select role_id, employee_name, role_name
from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.
select role_id, employee_name, role_name
from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%Manual%QA%';

--11. Вывести имена и должность автоматизаторов QA
select role_id, employee_name, role_name
from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%Avtomation%QA%';

 --12. Вывести имена и зарплаты Junior специалистов
select employee_name, role_name, monthly_salary
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

 --13. Вывести имена и зарплаты Middle специалистов
select employee_name, role_name, monthly_salary
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%'
order by monthly_salary;

 --14. Вывести имена и зарплаты Senior специалистов
select employee_name, role_name, monthly_salary
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков
select employee_name, role_name, monthly_salary
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Java%developer%';

 --16. Вывести зарплаты Python разработчиков
select employee_name, role_name, monthly_salary
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Python%developer%';

 --17. Вывести имена и зарплаты Junior Python разработчиков
select employee_name, role_name, monthly_salary
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%Python%developer%';

 --18. Вывести имена и зарплаты Middle JS разработчиков
select employee_name, role_name, monthly_salary
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%JavaScript%%developer%';

 --19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name, role_name, monthly_salary
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior%Java%developer%';

 --20. Вывести зарплаты Junior QA инженеров
select employee_name, role_name, monthly_salary
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%QA%';

--21. Вывести среднюю зарплату всех Junior специалистов
select AVG(monthly_salary) as avg_sal
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%QA%';

 --22. Вывести сумму зарплат JS разработчиков
select SUM(monthly_salary) as sum_sal
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaScript%developer%';

 --23. Вывести минимальную ЗП QA инженеров
select MIN(monthly_salary) as min_sal
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA%';

 --24. Вывести максимальную ЗП QA инженеров
select MAX(monthly_salary) as max_sal
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Q%eng%';

 --25. Вывести количество QA инженеров
select COUNT(role_name) as count_role
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA%';

 --26. Вывести количество Middle специалистов.
select COUNT(role_name) as count_role
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Middle%';

--27. Вывести количество разработчиков
select COUNT(role_name) as count_role
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%';

 --28. Вывести фонд (сумму) зарплаты разработчиков.
select sum (monthly_salary) as sum_salary
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%';

 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, role_name, monthly_salary
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
order by monthly_salary;

 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, role_name, monthly_salary
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, monthly_salary
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id 
where monthly_salary < 2300
order by monthly_salary;

 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary
from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id = salary.id
where monthly_salary in ('1100', '1500', '2000')
order by monthly_salary;

