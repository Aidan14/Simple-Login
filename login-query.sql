DROP DATABASE IF EXISTS loginDB;
CREATE DATABASE loginDB;

USE loginDB;

CREATE TABLE users(
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    username NVARCHAR(50),
    pass NVARCHAR(50),
    rol NVARCHAR(50),
    email NVARCHAR(200)
);

CREATE TABLE subsidiary(
    id_subsidiary INT PRIMARY KEY AUTO_INCREMENT,
    subsidiary_name NVARCHAR(50),
    contact NVARCHAR(50),
    subsidiary_address NVARCHAR(200),
    phone NVARCHAR(50),
    email NVARCHAR(200)
);

CREATE TABLE access(
    id_access INT PRIMARY KEY AUTO_INCREMENT,
    id_user INT,
    id_subsidiary INT,
    FOREIGN KEY (id_user) REFERENCES users(id_usuario),
    FOREIGN KEY (id_subsidiary) REFERENCES subsidiary(id_subsidiary)
);

INSERT INTO users VALUES (NULL, 'admin', 'admin', 'admin', 'aidanpereyrawagner@gmail.com');
INSERT INTO users VALUES (NULL, 'user', 'user', 'user', 'aidanpereyra14@gmail.com');
INSERT INTO subsidiary VALUES (NULL, 'Subsidiary 1', 'contact', 'address', 'phone', 'email');
INSERT INTO subsidiary VALUES (NULL, 'Subsidiary 2', 'contact', 'address', 'phone', 'email');
INSERT INTO access VALUES (NULL, 1, 1);
INSERT INTO access VALUES (NULL, 1, 2);