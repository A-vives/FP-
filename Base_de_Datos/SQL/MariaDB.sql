

create table products (
	code varchar (6),
	name varchar(150),
	price numeric(7,2),
	constraint pk_product primary key (code)
	);



create table customers (
    email varchar(100),
    fname varchar(50),
    mname varchar(50),
    lname varchar(50),
    address varchar(150),
    date_of_birth date,
    constraint pk_customers primary key (email)
);

create table orders (
    number int auto_increment,
    datetime timestamp,
    email varchar(100),
    constraint pk_orders primary key (number),
    constraint fk_orders foreign key (email)
        references customers (email)
);
create table order_items (
    order int,
    line_number int auto_increment,
    price number (7,2)
    qty smallint,



create database trounament;

create table tournaments (
    id int ;
    `start_date` date,
    end_date date,
    constraint id_tournament primary key (id)
    );

create table matches (
    id int,
    `date` date,
    id_tournament int,
    id_local int,
    id_visitor int,
    goals_local tinyint,
    goals_visitor tinyint,
    constraint id_tournament foreign key (id_tournament) references tourament (id),
    constraint id_local foreign key (id_local) references teams (id),
    constraint id_visitor foreign key (id_visitor) references teams (id)
);
create table teams (
    id int;
    nickname tinyint
);



    nickname varchar(18)

    CREATE DATABASE DOLCE-V;

    CREATE TABLE CUSTOMERS (
    NUM INT PRIMARY KEY,
    NIF VARCHAR(20),
    NAME VARCHAR(50),
    ADDRESS VARCHAR(100),
    TLF_NUM VARCHAR(20),
    TOTAL_SPEND DECIMAL(10,2)
);

CREATE TABLE INVOICES (
    ID INT PRIMARY KEY,
    DATE DATE,
    TIME TIME,
    TOTAL_AMOUNT DECIMAL(10,2)
);

CREATE TABLE EMPLOYEES (
    SSN INT PRIMARY KEY,
    NAME VARCHAR(50),
    SURNAME VARCHAR(50),
    BIRTHDAY DATE
);

CREATE TABLE CHEF (
    SALARY DECIMAL(10,2),
    SSN INT,
    PRIMARY KEY (SSN),
    FOREIGN KEY (SSN) REFERENCES EMPLOYEES(SSN)
);

CREATE TABLE DELIVERY_GUY (
    H_WORK INT,
    SSN INT,
    PRIMARY KEY (SSN),
    FOREIGN KEY (SSN) REFERENCES EMPLOYEES(SSN)
);



CREATE TABLE ORDER_TAKES_PIZZA (
    ID_PIZZA INT,
    ID_ORDER INT,
    QTY INT,
    PRICE DECIMAL(10,2),
    DISCOUNT DECIMAL(5,2),
    PRIMARY KEY (ID_PIZZA, ID_ORDER),
    FOREIGN KEY (ID_PIZZA) REFERENCES PIZZA(ID),
    FOREIGN KEY (ID_ORDER) REFERENCES ORDERS(ID)
);

CREATE TABLE PIZZA (
    ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    DESC VARCHAR(100),
    PRICE DECIMAL(10,2)
);



CREATE TABLE PIZZA_HAS_INGREDIENTS (
    ID_PIZZA INT,
    ID_INGREDIENTS INT,
    QTY INT,
    PRIMARY KEY (ID_PIZZA, ID_INGREDIENTS),
    FOREIGN KEY (ID_PIZZA) REFERENCES PIZZA(ID),
    FOREIGN KEY (ID_INGREDIENTS) REFERENCES INGREDIENTS(ID)
);

CREATE TABLE CHEF_COOKS_PIZZA (
    SSN_CHEF INT,
    ID_PIZZA INT,
    ID_ORDER INT,
    PRIMARY KEY (SSN_CHEF, ID_PIZZA, ID_ORDER),
    FOREIGN KEY (SSN_CHEF) REFERENCES CHEF(SSN),
    FOREIGN KEY (ID_PIZZA) REFERENCES PIZZA(ID),
    FOREIGN KEY (ID_ORDER) REFERENCES ORDERS(ID)
);

CREATE TABLE INGREDIENTS (
    ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    COST_GR DECIMAL(10,2),
    DESC VARCHAR(100)
);

CREATE TABLE ORDER_SUPPLY (
    ID INT PRIMARY KEY,
    DATE DATE,
    NOM VARCHAR(50),
    ID_SUPPLIER INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (ID_SUPPLIER) REFERENCES SUPPLIER(CIF)
);

    CREATE TABLE SUPPLIER (
    CIF VARCHAR(20),
    NAME VARCHAR(50),
    PHONE_NUM VARCHAR(20),
    ADDRESS VARCHAR(100),
    PRIMARY KEY (CIF)
);

CREATE TABLE ORDER_SUPPLY_INGREDIENTS (
    ID_PROVIDER INT,
    ID_INGREDIENT INT,
    QTY INT,
    PRICE DECIMAL(10,2),
    PRIMARY KEY (ID_PROVIDER, ID_INGREDIENT),
    FOREIGN KEY (ID_PROVIDER) REFERENCES ORDER_SUPPLY(ID),
    FOREIGN KEY (ID_INGREDIENT) REFERENCES INGREDIENTS(ID)
);

CREATE TABLE ORDERS (
    ID INT PRIMARY KEY,
    DATE DATE,
    TIME TIME,
    SSN_DELIVERY_GUY INT,
    ID_CUSTOMER INT,
    ID_INVOICE INT,
    FOREIGN KEY (SSN_DELIVERY_GUY) REFERENCES DELIVERY_GUY(SSN),
    FOREIGN KEY (ID_CUSTOMER) REFERENCES CUSTOMERS(NUM),
    FOREIGN KEY (ID_INVOICE) REFERENCES IINVOIVES(ID)
    );


/* VER LAS PIZZAS QUE SE HAN VENDIDO        */

SELECT PIZZA.NAME, SUM(ORDER_TAKES_PIZZA.QTY) AS VENDIDAS
FROM ORDER_TAKES_PIZZA
INNER JOIN PIZZA ON PIZZA.ID = ORDER_TAKES_PIZZA.ID_PIZZA
INNER JOIN ORDERS ON ORDERS.ID = ORDER_TAKES_PIZZA.ID_ORDER
GROUP BY PIZZA.NAME



------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Empleados (
  id_empleado INT AUTO_INCREMENT PRIMARY KEY ,
  name VARCHAR(255),
  apellido VARCHAR (255),
  dirección VARCHAR(255),
  salario DECIMAL(10,2)  ,
  id_departamento INT,
  CONSTRAINT fk_id_departament FOREIGN KEY (id_departamento) REFERENCES Departamentos(id)
);

CREATE TABLE Departamentos (
  id INT AUTO_INCREMENT PRIMARY KEY ,
  name VARCHAR(255),
  ubicación VARCHAR(255)
);

CREATE TABLE Proyectos (
  id_proyecto INT AUTO_INCREMENT PRIMARY KEY ,
  name VARCHAR(255),
  fecha_inicio DATE,
  fecha_fin DATE,
  id_departamento INT,
  CONSTRAINT fk_id_departamento FOREIGN KEY (id_departamento) REFERENCES Departamentos(id)
);

CREATE TABLE Asignaciones_de_proyectos (
  id_proyecto INT,
  id_empleado INT,
  h_asignadas INT,
  constraint fk_id_proyect FOREIGN KEY (id_proyecto) REFERENCES Proyectos(id_proyecto),
  constraint fk_id_empleado FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);

INSERT INTO Empleados (name, apellido, dirección, salario, id_departamento)
VALUES ('Juan', 'Pérez', 'Calle Falsa 123', 45000.00, 1);
VALUES ('Antonio', 'Marquez', 'Calle melon 1', 3900.00, 5);
VALUES ('Andres', 'Gutierrez', 'Calle manuel', 3500.00, 4);
VALUES ('Ramon', 'Martorell', 'Calle edificada 4', 2000.00, 3);
VALUES ('Alberto', 'Vives', 'Camino valverde 3', 1200.00, 2);

INSERT INTO Departamentos (name, ubicación)
VALUES ('informatica', 'Alemania');
VALUES ('limpieza', 'Francia');
VALUES ('montage', 'Mallorca');
VALUES ('BD', 'España');

INSERT INTO Proyectos (name, fecha_inicio, fecha_fin, id_departamento)
VALUES ('Proyecto A', '2022-02-01', '2023-06-30', 2);
VALUES ('Proyecto B', '2022-10-07', '2023-06-30', 2);
VALUES ('Proyecto C', '2022-07-08', '2023-05-30', 2);
VALUES ('Proyecto D', '2022-06-03', '2023-06-30', 2);
VALUES ('Proyecto E', '2022-12-21', '2023-06-30', 2);

INSERT INTO Asignaciones_de_proyectos (id_proyecto, id_empleado, h_asignadas)
VALUES (1, 2, 160);


------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE DATABASE `SQL1NORMALAUTH`;
USE `SQL1NORMALAUTH`;

CREATE TABLE `DEPARTMENTS` (
  `num` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `town_code` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `DEPARTMENTS` (`num`, `name`, `town_code`) VALUES
(10, 'ACCOUNTING', 'SVQ'),
(20, 'RESEARCH', 'MAD'),
(30, 'SALES', 'BCN'),
(40, 'PRODUCTION', 'BIO');

CREATE TABLE `EMPLOYEES` (
  `num` int(11) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `manager` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `dept_num` int(11) DEFAULT NULL,
  `occu_code` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `EMPLOYEES` (`num`, `surname`, `name`, `manager`, `start_date`, `salary`, `commission`, `dept_num`, `occu_code`) VALUES
(1000, 'PITT', 'BRAD', NULL, '2004-01-01', 1040, NULL, 20, NULL),
(7369, 'SÁNCHEZ', 'SERGIO', 8001, '2010-12-17', 1040, NULL, 20, 'EMP'),
(7499, 'ARROYO', 'MARTA', 7698, '2010-02-20', 1500, 390, 30, 'SAL'),
(7521, 'SALA', 'REBECA', 7782, '2011-02-22', 1625, 650, 30, 'SAL'),
(7566, 'JIMÉNEZ', 'JUAN', 1000, '2017-04-02', 2900, NULL, 20, 'MAN'),
(7654, 'MARTÍN', 'MONICA', 7698, '2017-09-29', 1600, 1020, 30, 'SAL'),
(7698, 'GOMIS', 'BARTOLOME', 1000, '2017-05-01', 3005, NULL, 30, 'MAN'),
(7782, 'CEREZO', 'MARIA', 1000, '2010-06-09', 2885, NULL, 10, 'MAN'),
(7788, 'GILBERTO', 'JESUS', 8000, '2010-11-09', 3000, NULL, 20, NULL),
(7844, 'TOVAR', 'LUIS', 7698, '2018-09-08', 1350, 0, 30, 'SAL'),
(7876, 'ALONSO', 'FERNANDO', 7788, '2018-09-23', 1430, NULL, 20, 'EMP'),
(7900, 'JIMENO', 'XAVIER', 8001, '2017-12-03', 1335, NULL, 30, 'EMP'),
(7902, 'FERNÁNDEZ', 'ANA', 8000, '2016-12-03', 3000, NULL, 20, NULL),
(7934, 'MUÑOZ', 'ANTONIA', 8001, '2016-01-23', 1690, NULL, 10, 'EMP'),
(8000, 'BANDERAS', 'ANTONIO', 1000, '2017-01-09', 2885, NULL, 20, 'MAN'),
(8001, 'RUIZ', 'FERNANDA', 1000, '2018-06-10', 2885, NULL, 20, 'MAN');

CREATE TABLE `OCCUPATIONS` (
  `code` varchar(3) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `OCCUPATIONS` (`code`, `name`) VALUES
('ANA', 'ANALYST'),
('EMP', 'EMPLOYEE'),
('MAN', 'MANAGER'),
('PRE', 'PRESIDENT'),
('SAL', 'SALESMAN');

CREATE TABLE `TOWNS` (
  `code` varchar(3) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `TOWNS` (`code`, `name`) VALUES
('BCN', 'BARCELONA'),
('BIO', 'BILBAO'),
('MAD', 'MADRID'),
('SVQ', 'SEVILLA');

ALTER TABLE `DEPARTMENTS`
  ADD PRIMARY KEY (`num`),
  ADD KEY `town_code` (`town_code`);

ALTER TABLE `EMPLOYEES`
  ADD PRIMARY KEY (`num`),
  ADD KEY `dept_num` (`dept_num`),
  ADD KEY `manager` (`manager`),
  ADD KEY `occu_code` (`occu_code`);

ALTER TABLE `OCCUPATIONS`
  ADD PRIMARY KEY (`code`);

ALTER TABLE `TOWNS`
  ADD PRIMARY KEY (`code`);

ALTER TABLE `DEPARTMENTS`
  ADD CONSTRAINT `DEPARTMENTS_ibfk_1` FOREIGN KEY (`town_code`) REFERENCES `TOWNS` (`code`);

ALTER TABLE `EMPLOYEES`
  ADD CONSTRAINT `EMPLOYEES_ibfk_1` FOREIGN KEY (`dept_num`) REFERENCES `DEPARTMENTS` (`num`),
  ADD CONSTRAINT `EMPLOYEES_ibfk_2` FOREIGN KEY (`manager`) REFERENCES `EMPLOYEES` (`num`),
  ADD CONSTRAINT `EMPLOYEES_ibfk_3` FOREIGN KEY (`occu_code`) REFERENCES `OCCUPATIONS` (`code`);
