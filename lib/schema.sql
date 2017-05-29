CREATE TABLE characters(
  id INTEGER PRIMARY KEY,
  name TEXT,
  species TEXT,
  motto TEXT,
  series_id INTEGER,
  author_id INTEGER
);
CREATE TABLE books(
  id INTEGER PRIMARY KEY,
  title TEXT,
  year Date,
  series_id INTEGER
);
CREATE TABLE series(
  id INTEGER PRIMARY KEY,
  title TEXT,
  author_id INTEGER,
  subgenre_id INTEGER
);
CREATE TABLE authors(
  id INTEGER PRIMARY KEY,
  name TEXT
);
CREATE TABLE subgenres(
  id INTEGER PRIMARY KEY,
  name TEXT
);
CREATE TABLE character_books(
  id INTEGER PRIMARY KEY,
  book_id INTEGER,
  character_id INTEGER
);
