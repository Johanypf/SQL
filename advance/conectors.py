import pymysql


connection = pymysql.connect(
    host="127.0.0.1",
    user="root",
    password="root1234",
    database="hello_mysql",
    port=3306,
    ssl={"ssl": {}}   # Clever-Cloud requiere SSL
)


cursor = connection.cursor()

query = "SELECT * FROM Users"
cursor.execute(query)
result = cursor.fetchall()

for row in result:
    print(row)

cursor.close()
connection.close()