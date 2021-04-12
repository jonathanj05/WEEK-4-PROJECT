--CREATING ADD FUNCTION for tables

--CREATE ADD FUCNTION for c_car
CREATE OR REPLACE FUNCTION add_c_car(_car_id INTEGER, _make VARCHAR, _model VARCHAR, _year_of INTEGER, _color VARCHAR, _mileage INTEGER, _customer_id INTEGER)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO c_car(car_id,make,model,year_of,color, mileage,customer_id)
	VALUES(_car_id, _make, _model, _year_of, _color, _mileage, _customer_id);
END;
$MAIN$
LANGUAGE plpgsql;


-- CREATE ADD FUNCTION for add customer
CREATE OR REPLACE FUNCTION add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _billing_info VARCHAR, _address VARCHAR)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO customer(customer_id,first_name,last_name,billing_info,address)
	VALUES(_customer_id, _first_name, _last_name, _billing_info, _address);
END;
$MAIN$
LANGUAGE plpgsql;

--CREATING ADD FUCNTION for dealer
CREATE OR REPLACE FUNCTION add_dealer_car(_dealer_id INTEGER, _make VARCHAR, _model VARCHAR, _year_of INTEGER, _color VARCHAR, _price NUMERIC, _status VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO dealer_car(dealer_id,make,model,year_of,color, price, status)
	VALUES(_dealer_id, _make, _model, _year_of, _color, _price, _status);
END;
$MAIN$
LANGUAGE plpgsql;

--CREATING ADD FUCNTION for invoice
CREATE OR REPLACE FUNCTION add_invoice(_invoice_id INTEGER, _date DATE, _sales_id INTEGER, _dealer_id INTEGER, _customer_id INTEGER)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO invoice(invoice_id, date, sales_id, dealer_id, customer_id)
	VALUES(_invoice_id, _date, _sales_id, _dealer_id, _customer_id);
END;
$MAIN$
LANGUAGE plpgsql;

--CREATE ADD FUNCTION for mechanic
CREATE OR REPLACE FUNCTION add_mechanic(_mechanic_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO mechanic(mechanic_id,first_name,last_name)
	VALUES(_mechanic_id, _first_name, _last_name);
END;
$MAIN$
LANGUAGE plpgsql;

--CREATE ADD FUNCTION for parts 
CREATE OR REPLACE FUNCTION add_parts(_parts_id INTEGER, _part_name VARCHAR, _cost NUMERIC)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO parts(parts_id,part_name,cost)
	VALUES(_parts_id, _part_name, _cost);
END;
$MAIN$
LANGUAGE plpgsql;

--CREAT ADD FUNCTION for sales_person
CREATE OR REPLACE FUNCTION add_sales_person(_sales_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO sales_person(sales_id,first_name,last_name)
	VALUES(_sales_id, _first_name, _last_name);
END;
$MAIN$
LANGUAGE plpgsql;

--CREATE ADD FUNCTION for service_table
CREATE OR REPLACE FUNCTION add_service_table(_service_id INTEGER,_service_type VARCHAR,_service_cost NUMERIC,_status VARCHAR,_date DATE,_car_id INTEGER,_mechanic_id INTEGER,_parts_id INTEGER)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO service_table(service_id,service_type,service_cost,status,date,car_id,mechanic_id,parts_id)
	VALUES(_service_id,_service_type,_service_cost,_status,_date,_car_id,_mechanic_id,_parts_id);
END;
$MAIN$
LANGUAGE plpgsql;