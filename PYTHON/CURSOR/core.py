import xml.etree.ElementTree as ET
import psycopg2
import random
import random
import time

random.seed(time.time())
min_num = 5
max_num = 20
secret_num = random.randint(min_num, max_num)
secret_num2 = random.randint(min_num, max_num)
secret_num3 = random.randint(min_num, max_num)
secret_num4 = random.randint(min_num, max_num)
secret_num5 = random.randint(min_num, max_num)
secrets = []

secrets.append(secret_num)
secrets.append(secret_num2)
secrets.append(secret_num3)
secrets.append(secret_num4)
secrets.append(secret_num5)

def open_connection(
   phost="localhost",
   pdatabase="exam",  # the database must be created
   puser="postgres",
   ppassword="alualu",
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
#    print(
#        "Closing connection to database %s with user %s on %s:%s"
#        % (conn.info.dbname, conn.info.user, conn.info.host, conn.info.port)
#    )
   if conn is not None:
       conn.close()
       
#
#

def insert_vendor_list(numbers_list):
   """ insert multiple numbers into the numbers table  """
   sql = "INSERT INTO public.numbers (num) VALUES (%s)"
   conn = open_connection()
   try:
       # create a new cursor    
       cur = conn.cursor()
       # execute the INSERT statement
       cur.executemany(sql, numbers_list)
       # commit the changes to the database
       conn.commit()
       # close communication with the database
       cur.close()
   except (Exception, psycopg2.DatabaseError) as error:
       print(error)
   finally:
       if conn is not None:
           close_connection(conn)
           
# def insert_vendor(vendor_name):
#    # insert a new vendor into the vendors table
#    sql = """INSERT INTO vendors(vendor_name)
#             VALUES(%s) RETURNING vendor_id;"""
#    conn = open_connection()
#    vendor_id = None
#    try:
#        # create a new cursor
#        cur = conn.cursor()
#        # execute the INSERT statement
#        cur.execute(sql, (vendor_name,))
#        # get the generated id back
#        vendor_id = cur.fetchone()[0]
#        # commit the changes to the database
#        conn.commit()
#        # close communication with the database
#        cur.close()
#    except (Exception, psycopg2.DatabaseError) as error:
#        print(error)
#    finally:
#        if conn is not None:
#            close_connection(conn)


#    return vendor_id
print(secrets)
insert_vendor_list([
       2,
       1,
       -3,
       23,
       -1
   ])
# def create_tables():
#    # create tables in the PostgreSQL database
#    commands = [
#        """ DROP TABLE IF EXISTS vendor_parts """,
#        """ DROP TABLE IF EXISTS vendors """,
#        """ DROP TABLE IF EXISTS part_drawings """,
#        """ DROP TABLE IF EXISTS parts """,
#        """ CREATE TABLE vendors (
#            vendor_id SERIAL PRIMARY KEY,
#            vendor_name VARCHAR(255) NOT NULL
#        )
#        """,
#        """ CREATE TABLE parts (
#                part_id SERIAL PRIMARY KEY,
#                part_name VARCHAR(255) NOT NULL
#                )
#        """,
#        """
#        CREATE TABLE part_drawings (
#                part_id INTEGER PRIMARY KEY,
#                file_extension VARCHAR(5) NOT NULL,
#                drawing_data BYTEA NOT NULL,
#                FOREIGN KEY (part_id)
#                REFERENCES parts (part_id)
#                ON UPDATE CASCADE ON DELETE CASCADE
#        )
#        """,
#        """
#        CREATE TABLE vendor_parts (
#                vendor_id INTEGER NOT NULL,
#                part_id INTEGER NOT NULL,
#                PRIMARY KEY (vendor_id , part_id),
#                FOREIGN KEY (vendor_id)
#                    REFERENCES vendors (vendor_id)
#                    ON UPDATE CASCADE ON DELETE CASCADE,
#                FOREIGN KEY (part_id)
#                    REFERENCES parts (part_id)
#                    ON UPDATE CASCADE ON DELETE CASCADE
#        )
#        """]
#    conn = open_connection()
#    try:
#        cur = conn.cursor()
#        # create table one by one
#        for command in commands:
#            cur.execute(command)
#            print("hola")
#        # close communication with the PostgreSQL database server
#        cur.close()
#        # commit the changes
#        conn.commit()
#    except (Exception, psycopg2.DatabaseError) as error:
#        print(error)
#    finally:
#        if conn is not None:
#            close_connection(conn)
# create_tables()