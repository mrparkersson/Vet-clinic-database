/*Queries that provide answers to the questions from all projects.*/


SELECT * FROM animals WHERE name LIKE '%mon';
SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-31-12';
SELECT * FROM animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

BEGIN;
UPDATE animals
SET species = 'unspecified';
TABLE animals;
ROLLBACK;
TABLE animals;

BEGIN;
UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon';
UPDATE animals
SET species = 'pokemon'
WHERE species IS NULL;
TABLE animals;
COMMIT;
TABLE animals;

BEGIN;
DELETE FROM animals;
ROLLBACK;

BEGIN;
DELETE FROM animals
WHERE date_of_birth > '2022-01-01';
SAVEPOINT SP1;
UPDATE animals
SET weight_kg = weight_kg * -1;
ROLLBACK TO SP1;
UPDATE animals
SET weight_kg = weight_kg * -1
WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(*)
FROM animals;

SELECT COUNT(escape_attempts)
FROM animals
WHERE escape_attempts = 0;

SELECT AVG(weight_kg)
FROM animals;

SELECT
neutered,
MAX(escape_attempts)
FROM animals
GROUP BY neutered;

SELECT
species,
MAX(weight_kg), MIN(weight_kg)
FROM animals
GROUP BY species;

SELECT
species,
date_of_birth,
AVG(escape_attempts)
FROM animals
GROUP BY species, date_of_birth
HAVING date_of_birth BETWEEN '1990-01-01' AND '2000-01-01';

SELECT name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE owners.id = 4;

-- pokemon animals list

SELECT animals.name, animals.species_id, species.name FROM animals JOIN species ON animals.species_id = species.id WHERE species.id = 1;

-- owners and their animals

SELECT * FROM owners LEFT JOIN animals ON animals.owner_id = owners.id;

-- total animasl per species

SELECT species.name, COUNT(animals.species_id) FROM animals JOIN species ON animals.species_id = species.id GROUP BY species.name;

-- List of all Digimon owned by Jennifer Orwell.

SELECT owners.full_name, animals.species_id, animals.name AS pokemon FROM animals
JOIN owners ON animals.owner_id = owners.id
WHERE owners.id = 2 AND animals.species_id = 2;

-- animals owned by dean winchester 
SELECT * FROM animals JOIN owners ON animals.owner_id = owners.id WHERE animals.owner_id = 5 AND animals.escape_attempts = 1;

-- list of owners with most animals

SELECT owners.full_name, COUNT(animals.owner_id) AS total_animals FROM animals
JOIN owners ON animals.owner_id = owners.id GROUP BY owners.full_name ORDER BY COUNT(*) DESC;
