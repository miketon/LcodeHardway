-- init by clearing all tables
DROP TABLE person            ;
DROP TABLE pet               ;
DROP TABLE person_pet        ;
DROP TABLE automobile        ;
DROP TABLE person_automobile ;

-- ex1.sql
create table person (
  id integer primary key ,
  first_name text        ,
  last_name text         ,
  age integer            ,
  nationality text       ,
  weight integer         ,
  height float
);

-- ex2.sql
-- CREATE TABLE person(
--   id INTEGER PRIMARY KEY ,
--   first_name TEXT        ,
--   last_name TEXT         ,
--   age INTEGER
-- );

CREATE TABLE pet(
  id INTEGER PRIMARY KEY ,
  name TEXT              ,
  breed TEXT             ,
  age INTEGER            ,
  dead INTEGER
);

CREATE TABLE automobile(
  id INTEGER PRIMARY KEY ,
  model TEXT             ,
  make TEXT              ,
  year INTEGER           ,
  value INTEGER
);

CREATE TABLE person_pet(
  person_id INTEGER ,
  pet_id INTEGER
);

CREATE TABLE person_automobile(
  person_id INTEGER ,
  automobile_id INTEGER
);

-- ex3.sql
INSERT INTO person(id, first_name, last_name, age)
  VALUES(0, "Mike", "Ton", 36);
INSERT INTO person(first_name, last_name, age)
  VALUES("Diem", "Nguyen", 29);
INSERT INTO person(first_name, last_name, age)
  VALUES("Zed", "Shaw", 30);
INSERT INTO person(first_name, last_name, age)
  VALUES("Samantha", "Sweet", 23);
INSERT INTO person(first_name, last_name, age)
  VALUES("Olivia", "Kwon", 26);
INSERT INTO pet(id, name, breed, age, dead)
  VALUES(0, "Doopy", "Unicorn", 1000, 0);
INSERT INTO pet VALUES(1, "Gigantor", "Robot", 1, 1);
INSERT INTO pet VALUES(2, "Clumsy", "Smurf", 1, 0);
INSERT INTO pet VALUES(3, "Bosco", "Lab", 1, 0);
INSERT INTO automobile(model, make, year, value)
  VALUES('Honda', 'Accord', 2005, 11000); --??? Automatically assigns 1 to id
INSERT INTO automobile(id, model, make, year, value)
  VALUES(2, 'Honda', 'Prelude', 1995, 300); -- Must assign id something other than 1
-- ex4.sql
INSERT INTO person_pet(person_id, pet_id) VALUES(0, 0) ;
INSERT INTO person_pet VALUES(2, 1)                    ;
INSERT INTO person_pet VALUES(1, 3)                    ;

-- ex5.sql
SELECT * FROM person                           ;
SELECT name, age FROM pet                      ;
SELECT name, age FROM pet WHERE dead = 0       ;
SELECT * FROM person WHERE first_name != "Zed" ;

-- ex6.sql
SELECT pet.id, pet.name, pet.age, pet.dead
  FROM pet, person_pet, person 
  WHERE
  pet.id = person_pet.pet_id AND
  person_pet.person_id = person.id AND
  person.id = 0;
  -- person.first_name = 'Mike';

-- ex7.sql
-- maker sure there's dead pets
SELECT name, age FROM pet WHERE dead = 1;
-- awww poor robot
DELETE FROM pet WHERE dead = 1;
-- make sure the robot is gone
SELECT * FROM pet;
-- let's resurrect the robot
INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 0);
-- the robot LIVES
SELECT * FROM pet;

-- ex8.sql
-- DELETE FROM pet WHERE id IN (
--   SELECT pet.id
--   FROM pet, person_pet, person
--   WHERE
--   person_id = person_pet.person_id AND
--   pet_id = person_pet.pet_id AND
--   person.first_name = 'Zed'
-- );
-- 
-- SELECT * FROM pet;
-- SELECT * FROM person_pet;
-- 
-- DELETE FROM person_pet
--   WHERE pet_id NOT IN (
--     SELECT id FROM pet
--   );
-- 
-- SELECT * FROM person_pet;
-- 

-- ex9.sql
UPDATE person SET first_name = 'Hilarious Guy'
  WHERE first_name = 'Zed';
UPDATE pet SET name = 'Fancy Pants'
  WHERE id = 2;

SELECT * FROM person;
SELECT * FROM pet;

