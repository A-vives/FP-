/*
QUERY #1
*/

SELECT
MG.genre
FROM
movies M,
movies_genres MG
WHERE
M.id = MG.movie_id
AND
M.name = 'Godfather, The'
AND
M.year LIKE '1972'
order by MG.genre;

/*
QUERY #2
*/

SELECT
M.name
from movies M
where M.name LIKE '%carmen%'
AND M.id not in ( 
    SELECT 
    MD.movie_id
    FROM 
    movies_directors MD    );

/*
QUERY #3
*/

SELECT
M.id,
M.name,
count(D.id) numdirectors
FROM
movies M,
movies_directors MD,
directors D
WHERE
M.id = MD.movie_id
AND
D.id = MD.director_id
group by M.id
order by numdirectors desc
limit 28;

/*
QUERY #4
*/

SELECT
count(id) genre
from
movies
WHERE
year BETWEEN '1901' AND '2000';