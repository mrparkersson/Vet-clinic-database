/* Populate database with sample data. */


INSERT INTO animals (id,name, date_of_birth, escape_attempts,neutered,weight_kg) VALUES (1,'Agumon.','2020/02/03',0,true,10.23);
INSERT INTO animals (id,name, date_of_birth, escape_attempts,neutered,weight_kg) VALUES (2,'Gabumon','2018/11/15',2,true,8);
INSERT INTO animals (id,name, date_of_birth, escape_attempts,neutered,weight_kg) VALUES (3,'Pikachu','2021/01/07',1,false,15.04);
INSERT INTO animals (id,name, date_of_birth, escape_attempts,neutered,weight_kg) VALUES (4,'Devimon','2017/05/12',5,true,11);
INSERT INTO animals (id,name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (5,'Charmander', '2020-02-08', 0, false, -11);
INSERT INTO animals (id,name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (6,'Plantmon', '2021-11-15', 2, true, -5.7);
INSERT INTO animals (id,name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (7,'Squirtle', '1993-04-02', 3, false, -12.13);
INSERT INTO animals (id,name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (8,'Angemon', '2005-06-12', 1, true, -45);
INSERT INTO animals (id,name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (9,'Boarmon', '2005-06-07', 7, true, 20.4);
INSERT INTO animals (id,name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (10,'Blossom', '1998-10-13', 3, true, 17);
INSERT INTO animals (id,name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (11,'Ditto', '2022-05-14', 4, true, 22);

-- //owners table

INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34);
INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', 19);
INSERT INTO owners (full_name, age) VALUES ('Bob', 45);
INSERT INTO owners (full_name, age) VALUES ('Melody Pond', 77);
INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', 14);
INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker', 38);

-- species

INSERT INTO species (name) VALUES ('Pokemon');
INSERT INTO species (name) VALUES ('Digimon');

UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE species_id IS NULL;

UPDATE animals SET owner_id = 1 WHERE id = 1;
UPDATE animals SET owner_id = 2 WHERE id IN (2, 3);
UPDATE animals SET owner_id = 3 WHERE id IN (4, 6);
UPDATE animals SET owner_id = 4 WHERE id IN (5, 7, 10);
UPDATE animals SET owner_id = 5 WHERE id IN (8, 9);

-- inserting vets

INSERT INTO vets (name, age, date_of_graduation) VALUES ('William Tatcher', 45, '2000-04-23');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Maisy Smith', 26, '2019-01-17');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Stephanie Mendez', 64, '1981-05-04');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Jack Harkness', 38, '2008-06-08');


-- inserting specializations

INSERT INTO specializations (vets_id, species_id) VALUES (1, 1);
INSERT INTO specializations (vets_id, species_id) VALUES (3, 1);
INSERT INTO specializations (vets_id, species_id) VALUES (3, 2);
INSERT INTO specializations (vets_id, species_id) VALUES (4, 2);

-- number of visits


INSERT INTO visits VALUES (1, 1, '2020-05-24');
INSERT INTO visits VALUES (3, 1, '2020-06-22');
INSERT INTO visits VALUES (4, 2, '2021-02-02');
INSERT INTO visits VALUES (2, 3, '2020-01-05');
INSERT INTO visits VALUES (2, 3, '2020-03-08');
INSERT INTO visits VALUES (2, 3, '2020-05-14');
INSERT INTO visits VALUES (3, 4, '2021-05-04');
INSERT INTO visits VALUES (4, 5, '2021-02-24');
INSERT INTO visits VALUES (2, 6, '2019-12-21');
INSERT INTO visits VALUES (1, 6, '2020-08-10');
INSERT INTO visits VALUES (2, 6, '2021-04-07');
INSERT INTO visits VALUES (3, 7, '2019-09-29');
INSERT INTO visits VALUES (4, 8, '2020-10-03');
INSERT INTO visits VALUES (4, 8, '2020-11-04');
INSERT INTO visits VALUES (2, 9, '2019-01-24');
INSERT INTO visits VALUES (2, 9, '2019-05-15');
INSERT INTO visits VALUES (2, 9, '2020-02-27');
INSERT INTO visits VALUES (2, 9, '2020-08-03');
INSERT INTO visits VALUES (3, 10, '2020-05-24');
INSERT INTO visits VALUES (1, 10, '2021-01-11');

