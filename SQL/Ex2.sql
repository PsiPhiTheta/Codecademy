-- 0. Reset the databse to empty
DROP TABLE celebs;
DROP TABLE friends;

-- 1. Create the friends data table
CREATE TABLE friends (
   id INTEGER PRIMARY KEY, 
   name TEXT NOT NULL, 
   birthday DATE NOT NULL
); 

-- 2. Add Jane Doe
INSERT INTO friends (id, name, birthday) 
VALUES (1, 'Jane Doe', '30/05/1990'); 

SELECT * FROM friends;

-- 3. Add two more friends
INSERT INTO friends (id, name, birthday) 
VALUES (2, 'John Smith', '24/09/1981'); 
INSERT INTO friends (id, name, birthday) 
VALUES (3, 'John Doe', '03/01/1942'); 

SELECT * FROM friends;

-- 4. Update Jane's married name
UPDATE friends
SET name = 'Jane Smith'
WHERE id = 1;

SELECT * FROM friends;

-- 5. Add email
ALTER TABLE friends
ADD COLUMN email TEXT;

UPDATE friends
SET email = 'jane@codecademy.com'
WHERE id = 1;

SELECT * FROM friends;

-- 6. Remove Jane Smith from DB
DELETE FROM friends
WHERE id = 1;

SELECT * FROM friends;
