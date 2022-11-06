DROP TABLE Wine_DB
-- Original csv file database table
CREATE TABLE Wine_DB (
	country varchar ,
	description text  ,
	points int ,
	price float  ,
 	variety varchar  );

SELECT * FROM wine_db;
DROP TABLE json_db;
-- Create table with json csv
CREATE TABLE json_db (
	points int,
	title varchar,
	description text,
	price float,
	variety varchar,
	country varchar
);

SELECT * FROM json_db;

-- right join on variety and country 
SELECT j.title,
	w.description,
	w.points,
	w.price
FROM json_db AS j
INNER JOIN wine_db AS w
ON w.variety=j.variety AND w.country=j.country;
