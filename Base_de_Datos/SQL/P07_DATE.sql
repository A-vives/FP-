select now(); /* NOS DICE LA HORA  FECHA ACTUAL*/
SELECT now (), date_trunc('year', now() + interval '1 month');


select now() - interval '3 hours' - interval '25 minutes';
timestampdif - retorna el resultado de x fecha a y, le puedes quitar horas...
 

/*
QUERY #1
*/


SELECT DATE_FORMAT('2023-03-03 19:38:25', '%j %d %m %y %H %i %S %f');

SELECT DATE_FORMAT('2023-03-03 19:38:25', '%W %M %Y');


/*
QUERY #2
*/
/* MARIA_DB*/
SELECT last_day(now());

/* Postgresql */
SELECT (DATE_TRUNC('month', NOW()) + INTERVAL '1 month - 1 day')::date;


/*
QUERY #3
*/

/* MARIA_DB*/
SELECT last_day(now()) + interval 3 month;

/* Postgresql */
SELECT (DATE_TRUNC('month', NOW()) + INTERVAL '4 month - 1 day')::date;


/*
QUERY #4
*/

/* MARIA_DB*/

SELECT 
DATE_FORMAT((last_day(now()) + interval 3 month), '%M %d,%y') date;

/* Postgresql */

SELECT 
to_char((DATE_TRUNC('month', NOW()) + INTERVAL '4 month - 1 day')::date, 'Month DD,YY');

/*
QUERY #5
*/


/* MARIA_DB*/
SELECT
  NOW() date_madrid,
  CONVERT_TZ(NOW(), 'UTC', 'America/Panama') date_panama;

/* Postgresql */
SELECT now() date_madrid,
now () at time zone 'America/Panama' date_panama;


/*
QUERY #6
*/
/* MARIA_DB*/
SELECT
  CONVERT_TZ(NOW(), 'UTC', 'Australia/Sydney') date_sydney,
  CONVERT_TZ(NOW(), 'UTC', 'America/Panama') date_panama;

/* Postgresql */
SELECT now () at time zone 'Australia/Sydney' date_sydney,
now () at time zone 'America/Panama' date_panama;



/*
QUERY #7
*/
/* MARIA_DB*/
SELECT
now() ahora,
date_sub(CONVERT_TZ(now(),@@time_zone,'Australia/Sydney'), interval '3:25' HOUR_MINUTE) as menos;

/* Postgresql */
SELECT 
CURRENT_TIMESTAMP ahora,
TIMEZONE('Australia/Sydney', CURRENT_TIMESTAMP) - interval '3 HOURS 20 MINUTES' menos;

/*
QUERY #8
*/
/* MARIA_DB*/
Select 
max(DATEDIFF(NOW(), start_date)) day_Emp_max,
min(DATEDIFF(NOW(), start_date)) day_Emp_min
from employees;

/* Postgresql */
SELECT 
    min(EXTRACT(DAY FROM NOW()-start_date)) day_Emp_max,
    max(EXTRACT(DAY FROM NOW()-start_date)) day_Emp_min
FROM employees;

/*
QUERY #9
*/
/* MARIA_DB*/
SELECT 
name,
surname,
start_date
FROM 
employees 
WHERE 
DAYOFWEEK(start_date) = 3;

/* Postgresql */

SELECT 
name,
surname,
start_date
FROM 
employees 
WHERE 
EXTRACT(DOW FROM start_date) = 2;
/*
QUERY #10
*/
/* MARIA_DB*/
Select 
name,
surname,
start_date,
DATEDIFF(NOW(), start_date) day_Emp_min
from employees
ORDER BY day_Emp_min ASC LIMIT 1;

/* Postgresql */
SELECT name, 
       surname, 
       start_date, 
       EXTRACT(DAY FROM NOW()-start_date) as day_Emp_min 
FROM employees
ORDER BY day_Emp_min ASC LIMIT 1;



/*
QUERY #11
*/
/* MARIA_DB*/

SELECT
NAME,
surname,
DATEDIFF(YEAR, start_date, now()) as years,
DATEDIFF(MONTH, start_date, now())%12 as months
FROM
employees;
/* Postgresql */
SELECT 
name,
surname,
DATEFORMAT()
FROM 
employees 
WHERE 
EXTRACT(DOW FROM start_date) = 2;

/*
QUERY #12
*/



/*
QUERY #13
*/



/*
QUERY #14
*/



/*
QUERY #15
*/



/*
QUERY #16
*/



/*
QUERY #17
*/



/*
QUERY #18
*/


