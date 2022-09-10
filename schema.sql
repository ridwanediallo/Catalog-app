CREATE DATABASE catalog;

CREATE TABLE labels (
  id SERIAL PRIMARY KEY,
  label_title TEXT NOT NULL,
  label_color TEXT NOT NULL
);

CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL
)

CREATE TABLE genres(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE sources(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE books(
  id SERIAL PRIMARY KEY,
  type_of_item text
  label_id INTEGER,
  genre_id INTEGER,
  author_id INTEGER,
  source_id INTEGER,
  publish_date DATE,
  archived BOOLEAN,
  publisher TEXT,
  COVER_STATE TEXT,
  FOREIGN KEY (label_id) REFERENCES labels(id),
  FOREIGN KEY (genre_id) REFERENCES genres(id),
  FOREIGN KEY (author_id) REFERENCES authors(id),
  FOREIGN KEY (source_id) REFERENCES sources(id)
);

CREATE TABLE music_albums(
  id SERIAL PRIMARY KEY,
  type_of_item text
  label_id INTEGER,
  genre_id INTEGER,
  author_id INTEGER,
  source_id INTEGER,
  publish_date DATE,
  archived BOOLEAN,
  ON_SPOTIFY BOOLEAN,
  FOREIGN KEY (label_id) REFERENCES labels(id),
  FOREIGN KEY (genre_id) REFERENCES genres(id),
  FOREIGN KEY (author_id) REFERENCES authors(id),
  FOREIGN KEY (source_id) REFERENCES sources(id)
);

CREATE TABLE games(
  id SERIAL PRIMARY KEY,
  type_of_item text
  label_id INTEGER,
  genre_id INTEGER,
  author_id INTEGER,
  source_id INTEGER,
  publish_date DATE,
  archived BOOLEAN,
  MULTIPLAYER TEXT,
  LAST_PLAYED_AT DATE,
  FOREIGN KEY (label_id) REFERENCES labels(id),
  FOREIGN KEY (genre_id) REFERENCES genres(id),
  FOREIGN KEY (author_id) REFERENCES authors(id),
  FOREIGN KEY (source_id) REFERENCES sources(id)
);

CREATE TABLE movies(
  id SERIAL PRIMARY KEY,
  type_of_item text
  label_id INTEGER,
  genre_id INTEGER,
  author_id INTEGER,
  source_id INTEGER,
  publish_date DATE,
  archived BOOLEAN,
  SILET BOOLEAN,
  FOREIGN KEY (label_id) REFERENCES labels(id),
  FOREIGN KEY (genre_id) REFERENCES genres(id),
  FOREIGN KEY (author_id) REFERENCES authors(id),
  FOREIGN KEY (source_id) REFERENCES sources(id)
