/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INTEGER,
    name varchar(100),
    date_of_birth DATE NOT NULL,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL

);

ALTER TABLE animals ADD COLUMN species TEXT;