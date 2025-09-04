

CREATE TABLE pro (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10, 2)
);



INSERT INTO pro(name, price)
VALUES
('pen drive', 45.67),
('vivo', 19000.00),
('Iphone', 788888.00);

CREATE PROCEDURE add_product(p_name VARCHAR, p_price DECIMAL)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO pro (name, price)
    VALUES (p_name, p_price);
END;
$$;


CALL add_product('pen drive', 45.67);


SELECT * FROM pro;
