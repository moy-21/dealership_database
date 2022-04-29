INSERT INTO seller(first_name,last_name, phone) VALUES
('Aaron', 'Renteria', '7088888888');

INSERT INTO customer (first_name,last_name, phone, email) VALUES
('Kevin','Squarepants', '7088888888', 'kevin@squarepants.com'),
('Shoha','Roundpants', '7088888888', 'shoha@roundpants.com'),
('Lil','Durk', '7088888888', 'durkio@email.com'),
('John','Smith', '7088888888', 'john@email.com'),
('Sharon','Squarepants', '7088888888', 'sharon@squarepants.com');


INSERT INTO sales_car (price, year_, make, model, trim_, engine, description_) VALUES
(70000, '2020', 'Toyota', 'Supra', 'Sport', '2.0L', 'NEW TO THE LOT FULL PACKAGE WITH SUROOF CHECK IT OUT ANYTIME OR CALL TO NEGOTIATE'),
(40000, '2022', 'Toyota', 'Corolla GR', 'Carbon', '1.8L', 'NEW TO THE LOT FULL PACKAGE WITH SUROOF CHECK IT OUT ANYTIME OR CALL TO NEGOTIATE'),
(80000, '2022', 'BMW', '3 Series', 'Sport', '6.0L', 'NEW TO THE LOT FULL PACKAGE WITH SUROOF CHECK IT OUT ANYTIME OR CALL TO NEGOTIATE'),
(110000, '2022', 'Corvette', 'Stingray', 'Track Edition', '7.0L', 'NEW TO THE LOT FULL PACKAGE WITH SUROOF CHECK IT OUT ANYTIME OR CALL TO NEGOTIATE'),
(25000, '2022', 'Toyota', 'Corolla', 'SE', '2.0L', 'NEW TO THE LOT FULL PACKAGE WITH SUROOF CHECK IT OUT ANYTIME OR CALL TO NEGOTIATE');

INSERT INTO customer_car(vin_num, year_, make, model, trim_, engine) VALUES
('234GU74924Y','2020','Toyota', 'Camry', 'SE', '5.2L'),
('J344GU74931','2018','Toyota', 'Corolla', 'SE', '2L'),
('KYTGU749121','2010','BMW', 'M3','SE', '6.0L'),
('YHUGU74924Y','2010','Chevy', 'Camaro', 'Base', '1.0L'),
('90IGU74924Y','2022','Toyota', 'Supra', 'Sport', '5.2L');

INSERT INTO service_shop(price, service_, description_) VALUES
(150.00, 'Oil change and Tire Rotation', 'Oil change with fully synthetic oil of oem factory specs, and tire roation and inspection'),
(508.00, 'Brake change', 'Disk and pads replacement as well as brake fluid change'),
(1100.00, 'Transmission Replacement', 'Transmission replacent excluding parts costs'),
(10.00, 'Tire inspection and flat repair', 'Non side wall tire repair and inspection'),
(250.00, 'Remote Starter Install', 'Remote starter oem from factory');

INSERT INTO mechanics(first_name, last_name, phone, background) VALUES 
('Frank', 'Montez', '7088888888', 'Graduated from the school UTI and graduated from highschool'),
('Moises', 'Renteria', '7088888888', 'Worked at several shops prior, experinced with Toyoytas most'),
('Noe', 'Rivera', '7088888888', 'Worked for Mercedes for 5 years in Texas very experienced'),
('Albert', 'Estrada', '9088888888', 'Owned his own shop with his emplyees and has manager and owner experinece'),
('Juan', 'Diaz', '7088888888', 'Atteneded and graduated highschool rookie in the field but great worth ethic');

INSERT INTO inventory(sales_car_id, availability_) VALUES
(1,'For Sale'),
(2,'For Sale'),
(3,'Sold'),
(4,'For Sale'),
(5,'For Sale');

INSERT INTO sales_invoice(seller_id, customer_id, sales_car_id) VALUES
(1, 1, 2),
(1, 3, 3),
(1, 4, 1),
(1, 2, 4),
(1, 1, 5);

INSERT INTO service_invoice(service_id, customer_id, vin_num, mech_id, description_) VALUES
(1,1,'J344GU74931', 2, 'Mr.Squarepants got full oil change and tire rotation'),
(1,2,'KYTGU749121', 3, 'Shoha received oil change and tire rotation'),
(2,1,'J344GU74931', 2, 'Mr.Squarepants got full brake change'),
(3,3,'YHUGU74924Y', 1, 'Mr.Durk got transmission replacement done in 2 weeks no problems'),
(4,4,'234GU74924Y', 5, 'Mr.Smith got flat repair and inspecion'),
(5,5,'90IGU74924Y', 4, 'Mrs.Squarepants got remote starter installed');


INSERT INTO service_history(service_invoice_id, vin_num) VALUES
(1,'J344GU74931'),
(2,'KYTGU749121'),
(3,'J344GU74931'),
(4,'YHUGU74924Y'),
(5,'234GU74924Y'),
(6,'90IGU74924Y');











