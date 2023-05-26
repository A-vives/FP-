/*
16, 17, 19, 20, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 35, 36, 37, 38, 39

3 de estas
41, 42, 43, 44, 45, 46, 47
*/

/*
16. Show me the minimum and maximum marks of all the students.
*/

SELECT MIN(S.mark) AS min_mark, MAX(S.mark) AS max_mark
FROM S.students
WHERE S.mark IN (SELECT S.mark FROM students);