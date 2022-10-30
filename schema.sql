DROP TABLE Wine_DB
-- Original csv file database table
CREATE TABLE Wine_DB (
	country varchar NOT NULL,
	description text NOT NULL,
	designation varchar,
	points int NOT NULL,
	price float NOT NULL ,
	province varchar,
	region_1 varchar,
	region_2 varchar, 
	variety varchar NOT NULL,
	winery varchar

);

SELECT * FROM wine_db;

-- create  new table with only country, points and variety 
SELECT country, points, variety
FROM Wine_DB
INTO Country_of_Origin ;

-- Create new table with only price, points, and variety
SELECT price, points, variety
FROM Wine_DB
INTO Wine_Price ;

-- Create new table with only description, points, and variety
SELECT description, points, variety
FROM Wine_DB
INTO Country_of_Origin ;
