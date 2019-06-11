CREATE TABLE celebs (
   id INTEGER, 
   name TEXT, 
   age INTEGER
); 

INSERT INTO celebs (id, name, age) 
VALUES (1, 'Justin Bieber', 22);

INSERT INTO celebs (id, name, age) 

VALUES (2, 'Beyonce Knowles', 33); 

INSERT INTO celebs (id, name, age) 
VALUES (3, 'Jeremy Lin', 26); 

INSERT INTO celebs (id, name, age) 
VALUES (4, 'Taylor Swift', 26); 

SELECT * FROM celebs;

ALTER TABLE celebs
ADD COLUMN twitter_handle TEXT;

SELECT * FROM celebs;

SET twitter_handle = '@taylorswift13'
WHERE id = 4;

SELECT * FROM celebs;

DELETE FROM celebs 
WHERE twitter_handle IS NULL;

SELECT * FROM celebs;

CREATE TABLE awards (
   id INTEGER PRIMARY KEY,
   recipient TEXT NOT NULL,
   award_name TEXT DEFAULT 'Grammy'
);
