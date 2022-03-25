CREATE DATABASE it_slovnik;

USE it_slovnik;

CREATE TABLE slova (
slova_ID SERIAL,
vyraz VARCHAR(50),
vysvetlenie1 VARCHAR(50),
popis VARCHAR(255),
id_pouzitia  INT,
PRIMARY KEY (slova_ID)
);

CREATE TABLE pouzitie (
id_pouzitia SERIAL,
oblast_pouzitia VARCHAR(20),
PRIMARY KEY (id_pouzitia)
);

ALTER TABLE slova
ADD FOREIGN KEY (id_pouzitia) 
REFERENCES pouzitie(id_pouzitia) 
ON DELETE SET NULL;

INSERT INTO pouzitie (oblast_pouzitia) VALUES('IT');
INSERT INTO pouzitie (oblast_pouzitia) VALUES('manažment');
INSERT INTO pouzitie (oblast_pouzitia) VALUES('marketing');
