/*1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.*/

select employees.employee_name, salary.monthly_salary 
	from employees 
    join employee_salary on employees.id = employee_salary.employee_id
	join salary on salary.id = employee_salary.salary_id;

 /*2. Вывести всех работников у которых ЗП меньше 2000.*/

select employees.employee_name, salary.monthly_salary 
	from employees 
    join employee_salary on employees.id = employee_salary.employee_id
	join salary on salary.id = employee_salary.salary_id
    where salary.monthly_salary < 2000;

 /*3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)*/
  

select  employees.employee_name, salary.monthly_salary  
    from employees
    right join employee_salary on employees.id = employee_salary.employee_id 
    join salary on salary.id = employee_salary.salary_id
    where employee_name is null;
   

   
/* 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)*/

select  employees.employee_name, salary.monthly_salary  
    from employees
    right join employee_salary on employees.id = employee_salary.employee_id 
    join salary on salary.id = employee_salary.salary_id
    where employee_name is null and salary.monthly_salary <2000;
   
   
 /*5. Найти всех работников кому не начислена ЗП.*/

select  employees.employee_name, employee_salary.employee_id  
    from employees
    left join employee_salary on employees.id = employee_salary.employee_id 
    where employee_id is null;  

 /*6. Вывести всех работников с названиями их должности.*/
   
select  employees.employee_name, roles.role_name  
    from employees
    join roles_employee on employees.id = roles_employee.employee_id
    join roles  on roles_employee.role_id = roles.id ; 
     


 /*7. Вывести имена и должность только Java разработчиков.*/
select  employees.employee_name, roles.role_name  
    from employees
    join roles_employee on employees.id = roles_employee.employee_id
    join roles  on roles_employee.role_id = roles.id 
    where role_name like '%Java%'; 

 /*8. Вывести имена и должность только Python разработчиков.*/
select  employees.employee_name, roles.role_name  
    from employees
    join roles_employee on employees.id = roles_employee.employee_id
    join roles  on roles_employee.role_id = roles.id 
    where role_name like '%Python%'; 

 /*9. Вывести имена и должность всех QA инженеров.*/
 select  employees.employee_name, roles.role_name  
    from employees
    join roles_employee on employees.id = roles_employee.employee_id
    join roles  on roles_employee.role_id = roles.id 
    where role_name like '%QA%'; 

 /*10. Вывести имена и должность ручных QA инженеров.*/
 select  employees.employee_name, roles.role_name  
    from employees
    join roles_employee on employees.id = roles_employee.employee_id
    join roles  on roles_employee.role_id = roles.id 
    where role_name like '%Manual QA%'; 

 /*11. Вывести имена и должность автоматизаторов QA*/
 select  employees.employee_name, roles.role_name  
    from employees
    join roles_employee on employees.id = roles_employee.employee_id
    join roles  on roles_employee.role_id = roles.id 
    where role_name like '%Automation QA%'; 

 /*12. Вывести имена и зарплаты Junior специалистов*/
select  employees.employee_name, roles.role_name, salary.monthly_salary  
    from employees
    join roles_employee on employees.id = roles_employee.employee_id
    join roles  on roles_employee.role_id = roles.id 
    join employee_salary on employees.id = employee_salary.employee_id 
    join salary on salary.id = employee_salary.salary_id
    where role_name like '%Junior%'; 

 /*13. Вывести имена и зарплаты Middle специалистов*/
select  employees.employee_name, roles.role_name, salary.monthly_salary  
    from employees
    join roles_employee on employees.id = roles_employee.employee_id
    join roles  on roles_employee.role_id = roles.id 
    join employee_salary on employees.id = employee_salary.employee_id 
    join salary on salary.id = employee_salary.salary_id
    where role_name like '%Middle%';    



 /*21. Вывести среднюю зарплату всех Junior специалистов*/
   select  AVG(salary.monthly_salary) as AVG_salary_Junior
    from roles_employee 
    join roles  on roles_employee.role_id = roles.id 
    join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
    join salary on salary.id = employee_salary.salary_id
    where role_name like '%Junior%'; 

 /*22. Вывести сумму зарплат JS разработчиков*/
 select  SUM(salary.monthly_salary) as SUM_salary_Junior
    from roles_employee 
    join roles  on roles_employee.role_id = roles.id 
    join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
    join salary on salary.id = employee_salary.salary_id
    where role_name like '%JavaScript%'; 



 /*25. Вывести количество QA инженеров*/
 select  count(roles.role_name) as count_QA_engineer
    from roles
    join roles_employee  on roles.id = roles_employee.role_id 
    where role_name like '%QA%';
 

 /*26. Вывести количество Middle специалистов.*/
 select  count(roles.role_name) as count_Middle
    from roles
    join roles_employee  on roles.id = roles_employee.role_id 
    where role_name like '%Middle%';

 /*27. Вывести количество разработчиков*/
  select  count(roles.role_name) as count_Middle
    from roles
    join roles_employee  on roles.id = roles_employee.role_id 
    where role_name like '%developer';

 /*28. Вывести фонд (сумму) зарплаты разработчиков.*/
select  SUM(salary.monthly_salary)
    from salary 
    join employee_salary on salary.id  = employee_salary.salary_id
    join roles_employee  on employee_salary.employee_id  = roles_employee.employee_id
    join roles on roles.id = roles_employee.role_id 
    where role_name like '%developer';

 /*29. Вывести имена, должности и ЗП всех специалистов по возрастанию*/
 select  employee_name, roles.role_name roles_name, monthly_salary
    from salary 
    join employee_salary on salary.id  = employee_salary.salary_id
    join roles_employee  on employee_salary.employee_id  = roles_employee.employee_id
    join roles on roles.id = roles_employee.role_id 
    join employees on employees.id = roles_employee.employee_id
    order by monthly_salary;
    

 /*30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300*/
   select  employee_name, roles.role_name roles_name, monthly_salary
    from salary 
    join employee_salary on salary.id  = employee_salary.salary_id
    join roles_employee  on employee_salary.employee_id  = roles_employee.employee_id
    join roles on roles.id = roles_employee.role_id 
    join employees on employees.id = roles_employee.employee_id
    where monthly_salary between 1700 and 2300
    order by monthly_salary;

 /*31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300*/
   select  employee_name, roles.role_name roles_name, monthly_salary
    from salary 
    join employee_salary on salary.id  = employee_salary.salary_id
    join roles_employee  on employee_salary.employee_id  = roles_employee.employee_id
    join roles on roles.id = roles_employee.role_id 
    join employees on employees.id = roles_employee.employee_id
    where monthly_salary < 2300
    order by monthly_salary;

 /*32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000*/
 select  employee_name, roles.role_name roles_name, monthly_salary
    from salary 
    join employee_salary on salary.id  = employee_salary.salary_id
    join roles_employee  on employee_salary.employee_id  = roles_employee.employee_id
    join roles on roles.id = roles_employee.role_id 
    join employees on employees.id = roles_employee.employee_id
    where monthly_salary in (1100, 1500,2000)
    order by monthly_salary;



