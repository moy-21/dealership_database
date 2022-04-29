CREATE OR REPLACE FUNCTION add_car(
    price INTEGER,
    year_ VARCHAR,
    make VARCHAR,
    model VARCHAR,
    trim_ VARCHAR,
    engine VARCHAR,
    description_ text
)
RETURNS void
AS
$$
BEGIN
    INSERT INTO sales_car(price, year_, make, model, trim_, engine, description_ )
    VALUES (price, year_, make, model, trim_, engine, description_);



END;
$$
LANGUAGE plpgsql;

SELECT add_car(20000, '2018', 'Honda', 'Civic', 'Sport', '2.0L', 'Used car with very low miles and full sport package and manual')