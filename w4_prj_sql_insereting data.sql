--add data into customer table 
SELECT add_customer(1,'John', 'Adams','444-444-4444 002 07/26', ' 7315 Columbia RD, Olmstead Township, OH');
SELECT add_customer(2, 'Andrew', 'Jackson', '445-443-4455 007 06/45', '4580 Rachels LN, Nashville, TN');
SELECT add_customer(3, 'Theodore', 'Roosevelt','446-442-4466 026 01/19', '20 Sagamore Hill Road, Oyster Bay, NY');
SELECT add_customer(4, 'Dave', 'Grohl','321-456-1987 014 1/69','5555 Tinseltown RD, Los Angeles, CA');
SELECT add_customer(5, 'Taylor', 'Hawkins', '456-123-7891 017 02/72', '5554 Tinseltown RD, Los Angeles, CA');

SELECT *
FROM customer

--add data into c_car
select add_c_car(1,'Bmw','m5',2020,'Grey',40000 ,4);
SELECT add_c_car(2, 'Ford', 'F100',1980 ,'Red', 150000,3);
SELECT *
FROM c_car

--Add data into dealer
SELECT add_dealer_car(1,'Dodge','Challenger SRT Hell Cat',2021,'Black',79860, 'New');
SELECT add_dealer_car(2,'Porsche', '911 GT3 RS', 2019, 'Yellow',188550,'Used');
SELECT add_dealer_car(3,'Lincon','Continental',1967,'white',50000,'Used');
SELECT add_dealer_car(4,'Ford','Bronco',1980,'Red',15000,'Used');
SELECT add_dealer_car(5,'Jeep','Wrangler',2021,'Tan',25000,'New');

SELECT*
FROM dealer_car

--Add mechanics
SELECT add_mechanic(1,'Joe', 'Snooze');
SELECT add_mechanic(2,'Dominic','Toretto');
SELECT add_mechanic(3, 'Chim','Chim');
SELECT add_mechanic(4, 'Tony','The Mechanic');

SELECT*
FROM mechanic

--Add sales_persons
SELECT add_sales_person(1,'Al','Bundy');
SELECT add_sales_person(2, 'Jim','Halpert');
SELECT add_sales_person(3,'Harry','Wormwood');
SELECT add_sales_person(4,'Bobby','B');
SELECT add_sales_person(5,'Joey','Obrien');

SELECT*
FROM sales_person

--Add data to parts table
SELECT add_parts(1, 'Alternator', 80.99);
SELECT add_parts(2, 'Fan Belt', 19.00);
SELECT add_parts(3, 'Spark Plug', 4.99);
SELECT add_parts(4, 'Oil Filter', 20.75);
SELECT add_parts(5,'Air Filter', 15.90);
SELECT add_parts(6, 'Transmission Filter', 25.50);
SELECT add_parts(7, 'Transmission Gasket', 5.99);
SELECT add_parts(8, 'Good Year Tire', 89.99);

SELECT *
FROM parts

--ADD data to invoice table 
SELECT add_invoice(1,'4/11/2021',2,2,2); 
SELECT add_invoice(2,'1/20/2021',2,1,2);
SELECT add_invoice(3,'4/11/2021',4,4,5);
SELECT add_invoice(4,'4/01/2021',3,3,1);
SELECT add_invoice(5,'2/20/2021',4,5,4);

SELECT *
FROM invoice

--ADD data to service_table
SELECT add_service_table(1,'Oil Change', 60, 'Complete','5/15/20',2,1,4);
SELECT add_service_table(2, 'tire change', 180, 'Complete','4/21/20',1,3,8);

select *
FROM  service_table