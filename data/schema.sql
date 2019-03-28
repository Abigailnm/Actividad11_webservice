CREATE DATABASE ferreteria_nema;

CREATE DATABASE ferreteria_nema;

USE ferreteria_nema;

CREATE TABLE users(
    username varchar(20) NOT NULL PRIMARY KEY,
    password varchar(32) NOT NULL,
    privilege integer NOT NULL DEFAULT -1,
    status integer NOT NULL DEFAULT 1,
    name varchar(150) NOT NULL,
    email varchar(100) NOT NULL,
    other_data varchar(50) NOT NULL,
    user_hash varchar(32) NOT NULL,
    change_pwd integer NOT NULL DEFAULT 1,
    created timestamp NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE sessions(
    session_id char(128) UNIQUE NOT NULL,
    atime timestamp NOT NULL default current_timestamp,
    data text
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE logs( 
    id_log integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username varchar(20) NOT NULL,
    ip varchar(16) NOT NULL,
    access timestamp NOT NULL,
    FOREIGN KEY (username) REFERENCES users(username)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE clientes( 
    id_cliente integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre varchar(30) NOT NULL,
    apellido_paterno varchar(30) NOT NULL,
    apellido_materno varchar(30) NOT NULL,
    telefono  varchar(15) NOT NULL,
    email varchar(50) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO clientes(nombre, apellido_paterno, apellido_materno, telefono, email) VALUES
('abigail', 'nery', 'montes', 7751232456, 'abi345@gmail.com'),
('israel', 'merida', 'lopez', 7751092457, 'israe3908@gmail.com'),
('felix', 'gomez', 'ordaz', 7751092470, 'felix908@gmail.com');


INSERT INTO users (username, password, privilege, status, name, email, other_data, user_hash, change_pwd)
VALUES ('admin',MD5(concat('admin', 'kuorra_key')), 0, 1, 'Admin', 'admin@gmail.com','TIC:SI', MD5(concat('admin', 'kuorra_key', '2016/06/04')), 0),
('guess',MD5(concat('guess', 'kuorra_key')), 1, 1, 'Guess', 'guess@gmail.com','TIC:SI', MD5(concat('guess', 'kuorra_key','2016/06/04')), 0);


SELECT * FROM users;
SELECT * FROM sessions;

CREATE USER 'ferret'@'localhost' IDENTIFIED BY 'ferret.2019';
GRANT ALL PRIVILEGES ON ferreteria_nema.* TO 'ferret'@'localhost';
FLUSH PRIVILEGES;