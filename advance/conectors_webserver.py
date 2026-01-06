import pymysql



config= {
  "host":"bh9keqzq2so2mfh1uvbw-mysql.services.clever-cloud.com",
  "port":"3306",
  "database":"bh9keqzq2so2mfh1uvbw",
  "user":"ukrcqogt7fhf9plf",
  "password":"kULzWbhvHhVqLAbrsDFP"
}

connection = pymysql.connect(
    host=config["host"],
    user=config["user"],
    password=config["password"],
    database=config["database"],
    port=int(config["port"]),
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