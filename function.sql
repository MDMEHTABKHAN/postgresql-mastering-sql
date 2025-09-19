
-- STRING FUNCTION


SELECT UPPER('postgresql');

SELECT LOWER('POSTGRESQL');

SELECT SUBSTRING('DATABASE', 1,4);


SELECT TRIM('  DATA  ');



SELECT LTRIM(' DATABASE ');

SELECT RTRIM('  DATABASE  ');




-- NUMERRIC FUNCTION


SELECT ROUND(12342.345,2);

SELECT ABS(-1234);


SELECT ABS(ROUND(-12324.435,2));


SELECT CEIL(12.3);
SELECT FLOOR(12.1);



SELECT POWER(2,3);




-- Date/Time Functions

-- Current date & time
SELECT NOW();


CREATE TABLE Orders1 (
    OrderID INT,
    Price DECIMAL(10,2),
    Quantity INT
);

INSERT INTO Orders1 VALUES
(1, 123.456, 2),
(2, -45.789, 5),
(3, 99.999, 3);



SELECT OrderID,
    Price,
    ABS(ROUND(Price, 1)) AS AdjustedPrice
FROM Orders1;




SELECT OrderID,
    Price,
    ROUND(POWER(Price, 2), 2) AS PriceSquare
FROM Orders1;


SELECT OrderID,
    Price,
    ROUND(POWER(ABS(Price), 3), 2) AS FinalValue
FROM Orders1;
