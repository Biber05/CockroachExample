USE defaultdb;

DROP DATABASE IF EXISTS tours CASCADE;

CREATE DATABASE tours;
USE tours;

SET DATABASE = tours;

CREATE TABLE ships(name string NOT NULL , capacity INT NOT NULL, location string NOT NULL, PRIMARY KEY (location, name));
CREATE TABLE routes(routeno INT PRIMARY KEY NOT NULL , start String NOT NULL, destination String NOT NULL);
CREATE TABLE tours(route INT NOT NULL REFERENCES Routes (routeno), ship String NOT NULL, location String NOT NULL, FOREIGN KEY (location, ship) REFERENCES Ships, PRIMARY KEY (route, ship));

INSERT INTO ships (name, capacity, location) values ('MS Günther', 42, 'EAST');
INSERT INTO ships (name, capacity, location) values ('USS Enterprise', 4711, 'WEST');
INSERT INTO ships (name, capacity, location) values ('AIDA Luna', 1337, 'EAST');

INSERT INTO routes (routeno, start, destination) values (1, 'Hamburg', 'Barcelona');
INSERT INTO routes (routeno, start, destination) values (2, 'Barcelona', 'Hamburg');
INSERT INTO routes (routeno, start, destination) values (3, 'Lissabon', ' Marseille');
INSERT INTO routes (routeno, start, destination) values (4, 'Marseille', 'Lissabon');
INSERT INTO routes (routeno, start, destination) values (5, 'Miami', 'Havanna');
INSERT INTO routes (routeno, start, destination) values (6, 'Havanna', 'Miami');

INSERT INTO tours (route, ship, location) values (1, 'MS Günther', 'EAST');
INSERT INTO tours (route, ship, location) values (2, 'MS Günther', 'EAST');
INSERT INTO tours (route, ship, location) values (3, 'MS Günther', 'EAST');
INSERT INTO tours (route, ship, location) values (4, 'MS Günther', 'EAST');
INSERT INTO tours (route, ship, location) values (1, 'AIDA Luna', 'EAST');
INSERT INTO tours (route, ship, location) values (2, 'AIDA Luna', 'EAST');
INSERT INTO tours (route, ship, location) values (3, 'AIDA Luna', 'EAST');
INSERT INTO tours (route, ship, location) values (4, 'AIDA Luna', 'EAST');
INSERT INTO tours (route, ship, location) values (5, 'USS Enterprise', 'WEST');
INSERT INTO tours (route, ship, location) values (6, 'USS Enterprise', 'WEST');