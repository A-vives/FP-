/* Selecciona el numero de empleado que sean manager*/
SELECT
    *
FROM
    EMPLOYEES AS E
WHERE
    E.NUM IN (
        SELECT
            DISTINCT MANAGER
        FROM
            EMPLOYEES
    );

/* Selecciona todos los q*/
SELECT
    *
FROM
    EMPLOYEES AS E,
    DEPARTMENTS AS D
WHERE
    E.DEPT_NUM = D.NUM;

+

PARA HACER UNA UNION TIENEN QUE SER COMPATIBLES LAS TABLAS

JOIN

SELECT
    *
FROM
    EMPLOYEES AS E,
    DEPARTMENTS AS D,
    TOWNS AS T
    where E.DEPT_NUM=D.NUM,
    WHERE D.town_code = T.town_code;

where CAST TO_CHAR(start_date, 'yyyy')


SELECT DISTINCT salary from employees

select DISTINCT

SELECT DISTINCT dept_num, count(num) as n_employees
FROM departments D, employees E
GROUP by D.dept_num;

select * 
from employees as E, departments as D 
where E.dept_num = D.num
AND D.name = 'SALES';

select D.name, sum(E.salary) 
from employees as E, departments as D 
where E.dept_num = D.num
AND D.name = 'SALES'
group by D.name;

select D.name, sum(E.salary) 
from employees as E, departments as D 
where E.dept_num = D.num
group by D.name;


SELECT surname, name, occu_code as ocupation, salary from employees;
SELECT surname, name, (occu_code order by null)  as ocupation , salary from employees;

Select E.name, O.name as ocupation, E.salary from employees E, occupations O where E.occu_code = O.code order by ocupation, salary;

Select E.name, E.surname, O.name as ocupation, E.salary, E.commission + E.salary as b_salary from employees E, occupations O;
-- query2 --
Select E.name, E.surname, O.name as ocupation, E.salary,E.commission, E.salary + coalesce(E.commission) as b_salary from employees E, occupations O where E.occu_code = O.code order by ocupation, b_Salary;


select * 
from employees as E, departments as D 
where E.dept_num = D.num
AND D.name = 'SALES';

select D.name, sum(E.salary) 
from employees as E, departments as D 
where E.dept_num = D.num
AND D.name = 'SALES'
group by D.name;

select D.name, sum(E.salary) 
from employees as E, departments as D 
where E.dept_num = D.num
group by D.name;

select * 
from employees as E, departments as D 
where E.dept_num = D.num
AND D.name = 'SALES';

select D.name, sum(E.salary) 
from employees as E, departments as D 
where E.dept_num = D.num
AND D.name = 'SALES'
group by D.name;

select E.surname
from employees as E
where E.dept_num = 'SALE'
group by E.name;

select E.surname
FROM employees E, occupations O, departments D
where E.occu_code = O.code
and O.name='SALESMAN'
and E.dept_num=D.num
and D.name ='SALES'
order by E.surname;

select DISTINCT D.name
FROM employees E, 
occupations O, 
departments D
WHERE E.occu_code = O.code
AND E.dept_num = D.num;

select O.name
FROM employees E, 
occupations O, 
departments D
WHERE E.occu_code = O.code
AND E.dept_num = D.num
AND D.name = 'RESEARCH'
UNION ALL
select O.name
FROM employees E, 
occupations O, 
departments D
WHERE E.occu_code = O.code
AND E.dept_num = D.num
AND D.name = 'SALES';

select D.name, count(*) as number_of_employees 
FROM departments D, employees E
WHERE E.dept_num=D.num
GROUP BY D.name
ORDER BY D.name;

/* 7 */

SELECT dept_num, count(num) n_employees
from employees
GROUP BY dept_num
HAVING n_employees > 5;

SELECT E1.num,
E1.

select E1.dept_num,
E.num,
E.salary,
avg(E.salary=coalesce(E.comision,0))OVER (PARTITION BY dept_num)
from employees E,
departments D
where E.dept_num = D.num;
