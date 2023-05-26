-- CREATE TABLE SALES (
--   ID SERIAL PRIMARY KEY,
--   datetime DATETIME,
--   ID_CUSTOMER INT,
--   ID_WORKER INT,
--   FOREIGN KEY (ID_CUSTOMER) REFERENCES CUSTOMERS(ID),
--   FOREIGN KEY (ID_WORKER) REFERENCES WORKER(ID)
-- );

-- CREATE TABLE SALES_PRODUCTS (
--   price DECIMAL,
--   Qty INT,
--   ID_SALE INT,
--   ID_PRODUCT INT,
--   FOREIGN KEY (ID_SALE) REFERENCES SALES(ID),
--   FOREIGN KEY (ID_PRODUCT) REFERENCES PRODUCTS(ID)
-- );

-- CREATE TABLE PRODUCTS (
--   ID SERIAL PRIMARY KEY,
--   name VARCHAR(20),
--   brand VARCHAR(25),
--   model VARCHAR(10),
--   price DECIMAL
-- );

-- CREATE TABLE CUSTOMERS (
--   ID SERIAL PRIMARY KEY,
--   name VARCHAR(15),
--   surname VARCHAR(20),
--   tlf_number VARCHAR(11),
--   Email VARCHAR(50),
--   address VARCHAR(50)
-- );

-- CREATE TABLE ORDER_SERVICE (
--   ID SERIAL PRIMARY KEY,
--   datetime DATETIME,
--   description VARCHAR(150),
--   ID_WORKER INT,
--   FOREIGN KEY (ID_WORKER) REFERENCES WORKER(ID)
-- );

-- CREATE TABLE SERVICE_HAS (
--   price DECIMAL,
--   ID_ORDER_SERVICE INT,
--   ID_SERVICES INT,
--   FOREIGN KEY (ID_ORDER_SERVICE) REFERENCES ORDER_SERVICE(ID),
--   FOREIGN KEY (ID_SERVICES) REFERENCES SERVICES(ID)
-- );

-- CREATE TABLE SERVICES (
--   ID SERIAL PRIMARY KEY,
--   name VARCHAR(15),
--   description VARCHAR(155),
--   price DECIMAL
-- );

-- CREATE TABLE WORKER (
--   ID SERIAL PRIMARY KEY,
--   name VARCHAR(15),
--   surname VARCHAR(20),
--   tlf_number VARCHAR(11),
--   date_up DATE
-- );

-- Insertar un cliente en la tabla CUSTOMERS
INSERT INTO CUSTOMERS (name, surname, tlf_number, Email, address)
VALUES ('Juan', 'Pérez', '123456789', 'juan@example.com', 'Calle Principal 123');

-- Insertar un producto en la tabla PRODUCTS
INSERT INTO PRODUCTS (name, brand, model, price)
VALUES ('Camiseta', 'Nike', 'Classic', 29.99);

-- Insertar una venta en la tabla SALES
INSERT INTO SALES (datetime, ID_CUSTOMER, ID_WORKER)
VALUES ('2023-05-21 10:30:00', 1, 2);

-- Insertar un producto vendido en la tabla SALES_PRODUCTS
INSERT INTO SALES_PRODUCTS (price, Qty, ID_SALE, ID_PRODUCT)
VALUES (29.99, 1, 1, 1);

-- Insertar un servicio en la tabla SERVICES
INSERT INTO SERVICES (name, description, price)
VALUES ('Mantenimiento', 'Servicio de mantenimiento preventivo', 99.99);