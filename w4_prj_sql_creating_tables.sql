CREATE TABLE c_car (
  car_id SERIAL PRIMARY KEY 
  make  VARCHAR(100),
  model VARCHAR(100),
  year_of INTEGER,
  color VARCHAR(100),
  mileage INTEGER,
  customer_id INTEGER
 );
	
--CREATE customer table	
CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name  VARCHAR(100),
  billing_info VARCHAR(150),
  address    VARCHAR(150)
);

--CREATE dealer_car table
CREATE TABLE dealer_car(
  dealer_id SERIAL PRIMARY KEY, 
  make 	  VARCHAR(100),
  model   VARCHAR(100),
  year_of INTEGER,
  color   VARCHAR(100),
  price   NUMERIC(8,2),
  status  VARCHAR(15)
);

--CREATE invoice table 	
CREATE TABLE invoice (
  invoice_id  SERIAL PRIMARY KEY, 
  date        DATE(CURRENT DATE),
  sales_id    INTEGER,
  dealer_id   INTEGER,
  customer_id INTEGER

);

--CREATE mechanic table
CREATE TABLE mechanic (
  mechanic_id SERIAL PRIMARY KEY,
  first_name  VARCHAR(100),
  last_name   VARCHAR(100)
);

--CREATE parts table 
CREATE TABLE parts (
  parts_id   SERIAL PRIMARY KEY,
  part_name  VARCHAR(150),
  cost NUMERIC(6,2)
);	


-- CREATE sales_person table
CREATE TABLE sales_person (
  sales_id 	 SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name  VARCHAR(100)
);	
	

--CREATE serivec_table...table	
CREATE TABLE service_table (
  service_id 	SERIAL PRIMARY KEY
  service_cost 	NUMERIC(6,2),
  status 		VARCHAR(100),
  date 			DATE(CURRENT DATE),
  car_id 		INTEGER,
  mechanic_id 	INTEGER,
  parts_id 		INTEGER
);

