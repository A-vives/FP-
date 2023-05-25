
/*
QUERY INNER JOIN
*/

SELECT
    T.name,
    C.name
FROM
    towns T
INNER JOIN
    countries C 
WHERE
    T.country = C.id;

/*
QUERY EXPLICIT INNER JOIN
*/

SELECT
    T.name,
    C.name
FROM
    towns T,
    countries C 
WHERE
    T.country = C.id;

/*
QUERY LEFT OUTER JOIN
*/

SELECT
    T.name,
    C.name
FROM
    towns T
LEFT OUTER JOIN
    countries C 
ON
    T.country = C.id;
    
/*
QUERY RIGHT OUTER JOIN
*/

SELECT
    T.name,
    C.name
FROM
    towns T
RIGHT OUTER JOIN
    countries C 
ON
    T.country = C.id;










/*
QUERY INNER JOIN #2
*/

SELECT
    T.name, 
    TE.name, 
    C.name
FROM 
    towns T 
INNER JOIN teams TE 
    ON T.id = TE.town 
INNER JOIN countries C 
    ON T.country = C.id;

/*
QUERY EXPLICIT INNER JOIN #2
*/

SELECT
    TE.name,
    T.name, 
    C.name
FROM 
    towns T,
    teams TE,
    countries C 
    WHERE
    T.id = TE.town 
    AND
    T.country = C.id;


/*
QUERY LEFT OUTER JOIN #2
*/

SELECT
    TE.name, 
    T.name, 
    C.name
FROM 
     teams TE
LEFT OUTER JOIN  towns T
    ON T.id = TE.town 
LEFT OUTER JOIN countries C 
    ON T.country = C.id;
    
/*
QUERY RIGHT OUTER JOIN #2
*/

SELECT
    TE.name, 
    T.name, 
    C.name
FROM 
    towns T 
RIGHT OUTER JOIN teams TE 
    ON T.id = TE.town 
RIGHT OUTER JOIN countries C 
    ON T.country = C.id;

/*
QUERY FULL OUTER JOIN #2
*/

SELECT
    TE.name, 
    T.name, 
    C.name
FROM 
    towns T 
FULL OUTER JOIN teams TE 
    ON T.id = TE.town 
FULL OUTER JOIN countries C 
    ON T.country = C.id;

/*
QUERY  #3
*/


SELECT
    T.name,
    count(TE.name) num_teams
FROM
teams TE,
towns T
WHERE
TE.town = T.id
GROUP BY
    T.name;

/*
QUERY  #3
*/


SELECT
T.name,
COUNT(TE.name) num_teams
FROM
towns T
LEFT OUTER JOIN teams TE
ON T.id = TE.town
GROUP BY
T.name;



/*
QUERY #4
*/


SELECT
T.name
FROM towns T
LEFT OUTER JOIN teams TE ON T.id=TE.town
WHERE
TE.town IN NULL
group by T.name;
