create database shirts_db;
use shirts_db;
CREATE TABLE shirts
  (
    shirt_id INT AUTO_INCREMENT,
    article VARCHAR(100),
    color VARCHAR(100),
    shirt_size char(3),
    last_worn SMALLINT,
    PRIMARY KEY(shirt_id)
  );
  
insert into shirts(article, color, shirt_size, last_worn)
values ('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('polo shirt','purple', 'M', 50);

SELECT * FROM shirts WHERE shirt_size = 'M';

SELECT article, color, shirt_size as size, last_worn FROM shirts WHERE  shirt_size = 'M';

update shirts
set shirt_size = 'L'
where article = 'polo shirt';

select * from shirts where article = 'polo shirt';

UPDATE shirts 
SET last_worn = 0
WHERE last_worn = 15;
    
    
UPDATE shirts 
SET color = 'off white', shirt_size = 'XS'
WHERE color = 'white';

SELECT * FROM shirts WHERE last_worn=200;
 
DELETE FROM shirts WHERE last_worn=200;
 
 
SELECT * FROM shirts WHERE article='tank top';
 
DELETE FROM shirts WHERE article='tank top';
 
SELECT * FROM shirts;

DELETE FROM shirts;
 
DROP TABLE shirts;

show tables;
 
DESC shirts;