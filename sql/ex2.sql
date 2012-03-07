CREATE TABLE person(
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  age INTEGER
);

CREATE TABLE pet(
  id INTEGER PRIMARY KEY,
  name TEXT,
  breed TEXT,
  age INTEGER,
  dead INTEGER
);

CREATE TABLE automobile(
  id INTEGER PRIMARY KEY,
  model TEXT,
  make TEXT,
  year INTEGER,
  value INTEGER
);

CREATE TABLE person_pet(
  person_id INTEGER,
  pet_id INTEGER
);

CREATE TABLE person_automobile(
  person_id INTEGER,
  automobile_id INTEGER
);
