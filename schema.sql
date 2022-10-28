CREATE TABLE Country_of_Origin (
	variety varchar ,
	country varchar ,
	points int,
	PRIMARY KEY (variety)
);

CREATE TABLE Wine_Price (
	variety varchar,
	price int,
	points int,
	PRIMARY KEY (variety)
);

CREATE TABLE Wine_Description (
	variety varchar,
	description varchar,
	points int,
	PRIMARY KEY (variety)
);