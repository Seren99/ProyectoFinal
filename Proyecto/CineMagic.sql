CREATE DATABASE CineMagic;
SHOW DATABASES;
USE CineMagic; 

CREATE TABLE Usuarios
(
ID_Usuario int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nombre_Usuario VARCHAR(50),
Contraseña VARCHAR(50),
Rol VARCHAR(50)
);


CREATE TABLE Peliculas
(
ID_Pelicula int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nombre_Pelicula VARCHAR (50),
Disponibilidad VARCHAR (50)
);

CREATE TABLE Calificaciones
(
ID_Calificacion int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Calificacion INT,
FK_ID_Pelicula INT NOT NULL,
FK_ID_Usuario INT NOT NULL,
FOREIGN KEY (FK_ID_Pelicula) REFERENCES Peliculas (ID_Pelicula),
FOREIGN KEY (FK_ID_Usuario) REFERENCES Usuarios (ID_Usuario)
);
-- ddffds

CREATE TABLE Salas
(
ID_Sala int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nombre_Sala VARCHAR (50)
);

CREATE TABLE Funciones
(
ID_Funcion int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Fecha_Hora VARCHAR (50),
Funcion_Llena BOOLEAN
);

CREATE TABLE Asientos
(
ID_Asiento int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nombre_Asiento VARCHAR (50),
Ocupado BOOLEAN
);

CREATE TABLE Boletos
(
ID_Boleto int NOT NULL AUTO_INCREMENT PRIMARY KEY,
FK_ID_Sala INT NOT NULL,
FK_ID_Funcion INT NOT NULL,
FK_ID_Asiento INT NOT NULL,
FK_ID_Pelicula INT NOT NULL,
FOREIGN KEY (FK_ID_Sala) REFERENCES Salas (ID_Sala),
FOREIGN KEY (FK_ID_Funcion) REFERENCES Funciones (ID_Funcion),
FOREIGN KEY (FK_ID_Asiento) REFERENCES Asientos (ID_Asiento),
FOREIGN KEY (FK_ID_Pelicula) REFERENCES Peliculas (ID_Pelicula)
);

INSERT INTO Usuarios (Nombre_Usuario,Contraseña) 
VALUES 
("Eduardo","Edu123"),
("Jesus","Je123"),
("Enrique","Enr123");

INSERT INTO Peliculas (Nombre_Pelicula,Disponibilidad) 
VALUES 
("Regreso al Futuro","Disponible"),
("Coco","Disponible"),
("Joker","No Disponible");

INSERT INTO Asientos (Nombre_Asiento) 
VALUES 
("A1"),
("A2"),
("B1"),
("B2");

INSERT INTO Funciones (Fecha_Hora) 
VALUES 
("10/08/24, 10:00"),
("10/08/24, 16:00"),
("11/08/24, 12:00"),
("12/08/24, 20:00");

INSERT INTO Salas (Nombre_Sala) 
VALUES 
("A"),
("B"),
("C"),
("D");

ALTER TABLE Asientos ADD Ocupado BOOLEAN

SELECT * FROM Asientos;  

UPDATE Asientos SET Ocupado = FALSE WHERE ID_Asiento = 4; -- "Actualizamos la tabla con el nombre colocando en el precio el valor 6 donde el id sea igual a 2"

ALTER TABLE Funciones ADD Funcion_Llena BOOLEAN

UPDATE Funciones SET Funcion_Llena = FALSE WHERE ID_Funcion = 4; -- "Actualizamos la tabla con el nombre colocando en el precio el valor 6 donde el id sea igual a 2"

SELECT * FROM Funciones;  

ALTER TABLE Usuarios ADD Rol VARCHAR(50)

SELECT * FROM Usuarios;  

UPDATE Usuarios SET Rol = "ADMIN" WHERE ID_Usuario = 3; -- "Actualizamos la tabla con el nombre colocando en el precio el valor 6 donde el id sea igual a 2"

SELECT * FROM Peliculas; 

SELECT * FROM Salas; 