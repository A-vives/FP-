#1#
SELECT
name,
COALESCE (rank, 0) RANK
FROM
movies
order by rank ASC
LIMIT 10;

#2#

SELECT name
FROM movies
WHERE name LIKE '%i%i%i%i%i%i%i%i%i%i%i%i%';

#3#


SELECT
M.name 
FROM 
movies M 
WHERE 
M.name LIKE 'Chess%' 
ORDER BY M.name;

#4#

SELECT
M.year,
M.name
FROM
movies M,
directors D,
movies_directors MD
WHERE
M.id = MD.movie_id
AND
D.id = MD.director_id
AND
D.first_name = 'Sidney'
AND
D.last_name = 'Lumet';

#5#

SELECT
M.name,
MAX(COUNT(MG.genre))
FROM
movies M,
movies_genres MG
WHERE
M.id = MG.movie_id
group by M.name;


SELECT M.name, MAX(COUNT(MG.genre))
FROM movies AS M
INNER JOIN movies_genres AS MG
ON M.id = MG.movie_id;