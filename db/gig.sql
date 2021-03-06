DROP TABLE IF EXISTS gigs;
DROP TABLE IF EXISTS bands;
DROP TABLE IF EXISTS venues;


CREATE TABLE bands (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  genre VARCHAR(255),
  bio TEXT
);


CREATE TABLE venues (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  location VARCHAR(255),
  capacity INT
);

CREATE TABLE gigs(
  id SERIAL PRIMARY KEY,
  band_id INT REFERENCES bands(id) ON DELETE CASCADE,
  venue_id INT REFERENCES venues(id) ON DELETE CASCADE,
  date DATE,
  time TIME
);
