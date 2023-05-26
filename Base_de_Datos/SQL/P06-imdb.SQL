select name from movies where name like '% avocato %'




/* QUERY #1 */
SELECT * from actors where last_name = "Wills"
ORDER BY first_name, last_name;

/*
QUERY #2 
*/
SELECT id, name 
from movies
WHERE name LIKE "% pirates %" OR name LIKE "% kill %" OR name LIKE "% war %" OR name LIKE "% man %"
OR name LIKE "pirates %" OR name LIKE "kill %" OR name LIKE "war %" OR name LIKE "man %"
OR name LIKE "% pirates" OR name LIKE "% kill" OR name LIKE "% war" OR name LIKE "% man"; 

/* 
QUERY #3  Titulos de peliculas dirigidas por Ethan Coen ordenadas por titulo 
*/

SELECT M.name
FROM movies M, directors D, movies_directors MD
WHERE MD.director_id = D.id AND
MD.movie_id = M.id AND D.first_name = 'Ethan'
AND D.last_name LIKE 'Coen'
ORDER BY  M.name;

/* 
QUERY #4 Titulo y año de estreno de las peliculas dirigidas por ethan coen antes de 1996 
*/

SELECT M.name, M.year
FROM movies M, directors D, movies_directors MD
WHERE MD.director_id = D.id AND
MD.movie_id = M.id AND D.first_name = 'Ethan'
AND D.last_name LIKE 'Coen'
AND year > 1996
ORDER BY M.year;


/*
QUERY #5 tITULO Y AÑO DE ESTRENO DE TODAS LAS PELICULAS QUE NO SABEMOS EL DIRECTOR,
 ORDENADOS POR EL TITULO. El titulo de la pelicula tiene que empezar por 'W', ordenalos 
 por enl nombre de la pelicula (clue: NOT IN(subselect)))
 */

SELECT id, name, year
from movies
where name LIKE 'W%'
AND id not in ( 
    SELECT movie_id 
    FROM movies_directors
); 

/*
QUERY #6 NOMBRE DE DIRECTOR, AÑO LANZAMIENTO, FIRST AND LAST NAME OF ACTORS IN 
THE MOVIE "LOST in Translation sort by actors full NAME"
*/

SELECT contac('first_name', ' ', 'last_name') director_name, 
M.name,
M.year,
 conac('first_name', ' ', 'last_name') actor_name, 
 R.role 
FROM directors D, movies M, actors A, movies_directors MD, roles R,
WHERE MD.director_id = D.id 
AND MD.movie_id = M.id 
AND A.id = R.movie_id
AND M.id = R.movies_id
AND MD.movie_id = R.movie_id
WHERE M.name LIKE 'Lost in Translation';

SELECT 
    CONCAT(D.first_name,' ', D.last_name) AS director_name, 
    M.name, M.year, 
    CONCAT(A.first_name, ' ', A.last_name) AS actor_name, 
    R.role 
FROM 
    directors D 
    JOIN movies_directors MD ON MD.director_id = D.id 
    JOIN movies M ON MD.movie_id = M.id 
    JOIN roles R ON M.id = R.movie_id 
    JOIN actors A ON A.id = R.actor_id
    WHERE M.name LIKE 'Lost in Translation';



/*
QUERY #7 Nombre completo de los actores que han trabajado con Uma Thruman
nombre y año de estreno Kill Bill: Vol. 1 order by movie name and actor full NAME
Uma Thuman must not be in the results
*/

SELECT 
    M.name, M.year, 
    CONCAT(A.first_name, ' ', A.last_name) AS actor_name, 
    R.role 
FROM 
    directors D 
    JOIN movies_directors MD ON MD.director_id = D.id 
    JOIN movies M ON MD.movie_id = M.id 
    JOIN roles R ON M.id = R.movie_id 
    JOIN actors A ON A.id = R.actor_id
    WHERE M.name LIKE 'Kill Bill: Vol. 1';


/*
QUERY #8 Title of the movies directed by Quentin Tarantino. Sort the result by year and title
*/

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
D.first_name = 'Quentin'
AND
D.last_name = 'Tarantino';


/*
QUERY #9
*/

SELECT
concat(D.first_name,' ' ,D.last_name) director_name,
count(M.name)
FROM
movies M,
directors D,
movies_directors MD
WHERE
M.id = MD.movie_id
AND
D.id = MD.director_id
AND
D.first_name = 'Quentin'
AND
D.last_name = 'Tarantino';




/*
QUERY #10
*/

SELECT
A.first_name,
A.last_name,
count(M.name) num_film
FROM
actors A,
roles R,
movies M
WHERE
A.id = R.actor_id
AND
M.id = R.movie_id
AND
A.last_name like 'Puent%'
GROUP BY A.first_name, A.last_name
ORDER BY num_film desc;


/*
QUERY #11
*/


