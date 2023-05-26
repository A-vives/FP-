/*
----------ASST #1
*/
    I chosse Postgresql
/*
----------ASST #2
*/
BEGIN TRANSACTION;
DELETE FROM departments;
DELETE FROM employees;
ROLLBACK;
/*
----------ASST #3
*/

/*
This query compares the left side of the tables, as the ids are at the beginning.
So we can know in which department is x employee.
*/
SELECT
  E.name,
  E.surname,
  D.name
FROM
    employees E
LEFT OUTER JOIN
    departments D
ON
    E.department = D.id;

/*
In this other one using inner join we realize that the repeated ones are not put, that is, it only takes out if there is data in all the columns
*/
SELECT
  E.name,
  E.surname,
  E.start_date
FROM
    employees E
INNER JOIN
    departments D
ON
    E.department = D.id
    order by start_date asc;
/*
----------ASST #4
*/
SELECT EXTRACT(YEAR FROM end_date) allyear,
 COUNT(*) count
FROM employees
GROUP BY end_date
ORDER BY end_date ASC;
/*
----------ASST #5
*/
SELECT CONCAT_WS('. ', SUBSTR(name, 1, 1), surname) nombre_modificado
FROM employees
Order by Name ASC;
/*
----------ASST #6
*/
SELECT
  name,
  surname,
  start_date,
  end_date,
  EXTRACT(DAY FROM end_date-start_date) + 91 diff
FROM
  employees
WHERE
  end_date IS NOT NULL
  order by diff desc;