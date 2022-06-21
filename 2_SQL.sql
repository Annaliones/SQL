/*Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.*/

create table employees(
id serial primary key,
employee_name Varchar(50) not null
);

INSERT INTO employees(employee_name)
values ('Lavrov'),
       ('Amiram'),
       ('Igor'),
       ('Arthur'),
       ('Olga'),
       ('Anna'),
       ('Sergey'),
       ('Anatoliy'),
       ('Polina'),
       ('Irina'),
       ('Svetlana'),
       ('Ivan'),
       ('Roman'),
       ('Anastasia'),
       ('Gleb'),
       ('Dmitry'),
       ('Vladimir'),
       ('Taras'),
       ('Karina'),
       ('Nikolay'),
       ('Maxim'),
       ('Lavrov_1'),
       ('Amiram_1'),
       ('Igor_1'),
       ('Arthur_1'),
       ('Olga_1'),
       ('Anna_1'),
       ('Sergey_1'),
       ('Anatoliy_1'),
       ('Polina_1'),
       ('Irina_1'),
       ('Svetlana_1'),
       ('Ivan_1'),
       ('Roman_1'),
       ('Anastasia_1'),
       ('Gleb_1'),
       ('Dmitry_1'),
       ('Vladimir_1'),
       ('Taras_1'),
       ('Karina_1'),
       ('Nikolay_1'),
       ('Maxim_1'),
       ('Lavrov_2'),
       ('Amiram_2'),
       ('Igor_2'),
       ('Arthur_2'),
       ('Olga_2'),
       ('Anna_2'),
       ('Sergey_2'),
       ('Anatoliy_2'),
       ('Polina_2'),
       ('Irina_2'),
       ('Svetlana_2'),
       ('Ivan_2'),
       ('Roman_2'),
       ('Anastasia_2'),
       ('Gleb_2'),
       ('Dmitry_2'),
       ('Vladimir_2'),
       ('Taras_2'),
       ('Karina_2'),
       ('Nikolay_2'),
       ('Maxim_2'),
       ('Lavrov_3'),
       ('Amiram_3'),
       ('Igor_3'),
       ('Arthur_3'),
       ('Olga_3'),
       ('Anna_3'),
       ('Sergey_3');
      
       
       
       
       

drop TABLE employees;


select * from employees;

/*Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
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
*/

create table salary(
id serial primary key,
monthly_salary int not null
);

INSERT INTO salary(monthly_salary)
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
       (2500)
      
delete from salary
where id >17;      
      

select * from salary;   


/*Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id
*/

drop TABLE employee_salary;

create table employee_salary(
id serial primary key, 
employee_id Int unique not null,
salary_id  Int not null
/*FOREIGN KEY (employee_id) REFERENCES employees(id),
FOREIGN KEY (salary_id) REFERENCES salary(id)*/
)

INSERT INTO employee_salary(employee_id, salary_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13),
       (14, 14),
       (15, 15),
       (16, 1),
       (17, 2),
       (18, 3),
       (19, 4),
       (20, 5),
       (21, 6),
       (22, 7),
       (23, 7),
       (24, 8),
       (25, 9),
       (26, 10),
       (27, 11),
       (28, 12),
       (29, 13),
       (30, 14),
       (81, 15),
       (71, 1),
       (72, 2),
       (73, 3),
       (74, 4),
       (75, 5),
       (76, 6),
       (77, 7),
       (78, 8),
       (79, 9);
     
       
drop TABLE employee_salary;


select * from employee_salary;

/*Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:
*/


drop TABLE roles;

create table roles(
id serial primary key, 
role_name int not null unique
);

ALTER TABLE roles
ALTER COLUMN role_name type varchar(30);

INSERT INTO roles(role_name)
VALUES('Junior Python developer'),
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

/*Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:
*/

create table roles_employee(
     id serial primary key,
     employee_id int not null unique, 
     role_id int not null,
     FOREIGN KEY (employee_id) REFERENCES employees(id),
     FOREIGN KEY (role_id) REFERENCES roles(id)
);

INSERT INTO roles_employee(employee_id, role_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 20),
       (7, 17),
       (8, 18),
       (9, 20),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13),
       (14, 14),
       (15, 15),
       (16, 1),
       (17, 2),
       (18, 3),
       (19, 4),
       (20, 5),
       (21, 6),
       (22, 16),
       (23, 17),
       (24, 18),
       (25, 19),
       (26, 20),
       (27, 11),
       (28, 12),
       (29, 13),
       (30, 14),
       (40, 15),
       (41, 1),
       (42, 2),
       (43, 20),
       (44, 20),
       (45, 15),
       (46, 16),
       (47, 17),
       (48, 18),
       (49, 19);
      
      
      
select * from roles_employee;


 