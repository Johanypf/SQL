INSERT INTO Users (

    name,
    surname,
    age,
    init_date,
    email
)
VALUES (
    'John2',
    'Doe2',
    25,
    NOW(),
    'john2.doe@example.com'
)

SELECT * FROM hello_mysql.Users;



'''
Juan, juan@email.com, 999111222
Carlos, carlos@email.com, 222
Paulina, paulina@email.com, 245322
'''


INSERT INTO usuarios(nombre,email,telefono) VALUES 
("Juan","juan@email.com","3533343"),
("Carlos","carlos@email.com","5634678"),
("Paulina","paulina@email.com","3590242");


INSERT INTO productos(nombre,precio,stock)
VALUES
("laptop",1500.65,4),("Mouse",34.45,12),("Teclado",78.98,8);

'''
Juan (id=?): total ?, fecha ?
Juan (id=?): total ?, fecha ?
Carlos (id=?): total ?, fecha ?

'''

INSERT INTO pedidos(usuario_id,total,fecha)
VALUES
(1,4500.78,NOW()),(1,340,NOW()),(2,7865.98,NOW());
