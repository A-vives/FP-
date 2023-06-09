commands = [
    """drop table if exists public.SERVICE_HAS cascade;"""
    """drop table if exists public.ORDER_SERVICE cascade;"""
    """drop table if exists public.SALES_PRODUCTS cascade;"""
    """drop table if exists public.SALES cascade;"""
    """drop table if exists public.WORKER cascade;"""
    """drop table if exists public.SERVICES cascade;"""
    """drop table if exists public.CUSTOMERS cascade;"""
    """drop table if exists public.PRODUCTS cascade;"""
       """ CREATE TABLE PRODUCTS (
  ID SERIAL PRIMARY KEY,
  name VARCHAR(20),
  brand VARCHAR(25),
  model VARCHAR(10),
  price DECIMAL
)
       """,
       """ CREATE TABLE CUSTOMERS (
  ID SERIAL PRIMARY KEY,
  name VARCHAR(15),
  surname VARCHAR(20),
  tlf_number VARCHAR(11),
  Email VARCHAR(50),
  address VARCHAR(50)
)
       """,
       """
       CREATE TABLE SERVICES (
  ID SERIAL PRIMARY KEY,
  name VARCHAR(15),
  description VARCHAR(155),
  price DECIMAL
)
       """,
       """
       CREATE TABLE WORKER (
  ID SERIAL PRIMARY KEY,
  name VARCHAR(15),
  surname VARCHAR(20),
  tlf_number VARCHAR(11),
  date_up DATE
)
       """,
       """
       CREATE TABLE SALES (
  ID SERIAL PRIMARY KEY,
  datetime DATETIME,
  ID_CUSTOMER INT,
  ID_WORKER INT,
  FOREIGN KEY (ID_CUSTOMER) REFERENCES CUSTOMERS(ID),
  FOREIGN KEY (ID_WORKER) REFERENCES WORKER(ID)
)
       """,
       """
       CREATE TABLE SALES_PRODUCTS (
  price DECIMAL,
  Qty INT,
  ID_SALE INT,
  ID_PRODUCT INT,
  FOREIGN KEY (ID_SALE) REFERENCES SALES(ID),
  FOREIGN KEY (ID_PRODUCT) REFERENCES PRODUCTS(ID)
)
       """,
       """
       CREATE TABLE ORDER_SERVICE (
  ID SERIAL PRIMARY KEY,
  datetime DATETIME,
  description VARCHAR(150),
  ID_WORKER INT,
  FOREIGN KEY (ID_WORKER) REFERENCES WORKER(ID)
)
       """,
       """
       CREATE TABLE SERVICE_HAS (
  price DECIMAL,
  ID_ORDER_SERVICE INT,
  ID_SERVICES INT,
  FOREIGN KEY (ID_ORDER_SERVICE) REFERENCES ORDER_SERVICE(ID),
  FOREIGN KEY (ID_SERVICES) REFERENCES SERVICES(ID)
)
       """]
commandsINS = [
       """

INSERT INTO PRODUCTS (name, brand, model, price)
    VALUES
    ('Laptop', 'Dell', 'XPS', 999.00),
    ('Monitor', 'Samsung', 'UHD', 299.99),
    ('Keyboard', 'Logitech', 'K380', 49.99),
    ('Mouse', 'Razer', 'Naga', 79.99),
    ('SSD', 'Samsung', '1TB', 199.00),
    ('Headphones', 'Sony', 'WH-1000XM4', 349.00),
    ('Graphics Card', 'NVIDIA', 'RTX 3080', 899.00),
    ('SSD', 'Crucial', 'MX500', 149.00),
    ('Mouse', 'Logitech', 'G502', 69.99),
    ('Monitor', 'LG', '27GN950', 799.00)
    """,
    """
INSERT INTO CUSTOMERS (name, surname, tlf_number, Email, address) 
    VALUES
    ('John', 'Smith', '1234567890', 'john.smith@example.com', '123 Main St'),
    ('Sarah', 'Johnson', '2345678901', 'sarah.johnson@example.com', '456 Elm St'),
    ('Michael', 'Williams', '3456789012', 'michael.williams@example.com', '789 Oak St'),
    ('Emily', 'Jones', '4567890123', 'emily.jones@example.com', '987 Pine St'),
    ('Robert', 'Taylor', '9012345678', 'robert.taylor@example.com', '321 Oak St'),
    ('Olivia', 'Moore', '0123456789', 'olivia.moore@example.com', '654 Elm St'),
    ('William', 'Anderson', '1122334455', 'william.anderson@example.com', '987 Maple Ave'),
    ('Ava', 'Thompson', '2233445566', 'ava.thompson@example.com', '456 Pine St')
    """,
    """
INSERT INTO SERVICES (name, description, price)
VALUES
    ('Hardw Repair', 'Hardware Repair', 50.00),
    ('Inst Softw', 'Installing Software', 29.99),
    ('Mantenimence', 'Cleaning and mantenimence', 80.00),
    ('Kill Pat', 'Kill Virus and malware', 99.00),
    ('Media Support', 'Support in media', 69.00),
    ('Data RecoveryS', 'Recover low data recources', 35.50),
    ('Data Recovery', 'Recover lost data from storage devices', 149.00),
    ('Virus Removal', 'Thoroughly remove viruses and malware', 79.99),
    ('Hardware Upgr', 'Upgrade components for better performance', 129.00),
    ('Network Setup', 'Configure and optimize network settings', 99.00);
    """,
    """
INSERT INTO WORKER (name, surname, tlf_number, date_up)
    VALUES
    ('David', 'Brown', '5678901234', '2021-01-01'),
    ('Jennifer', 'Davis', '6789012345', '2020-06-15'),
    ('Christopher', 'Miller', '7890123456', '2022-03-10'),
    ('Jessica', 'Wilson', '8901234567', '2019-09-05'),
    ('Daniel', 'White', '3344556677', '2020-02-15'),
    ('Sophia', 'Harris', '4455667788', '2021-08-20'),
    ('Matthew', 'Clark', '5566778899', '2019-11-10'),
    ('Emma', 'Lewis', '6677889900', '2022-05-01')
    """,
    """
INSERT INTO SALES (datetime, ID_CUSTOMER, ID_WORKER)
    VALUES
    ('2023-05-20 09:30', 1, 3),
    ('2023-05-21 14:15', 2, 2),
    ('2023-05-22 11:45', 3, 1),
    ('2023-05-23 16:20', 1, 4),
    ('2023-05-24 10:10', 4, 2),
    ('2023-05-25 13:00', 2, 3),
    ('2023-05-26 15:30', 3, 1),
    ('2023-05-27 12:45', 4, 4)
    """,
    """
INSERT INTO SALES_PRODUCTS (price, Qty, ID_SALE, ID_PRODUCT)
    VALUES
    (120.50, 1, 1, 1),
    (89.99, 2, 2, 3),
    (55.00, 1, 3, 2),
    (299.00, 1, 4, 5),
    (75.80, 3, 5, 4),
    (49.99, 1, 6, 1),
    (159.00, 2, 7, 6),
    (69.95, 1, 8, 3)
    """,
    
    
    
    """
INSERT INTO ORDER_SERVICE (datetime, description, ID_WORKER)
    VALUES
    ('2023-05-20 10:00', 'Reparación de ordenador', 3),
    ('2023-05-21 12:30', 'Instalación de software', 2),
    ('2023-05-22 09:45', 'Reemplazo de disco duro', 1),
    ('2023-05-23 14:15', 'Limpieza de virus', 4),
    ('2023-05-24 11:30', 'Configuración de red', 2),
    ('2023-05-25 13:45', 'Reparación de pantalla', 3),
    ('2023-05-26 16:30', 'Actualización de sistema operativo', 1),
    ('2023-05-27 10:45', 'Recuperación de datos', 4),
    ('2023-05-28 09:00', 'Data Recovery', 2),
    ('2023-05-29 14:30', 'Virus Removal', 3),
    ('2023-05-30 11:15', 'Hardware Upgrade', 1),
    ('2023-05-31 15:45', 'Network Setup', 4)
    """,
    """
INSERT INTO SERVICE_HAS (price, ID_ORDER_SERVICE, ID_SERVICES)
    VALUES
    (50.00, 1, 1),
    (29.99, 2, 3),
    (80.00, 3, 2),
    (99.00, 4, 5),
    (35.50, 5, 4),
    (19.99, 6, 1),
    (69.00, 7, 6),
    (49.95, 8, 3),
    (149.00, 9, 7),
    (79.99, 10, 8),
    (129.00, 11, 9),
    (99.00, 12, 10)
    """
    ]