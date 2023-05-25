from time import strftime
import xml.etree.ElementTree as ET
import psycopg2

# connect to the database
connection = psycopg2.connect(
    host="localhost", database="students", user="postgres", password="alualualu"
)
# create a cursor
cursor = connection.cursor()
# execute an insert statement
insert_query = (
    "INSERT INTO students (id, name, date_of_birth, email) VALUES (%s, %s, %s, %s)"
)


tree = ET.parse("CLASE-2\Base_de_Datos\P10_Final\data.xml")
root = tree.getroot()
for el in root.findall("student"):
    record_to_insert = (
        el.find("id").text,
        el.find("name").text,
        el.find("date_of_birth").text,
        el.find("email").text,
    )
    cursor.execute(insert_query, record_to_insert)
    # commit the transaction
    connection.commit()
# close the cursor and connection
cursor.close()
connection.close()
