import xml.etree.ElementTree as ET
import psycopg2
def open_connection(
   phost="localhost",
   pdatabase="P-10-proyect",  # the database must be created
   puser="postgres",
   ppassword="alualualu",
   pport="5435",
):
   conn = None
   try:
       # connect to the PostgreSQL server
       print(
           "Connecting to database %s with user %s on %s:%s"
           % (pdatabase, puser, phost, pport)
       )
       conn = psycopg2.connect(
           host=phost, database=pdatabase, user=puser, password=ppassword, port=pport
       )
   except (Exception, psycopg2.DatabaseError) as error:
       print(error)
   return conn


def close_connection(conn):
   print(
       "Closing connection to database %s with user %s on %s:%s"
       % (conn.info.dbname, conn.info.user, conn.info.host, conn.info.port)
   )
   if conn is not None:
       conn.close()


def create_tables():
   # create tables in the PostgreSQL database
   commands = [
    """drop table if exists public.SERVICE_HAS cascade""",
    """drop table if exists public.ORDER_SERVICE cascade""",
    """drop table if exists public.SALES_PRODUCTS cascade""",
    """drop table if exists public.SALES cascade""",
    """drop table if exists public.WORKER cascade""",
    """drop table if exists public.SERVICES cascade""",
    """drop table if exists public.CUSTOMERS cascade""",
    """drop table if exists public.PRODUCTS cascade""",
    """ 
        CREATE TABLE PRODUCTS (
  ID SERIAL PRIMARY KEY,
  name VARCHAR(20),
  brand VARCHAR(25),
  model VARCHAR(10),
  price DECIMAL
)
       """,
       """ 
        CREATE TABLE CUSTOMERS (
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
  datetime DATE,
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
  datetime DATE,
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
   conn = open_connection()
   try:
       cur = conn.cursor()
       # create table one by one
       for command in commands:
           cur.execute(command)
           print("TABLE CREATED")
       # close communication with the PostgreSQL database server
       cur.close()
       # commit the changes
       conn.commit()
   except (Exception, psycopg2.DatabaseError) as error:
       print(error)
       print("CREATETABLE NOT SUCCESS!!!!")
   finally:
       if conn is not None:
           close_connection(conn)
           
create_tables()