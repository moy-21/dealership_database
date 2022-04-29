DROP TABLE IF EXISTS seller CASCADE;
CREATE TABLE seller(
    seller_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(13)
);


DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(13),
    email VARCHAR(100)
);

DROP TABLE IF EXISTS sales_car CASCADE;
CREATE TABLE sales_car(
    sales_car_id SERIAL PRIMARY KEY,
    price INTEGER,
    year_ VARCHAR(4),
    make VARCHAR(50),
    model VARCHAR(50),
    trim_ VARCHAR(50),
    engine VARCHAR(20),
    description_ text
);

DROP TABLE IF EXISTS customer_car CASCADE;
CREATE TABLE customer_car(
    customer_car_id SERIAL,
    vin_num VARCHAR(11) NOT NULL UNIQUE,
    PRIMARY KEY (customer_car_id, vin_num),
    year_ VARCHAR(4),
    make VARCHAR(50),
    model VARCHAR(50),
    trim_ VARCHAR(50),
    engine VARCHAR(20)
);

DROP TABLE IF EXISTS service_shop CASCADE;
CREATE TABLE service_shop(
    service_id SERIAL PRIMARY KEY,
    price DECIMAL(10,2) NOT NULL,
    service_ VARCHAR(50),
    description_ text

);

DROP TABLE IF EXISTS mechanics CASCADE;
CREATE TABLE mechanics(
    mech_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(13),
    background text
);

DROP TABLE IF EXISTS inventory CASCADE;
CREATE TABLE inventory(
    inventory_id SERIAL PRIMARY KEY,
    sales_car_id INTEGER NOT NULL UNIQUE,
    availability_ VARCHAR(10),
    FOREIGN KEY (sales_car_id) REFERENCES sales_car(sales_car_id)
);


DROP TABLE IF EXISTS sales_invoice CASCADE;
CREATE TABLE sales_invoice(
    sales_inv_id SERIAL PRIMARY KEY,
    seller_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    sales_car_id INTEGER NOT NULL,
    date_of_invoice TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc',now()),
    FOREIGN KEY (sales_car_id) REFERENCES sales_car(sales_car_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (seller_id) REFERENCES seller(seller_id)

);

DROP TABLE IF EXISTS service_invoice CASCADE;
CREATE TABLE service_invoice(
    service_invoice_id SERIAL PRIMARY KEY,
    service_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    vin_num VARCHAR(20) NOT NULL,
    mech_id INTEGER NOT NULL,
    description_ text,
    date_of_invoice TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc',now()),
    FOREIGN KEY (vin_num) REFERENCES customer_car(vin_num),
    FOREIGN KEY (service_id) REFERENCES service_shop(service_id),
    FOREIGN KEY (mech_id) REFERENCES mechanics(mech_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)

);

DROP TABLE IF EXISTS service_history CASCADE;
CREATE TABLE service_history(
    service_invoice_id INTEGER NOT NULL,
    date_of_invoice TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc',now()),
    vin_num VARCHAR(50),
    FOREIGN KEY (vin_num) REFERENCES customer_car(vin_num)
);
