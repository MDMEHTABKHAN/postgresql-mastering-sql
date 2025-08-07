-- Create a table with JSON and JSONB
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    data_json JSON,
    data_jsonb JSONB
);

-- Insert
INSERT INTO orders (data_json, data_jsonb)
VALUES ('{"customer": {"name": "Mehtab", "city": "Delhi"}}',
        '{"customer": {"name": "Mehtab", "city": "Delhi"}}');

INSERT INTO orders (data_json, data_jsonb)
VALUES ('{"customer": {"name": "John", "city": "New York"}}',
        '{"customer": {"name": "John", "city": "New York"}}'),
         ('{"customer": {"name": "Alice", "city": "Los Angeles"}}',
          '{"customer": {"name": "Alice", "city": "Los Angeles"}}');

SELECT * FROM orders;        



CREATE TABLE st (
    id SERIAL PRIMARY KEY,
    name TEXT,
    marks INTEGER[]
);

-- Insert an array
INSERT INTO st (name, marks)
VALUES ('Mehtab', ARRAY[85, 90, 95]);

SELECT * FROM st;

INSERT INTO st (name, marks)
VALUES 
    ('John', ARRAY[80, 85, 90]),
    ('Alice', ARRAY[95, 100, 90]),
    ('Shyam', ARRAY[12,34,65]),
    ('Ravi', ARRAY[45, 67, 89]),
    ('Sita', ARRAY[78, 88, 92]);

SELECT * FROM st WHERE marks @> ARRAY[90];   
 
SELECT * FROM st WHERE name IN ('John', 'Alice');

