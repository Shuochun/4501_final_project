CREATE TABLE zipcodes (
	id SERIAL NOT NULL, 
	zipcode INTEGER, 
	po_name VARCHAR, 
	population FLOAT, 
	area FLOAT, 
	state VARCHAR, 
	county VARCHAR, 
	st_fips INTEGER, 
	cty_fips VARCHAR, 
	geometry geometry(POLYGON,-1), 
	PRIMARY KEY (id)
);

CREATE TABLE complaints (
	id SERIAL NOT NULL, 
	created_date DATE, 
	descriptor VARCHAR, 
	complaint_type VARCHAR, 
	zipcode INTEGER, 
	geometry geometry(POINT,-1), 
	PRIMARY KEY (id)
);

CREATE TABLE trees (
	id SERIAL NOT NULL, 
	spc_common VARCHAR, 
	spc_latin VARCHAR, 
	health VARCHAR, 
	status VARCHAR, 
	zipcode INTEGER, 
	geometry geometry(POINT,-1), 
	PRIMARY KEY (id)
);

CREATE TABLE houses (
	id SERIAL NOT NULL, 
	house_id INTEGER, 
	zipcode INTEGER, 
	date DATE, 
	price FLOAT, 
	PRIMARY KEY (id)
);

