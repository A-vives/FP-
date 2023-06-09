/* Firstly, copy/paste this */
DROP DATABASE if exists samplecompany;
CREATE DATABASE samplecompany;
\c samplecompany;
/* Secondly, copy/paste this */
CREATE TABLE occupations (
  code varchar(3) NOT NULL primary key,
  name varchar(30) NOT NULL
);
INSERT INTO occupations (code, name)
VALUES ('ANA', 'ANALYST'),
  ('EMP', 'EMPLOYEE'),
  ('MAN', 'MANAGER'),
  ('PRE', 'PRESIDENT'),
  ('SAL', 'SALESMAN');
CREATE TABLE towns (
  code varchar(3) NOT NULL primary key,
  name varchar(30) NOT NULL
);
INSERT INTO towns (code, name)
VALUES ('BCN', 'BARCELONA'),
  ('BIO', 'BILBAO'),
  ('MAD', 'MADRID'),
  ('SVQ', 'SEVILLA');
CREATE TABLE departments (
  num smallint NOT NULL primary key,
  name varchar(30) NOT NULL,
  town_code varchar(3) DEFAULT NULL references towns (code)
);
CREATE INDEX idx_departments_fk ON departments (town_code);
INSERT INTO departments (num, name, town_code)
VALUES (10, 'ACCOUNTING', 'SVQ'),
  (20, 'RESEARCH', 'MAD'),
  (30, 'SALES', 'BCN'),
  (40, 'PRODUCTION', 'BIO');
CREATE TABLE employees (
  num int NOT NULL primary key,
  surname varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  manager int DEFAULT NULL,
  start_date date DEFAULT NULL,
  salary smallint DEFAULT NULL,
  commission smallint DEFAULT NULL,
  dept_num smallint DEFAULT NULL references departments (num),
  occu_code varchar(3) DEFAULT NULL references occupations (code)
);
CREATE INDEX idx_employees_fk_1 ON employees (dept_num);
CREATE INDEX idx_employees_fk_2 ON employees (occu_code);
INSERT INTO employees (
    num,
    surname,
    name,
    manager,
    start_date,
    salary,
    commission,
    dept_num,
    occu_code
  )
VALUES (
    1000,
    'POTTER',
    'BRAD',
    NULL,
    '2004-01-01',
    1040,
    NULL,
    20,
    NULL
  ),
  (
    7369,
    'SÁNCHEZ',
    'SERGIO',
    8001,
    '2010-12-17',
    1040,
    NULL,
    20,
    'EMP'
  ),
  (
    7499,
    'ARROYO',
    'MARTA',
    7698,
    '2010-02-20',
    1500,
    390,
    30,
    'SAL'
  ),
  (
    7521,
    'SALA',
    'REBECA',
    7782,
    '2011-02-22',
    1625,
    650,
    30,
    'SAL'
  ),
  (
    7566,
    'JIMÉNEZ',
    'JUAN',
    1000,
    '2017-04-02',
    2900,
    NULL,
    20,
    'MAN'
  ),
  (
    7654,
    'MARTÍN',
    'MONICA',
    7698,
    '2017-09-29',
    1600,
    1020,
    30,
    'SAL'
  ),
  (
    7698,
    'GOMIS',
    'BARTOLOME',
    1000,
    '2017-05-01',
    3005,
    NULL,
    30,
    'MAN'
  ),
  (
    7782,
    'CEREZO',
    'MARIA',
    1000,
    '2010-06-09',
    2885,
    NULL,
    10,
    'MAN'
  ),
  (
    7788,
    'GILBERTO',
    'JESUS',
    8000,
    '2010-11-09',
    3000,
    NULL,
    20,
    NULL
  ),
  (
    7844,
    'TOVAR',
    'LUIS',
    7698,
    '2018-09-08',
    1350,
    0,
    30,
    'SAL'
  ),
  (
    7876,
    'ALONSO',
    'FERNANDO',
    7788,
    '2018-09-23',
    1430,
    NULL,
    20,
    'EMP'
  ),
  (
    7877,
    'ALONSO',
    'LAURA',
    7788,
    '2020-01-23',
    1430,
    NULL,
    20,
    'EMP'
  ),
  (
    7900,
    'GIMENO',
    'XAVIER',
    8001,
    '2017-12-03',
    1335,
    NULL,
    30,
    'EMP'
  ),
  (
    7902,
    'FERNÁNDEZ',
    'ANA',
    8000,
    '2016-12-03',
    3000,
    NULL,
    20,
    NULL
  ),
  (
    7934,
    'MUÑOZ',
    'ANTONIA',
    8001,
    '2016-01-23',
    1690,
    NULL,
    10,
    'EMP'
  ),
  (
    8000,
    'RUIZ',
    'ANTONIO',
    1000,
    '2017-01-09',
    2885,
    NULL,
    20,
    'MAN'
  ),
  (
    8001,
    'RUIZ',
    'FERNANDA',
    1000,
    '2018-06-10',
    2885,
    NULL,
    20,
    'MAN'
  );