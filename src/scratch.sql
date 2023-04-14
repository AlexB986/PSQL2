create TABLE scypro
(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
    gender VARCHAR (6) NOT NULL,
    age INT NOT NULL

);



INSERT INTO scypro(first_name, last_name, gender, age) VALUES('Alex','Morph','m',30);
INSERT INTO scypro(first_name,last_name,gender,age) VALUES ('Lisa','Simpson','w',29);
INSERT INTO scypro(first_name,last_name,gender,age) VALUES ('Eric','Cartman','m',11);
INSERT INTO scypro(first_name,last_name,gender,age) VALUES ('Tiest','Fiesto','m',25);
INSERT INTO scypro(first_name,last_name,gender,age) VALUES ('Anna','Smith','w',50);

SELECT * FROM scypro;

SELECT first_name AS Имя,last_name AS Фамилия FROM scypro;

SELECT * FROM scypro WHERE age < 30 OR age > 50;

SELECT * FROM scypro WHERE age BETWEEN 30 AND 50;


SELECT last_name AS Фамилия FROM scypro ORDER BY last_name DESC;
SELECT * FROM scypro WHERE LENGHT(first_name) >4;

UPDATE scypro SET first_name = 'Alex' WHERE id = 3;
UPDATE scypro SET first_name = 'Alex' WHERE id = 4;

SELECT first_name AS имя ,SUM(age) AS суммарный_возраст  FROM scypro GROUP BY имя;
--
SELECT first_name AS  имя, MAX(age) AS max  FROM scypro GROUP BY first_name HAVING COUNT(first_name)>2;
