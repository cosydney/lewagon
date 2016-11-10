CREATE TABLE 'cities' (
  'id' INTEGER PRIMARY KEY AUTOINCREMENT,
  'name' VARCHAR,
  'surface' INTEGER
);

CREATE TABLE 'inhabitants' (
  'id' INTEGER PRIMARY KEY AUTOINCREMENT,
  'name' VARCHAR,
  'age' INTEGER,
  'city_id' INTEGER
);