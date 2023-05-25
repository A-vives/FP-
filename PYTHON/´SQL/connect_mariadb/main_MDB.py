# source: https://mariadb.com/resources/blog/how-to-connect-python-programs-to-mariadb/
import mariadb


def open_connection(
    phost="localhost",
    pdatabase="samplecompany",
    puser="root",
    ppassword="alualualu",
    pport=3306,
):
    conn = None
    try:
        # connect to the PostgreSQL server
        print(
            "Connecting to database %s with user %s on %s:%s"
            % (pdatabase, puser, phost, pport)
        )
        conn = mariadb.connect(
            host=phost, database=pdatabase, user=puser, password=ppassword, port=pport
        )
        # Disable Auto-Commit
        conn.autocommit = False
    except (Exception, mariadb.DatabaseError) as error:
        print(error)
    return conn


def close_connection(conn):
    print(
        "Closing connection to database %s with user %s on %s:%s"
        % (conn.database, conn.user, conn.server_name, conn.server_port)
    )
    if conn is not None:
        conn.close()


# source: https://mariadb.com/resources/blog/how-to-connect-python-programs-to-mariadb/
def create_tables():
    # create tables in the PostgreSQL database
    commands = [
        """ DROP TABLE IF EXISTS vendor_parts """,
        """ DROP TABLE IF EXISTS vendors """,
        """ DROP TABLE IF EXISTS part_drawings """,
        """ DROP TABLE IF EXISTS parts """,
        """ CREATE TABLE vendors (
           vendor_id INT AUTO_INCREMENT PRIMARY KEY,
           vendor_name VARCHAR(255) NOT NULL
       )
       """,
        """ CREATE TABLE parts (
               part_id INT AUTO_INCREMENT PRIMARY KEY,
               part_name VARCHAR(255) NOT NULL
               )
       """,
        """
       CREATE TABLE part_drawings (
               part_id INT PRIMARY KEY,
               file_extension VARCHAR(5) NOT NULL,
               drawing_data BLOB NOT NULL,
               FOREIGN KEY (part_id)
               REFERENCES parts (part_id)
               ON UPDATE CASCADE ON DELETE CASCADE
       )
       """,
        """
       CREATE TABLE vendor_parts (
               vendor_id INT NOT NULL,
               part_id INT NOT NULL,
               PRIMARY KEY (vendor_id , part_id),
               FOREIGN KEY (vendor_id)
                   REFERENCES vendors (vendor_id)
                   ON UPDATE CASCADE ON DELETE CASCADE,
               FOREIGN KEY (part_id)
                   REFERENCES parts (part_id)
                   ON UPDATE CASCADE ON DELETE CASCADE
       )
       """,
    ]
    conn = open_connection()
    try:
        cur = conn.cursor()
        # create table one by one
        for command in commands:
            cur.execute(command)
        # close communication with the PostgreSQL database server
        cur.close()
        # commit the changes
        conn.commit()
    except (Exception, mariadb.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            close_connection(conn)


# source: https://mariadb.com/resources/blog/how-to-connect-python-programs-to-mariadb/
def insert_vendor(vendor_name):
    # insert a new vendor into the vendors table
    sql = """INSERT INTO vendors(vendor_name)
            VALUES(?) RETURNING vendor_id;"""
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
    except (Exception, mariadb.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            close_connection(conn)

    return vendor_id


def insert_vendor_list(vendor_list):
    # insert multiple vendors into the vendors table
    sql = "INSERT INTO vendors(vendor_name) VALUES(?)"
    conn = open_connection()
    try:
        # create a new cursor
        cur = conn.cursor()
        # execute the INSERT statement
        cur.executemany(sql, vendor_list)
        # commit the changes to the database
        conn.commit()
        # close communication with the database
        cur.close()
    except (Exception, mariadb.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            close_connection(conn)


# source: https://mariadb.com/resources/blog/how-to-connect-python-programs-to-mariadb/
def update_vendor(vendor_id, vendor_name):
    # update vendor name based on the vendor id
    sql = """ UPDATE vendors
               SET vendor_name = ?
               WHERE vendor_id = ?"""
    conn = open_connection()
    updated_rows = 0
    try:
        # create a new cursor
        cur = conn.cursor()
        # execute the UPDATE  statement
        cur.execute(sql, (vendor_name, vendor_id))
        # get the number of updated rows
        updated_rows = cur.rowcount
        # Commit the changes to the database
        conn.commit()
        # Close communication with the PostgreSQL database
        cur.close()
    except (Exception, mariadb.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            close_connection(conn)

    return updated_rows


# source: https://mariadb.com/resources/blog/how-to-connect-python-programs-to-mariadb/
def delete_vendor(vendor_id):
    # delete vendor based on the vendor id
    sql = """ DELETE FROM vendors
               WHERE vendor_id = ?"""
    conn = open_connection()
    deleted_rows = 0
    try:
        # create a new cursor
        cur = conn.cursor()
        # execute the DELETE  statement
        cur.execute(sql, (vendor_id,))
        # get the number of deleted rows
        deleted_rows = cur.rowcount
        # Commit the changes to the database
        conn.commit()
        # Close communication with the PostgreSQL database
        cur.close()
    except (Exception, mariadb.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            close_connection(conn)

    return deleted_rows

    # source: https://mariadb.com/resources/blog/how-to-connect-python-programs-to-mariadb/


def select_vendor(vendor_id=""):
    # select vendor based on the vendor id
    if vendor_id != "":
        sql = """ SELECT * FROM vendors
                   WHERE vendor_id = ?"""
    else:
        sql = """ SELECT * FROM vendors"""
    conn = open_connection()
    # selected_rows = 0
    try:
        # create a new cursor
        cur = conn.cursor()
        # execute the SELECT statement
        if vendor_id != "":
            cur.execute(sql, (vendor_id,))
        else:
            cur.execute(sql)
        # get the number of deleted rows
        # selected_rows = cur.rowcount
        if vendor_id != "":
            cur.execute(sql, (vendor_id,))
        else:
            cur.execute(sql)
        # There is also a method fetchmany
        # https://www.postgresqltutorial.com/postgresql-python/query/
        if vendor_id != "":
            rows = cur.fetchone()
        else:
            rows = cur.fetchall()

        # Close communication with the PostgreSQL database
        cur.close()
    except (Exception, mariadb.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            close_connection(conn)

    return rows


if __name__ == "__main__":
    create_tables()
    # insert one vendor
    insert_vendor("3M Co.")
    # insert multiple vendors
    insert_vendor_list(
        [
            ("AKM Semiconductor Inc.",),
            ("Asahi Glass Co Ltd.",),
            ("Daikin Industries Ltd.",),
            ("Dynacast International Inc.",),
            ("Foster Electric Co. Ltd.",),
            ("Murata Manufacturing Co. Ltd.",),
        ]
    )
    print(update_vendor(1, "3M Corp"))
    print(delete_vendor(2))

    retrieved_rows = select_vendor()
    for row in retrieved_rows:
        print(row[0])
        print(row[1])
        print(row)

    retrieved_rows = select_vendor("1")
    print(retrieved_rows)