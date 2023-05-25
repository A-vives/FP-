import xml.etree.ElementTree as ET
import psycopg2
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
   pdatabase="postgres",  # the database must be created
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
       print(sql)
       # commit the changes to the database
       conn.commit()
       # close communication with the database
       cur.close()
   except (Exception, psycopg2.DatabaseError) as error:
       print(error)
   finally:
       if conn is not None:
           close_connection(conn)
           
           
           print(secrets)
           
vendor_list= [
       2,
       1,
       -3,
       23,
       -1
] 
insert_vendor_list(vendor_list)    
insert_vendor_list(secrets) 

    

