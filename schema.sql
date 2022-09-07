CREATE DATABASE catalog;


CREATE TABLE music_albums(
  id SERIAL PRIMARY KEY,
  publish_date DATE,
  archived VARCHAR,
  on_spotify BOOLEAN,
  genre_id SERIAL,
  FOREIGN KEY(genre_id) REFERENCES genres.id
);

CREATE TABLE genres(
  id SERIAL PRIMARY KEY,
  name VARCHAR
);