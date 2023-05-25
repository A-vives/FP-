/*1*/
select * 
from actors
where last_name like "Willis"
order by last_name, first_name;

/*2*/
select id, name
from movies
where   name like 'man %' or name like '% man %' or name like '% man'
        or name like 'pirates %' or name like '% pirates %' or name like '% pirates' 
        or name like 'war %' or name like '% war %' or name like '% war' 
        or name like 'kill %' or name like '% kill %' or name like '% kill'
order by name;

/*3*/
select M.name 
from movies M, directors D, movies_directors AUX
where (D.first_name = "Ethan" and D.last_name = "Coen") and (M.id = AUX.movie_id) and (D.id = AUX.director_id)
order by M.name;

/*4*/
select M.name, M.year
from movies M, directors D, movies_directors AUX
where (D.first_name = "Ethan" and D.last_name = "Coen") and (M.id = AUX.movie_id) and (D.id = AUX.director_id) and M.year > 1996
order by M.year; 

/*5*/
select M.id, M.name, M.year
from movies M
where M.id NOT IN 
    (select M.id
    from movies M, movies_directors AUX
    where M.id = AUX.movie_id)
    and M.name like "w%"
order by name;

/*6*/
select concat(D.first_name, " ", D.last_name) as Director_name, M.name as movie_title, M.year, concat(A.first_name, " ", A.last_name) as actor_name, R.role
from directors D, movies M, actors A, roles R, movies_directors AUX
where M.name = "Lost in Translation" and M.id = AUX.movie_id and M.id = R.movie_id and A.id = R.actor_id and AUX.director_id = D.id
order by actor_name; 

/*7*/
select concat(A.first_name, " ", A.last_name) as actor_name, M.name, M.year
from actors A, movies M, roles R
where M.id=R.movie_id and R.actor_id=A.id and M.name="Kill Bill: Vol. 1" and not A.last_name="Thurman"
order by M.name, actor_name;

/*8*/
select M.year, M.name 
from movies M, directors D, movies_directors MD 
where D.first_name = "Quentin" and D.last_name = "Tarantino" and D.id=MD.director_id and MD.movie_id=M.id
order by M.year;

/*9*/
select count(AUX.n)
from(
    select M.name as n
from movies M, directors D, movies_directors MD 
where D.first_name = "Quentin" and D.last_name = "Tarantino" and D.id=MD.director_id and MD.movie_id=M.id
order by M.year) as AUX;

/*10*/
select A.first_name, A.last_name, count(M.name) as num_movies
from actors A, movies M, roles R
where A.last_name like "Puent%" and M.id=R.movie_id and R.actor_id=A.id
group by A.id
order by num_movies desc;