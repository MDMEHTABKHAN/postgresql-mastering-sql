
CREATE TABLE bank_accounts (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    balance NUMERIC(10, 2) NOT NULL
);

INSERT INTO bank_accounts (name, balance)
VALUES 
('Amit Sharma', 10000.00),
('Priya Yadav', 15000.00),
('Ravi Mehta', 8000.00),
('Mehtab Khan', 20000.00),
('Shyam Khan',24000.00),
('Arbaj Khan', 24900.00),
('Abdul Khan',32000.00);


SELECT * FROM bank_accounts;

-- Start a transaction
BEGIN;

or
 
START TRANSACTION;


-- Oops! Mistakenly deducting too much
UPDATE bank_accounts SET balance = balance - 5000 WHERE name = 'Ravi Mehta';

-- Undo this mistake
ROLLBACK;



BEGIN;

-- Step 1: Deduct 500 from Amit
UPDATE bank_accounts SET balance = balance - 500 WHERE name = 'Amit Sharma';

-- Savepoint after first step
SAVEPOINT step1;

-- Step 2: Try updating Priya wrongly
UPDATE bank_accounts SET balance = balance - 10000 WHERE name = 'Priya Yadav';

-- Realize it was wrong → rollback to savepoint
ROLLBACK TO step1;

-- Step 3: Do it right
UPDATE bank_accounts SET balance = balance - 500 WHERE name = 'Priya Yadav';

-- Commit everything
COMMIT;
