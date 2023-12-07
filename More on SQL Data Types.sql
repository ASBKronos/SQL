CREATE DATABASE IF NOT EXISTS datatypes;
USE datatypes;

DROP TABLE IF EXISTS people;

CREATE TABLE people (
	name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME,
    balance1 FLOAT,
    balance2 DECIMAL(5,2),
    balance3 DOUBLE
);
 
INSERT INTO people (name, birthdate, birthtime, birthdt, balance1, balance2, balance3)
VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00', 123456789.123456789,789.12,123456789.123456789);
 
INSERT INTO people (name, birthdate, birthtime, birthdt, balance1, balance2, balance3)
VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10',8765432.765432,432.72,8765432.765432);
 
INSERT INTO people (name, birthdate, birthtime, birthdt, balance1, balance2, balance3)
VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00',11765432.123456789,112.12,11765432.123456789);

SELECT * FROM people;

-- Date and Time Functions 

SELECT CURDATE();
SELECT CURTIME();

-- The two below work the exact same way. Only range of date changes and size in memory. 
SELECT NOW();
SELECT CURRENT_TIMESTAMP();

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Hazel', CURDATE(), CURTIME(), NOW());

-- Month Year and Day Names

SELECT 
    birthdate,
    DAY(birthdate),
    DAYOFWEEK(birthdate),
    DAYOFYEAR(birthdate)
FROM people;
 
SELECT 
    birthdate,
    MONTHNAME(birthdate),
    YEAR(birthdate)
FROM people; 

SELECT 
    birthtime,
    HOUR(birthtime),
    MINUTE(birthtime)
FROM people;
 
SELECT 
    birthdt,
    MONTH(birthdt),
    DAY(birthdt),
    HOUR(birthdt),
    MINUTE(birthdt)
FROM people;

-- Date Format Function

SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people;
 
SELECT birthdt, DATE_FORMAT(birthdt, '%H:%i') FROM people;
 
SELECT birthdt, DATE_FORMAT(birthdt, 'BORN ON: %r') FROM people;

-- Timetamp datetime format

CREATE TABLE captions (
  text VARCHAR(150),
  created_at TIMESTAMP default CURRENT_TIMESTAMP
);
 
CREATE TABLE captions2 (
  text VARCHAR(150),
  created_at TIMESTAMP default CURRENT_TIMESTAMP,
  updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Excercises on Datatypes:
-- What's a good use case for CHAR?
-- Used for text that we know has a fixed length, e.g., State abbreviations, 
-- abbreviated company names, etc.
 
CREATE TABLE inventory (
    item_name VARCHAR(100),
    price DECIMAL(8,2),
    quantity INT
);
 
-- What's the difference between DATETIME and TIMESTAMP?
 
-- They both store datetime information, but there's a difference in the range, 
-- TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
-- TIMESTAMP is used for things like meta-data about when something is created
-- or updated.
 
 
SELECT CURTIME();
 
SELECT CURDATE();
 
SELECT DAYOFWEEK(CURDATE());
SELECT DAYOFWEEK(NOW());
SELECT DATE_FORMAT(NOW(), '%w') + 1;
 
SELECT DAYNAME(NOW());
SELECT DATE_FORMAT(NOW(), '%W');
 
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
 
SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');
 
CREATE TABLE tweets(
    content VARCHAR(140),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);
 
INSERT INTO tweets (content, username) VALUES('this is my first tweet', 'coltscat');
SELECT * FROM tweets;
 
INSERT INTO tweets (content, username) VALUES('this is my second tweet', 'coltscat');
SELECT * FROM tweets;
