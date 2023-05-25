# SOLUTION 1: WITH FUNCTIONS
import xml.etree.ElementTree as ET
import psycopg2


# source: https://www.postgresqltutorial.com/postgresql-python/connect/
def open_connection(
   phost="localhost",
   pdatabase="students",  # the database must be created
   puser="postgres",
   ppassword="alualualu",
   pport="5432",
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


def insert_student(id, name, date_of_birth, email):
   # insert a new vendor into the vendors table
   sql = """INSERT INTO students (id, name, date_of_birth, email)
           VALUES(%s, %s, %s, %s);"""

   conn = open_connection()
   try:
       # create a new cursor
       cur = conn.cursor()
       # execute the INSERT statement
       cur.execute(sql, (id, name, date_of_birth, email))

       # commit the changes to the database
       conn.commit()
       # close communication with the database
       cur.close()
   except (Exception, psycopg2.DatabaseError) as error:
       print(error)
   finally:
       if conn is not None:
           close_connection(conn)


# Reading the XML file
tree = ET.parse("/home/sergi/Escritorio/students.xml")
root = tree.getroot()
print(root.findall("student"))
# Looping all the students
for student in root.findall("student"):
   # Reading student's data
   id = student.find("id").text
   name = student.find("name").text
   date_of_birth = student.find("date_of_birth").text
   email = student.find("email").text

   # Inserting data into the table
   insert_student(id, name, date_of_birth, email)
