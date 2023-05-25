/*
QUERY #1
Concat the name and surname of the employees using the separator ' ' 
using the function CONCAT_WS
*/

SELECT
CONCAT_WS(' ',E.name, E.surname) fullname
from 
employees E;

/*
QUERY #2
*/

SELECT
    CAST(commission as DECIMAL (10, 2))
    from 
    employees;

/*
QUERY #3
*/

/* postgres */
SELECT 
E.surname,
POSITION('A' in  unaccent(surname)) 
FROM employees E;


/* mariadb */
select surname,
 POSITION('A' IN surname)
from employees;


/*
QUERY #4
*/

SELECT
surname,
LOCATE('A', surname, LOCATE('A', surname) + 1) AS second_a_position
FROM employees;

/*
QUERY #5
*/

SELECT /* SOLO POSTGRES*/
CONCAT_WS (' ', INITCAP(name), INITCAP(surname)) as fullname
from employees;


SELECT  /* POSTGRES Y Mariadb*/
CONCAT_WS(' ',CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2))), CONCAT(UPPER(LEFT(surname, 1)), LOWER(SUBSTRING(surname, 2))))  AS fullname 
FROM employees;


/*
QUERY #6
*/

select name,
 REPLACE(name, 'IO', 'IOTE'),
 surname,
 REPLACE(surname, 'IO', 'IOTE')
from employees;

/*
QUERY #7
*/

UPDATE employees
SET
    name = REPLACE(name, 'Antonio' ,'Tonio'),
    name = REPLACE(name, 'Antonia' ,'Tonia')
WHERE 
name IN ('Antonio', 'Antonia');

/*
QUERY #8
*/

SELECT CONCAT(SUBSTR(surname, 1, 2), '_', SUBSTR(surname, 3)) nombre_modificado
FROM employees;

/*
QUERY #9
*/

SELECT LEFT(surname, 1)  letra, 
ASCII(LEFT(surname, 1))  ASCII 
FROM employees;


/*
QUERY #10
*/

SELECT CONCAT(TRIM(name), TRIM(surname)) full_name 
FROM employees;

