#!/usr/bin/env python3
import psycopg2

def open_connection(phost="localhost",
                    pdatabase="samplecompany",
                    puser="postgres",
                    ppassword="alualualu",
                    pport="5435"):

    conn = None
    try:
        # connect to the PostgreSQL server
        # print("Connecting to database %s with user %s on %s:%s" %
        # (pdatabase, puser, phost, pport))
        conn = psycopg2.connect(
            host=phost,
            database=pdatabase,
            user=puser,
            password=ppassword,
            port=pport)
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    return conn

def insert_child(child):
    # insert a new vendor into the vendors table
    sql = """INSERT INTO students(id,name,date_of_birthday,email)
    VALUES(%s,%s,%s,%s);"""

    conn = open_connection()
    vendor_id = None
    try:
        # create a new cursor
        cur = conn.cursor()
        # execute the INSERT statement
        cur.execute(sql, (vendor_name,))
        # get the generated id back
        vendor_id = cur.fetchone()[0]
        # commit the changes to the database
        conn.commit()
        # close communication with the database
        cur.close()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            close_connection(conn)

    return vendor_id

def close_connection(conn):
# print("Closing connection to database %s with user %s on %s:%s" %
# (conn.info.dbname, conn.info.user, conn.info.host, conn.info.port))
    if conn is not None:
        conn.close()

path = input("Enter a path to a file: ")

f = open(path, "r")
counter = 0
for x in f:
    if counter != 0:
        data = x.split(';')
        vendor_name = data[1]
        vendor_id = insert_child(vendor_name)
        print('Inserted into Vendors: (%d,%s)' % (vendor_id, vendor_name))
    counter += 1
print('%d rows inserted totally' % (counter))
f.close()