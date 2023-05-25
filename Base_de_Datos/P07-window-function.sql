/* 
QUERY #24
*/
SELECT
D.num,
E.num,
E.salary,
avg(salary) OVER(PARTITION BY D.num)
FROM
employees E,
departments D
WHERE
E.dept_num = D.num;


/* 
QUERY #25
*/

SELECT
D.name,
E.num,
E.salary,
avg(salary) OVER(PARTITION BY D.name)
FROM
employees E,
departments D
WHERE
E.dept_num = D.num;

/* 
QUERY #26
*/

SELECT
E.name,
E.surname,
E.start_date,
count(E.num) OVER() count_employees
FROM
employees E
ORDER BY E.start_date;


/* 
QUERY #27
*/

SELECT
 ROW_NUMBER() OVER (
        ORDER BY E.start_date
    ) AS rank,
E.name,
E.surname
FROM
employees E
ORDER BY E.start_date;
