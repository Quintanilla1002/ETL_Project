DROP TABLE IF EXISTS 
Held_OH,
MH_Weapons,
OH_Weapons,
OneHAnd_Weapons,
Ranged_Weapons,
TwoH_Weapons;

---Create Table for One Hand Weapons Data Frame
CREATE TABLE OneHand_Weapons(
	id serial NOT NULL,
	Name VARCHAR,
	Quality VARCHAR,
	Min_Damage INT,
	Max_Damage INT,
	DPS INT,
	Weapon_Speed_in_Seconds INT,
	CONSTRAINT id_pkey PRIMARY KEY (id));
SELECT * FROM OneHand_Weapons;

---Create Table for Main Hand Weapons Data Frame
CREATE TABLE MH_Weapons(
	id serial NOT NULL,
	Name VARCHAR,
	Quality VARCHAR,
	Min_Damage INT,
	Max_Damage INT,
	DPS INT,
	Weapon_Speed_in_Seconds INT,
	FOREIGN KEY (id) REFERENCES OneHand_Weapons(id));
SELECT * FROM MH_Weapons;

---Create Table for Off Hand Weapons Data Frame
CREATE TABLE OH_Weapons(
	id serial NOT NULL,
	Name VARCHAR,
	Quality VARCHAR,
	Min_Damage INT,
	Max_Damage INT,
	DPS INT,
	Weapon_Speed_in_Seconds INT,
	FOREIGN KEY (id) REFERENCES OneHand_Weapons(id));
SELECT * FROM OH_Weapons;


---Create Table for Ranged Weapons Data Frame
CREATE TABLE Ranged_Weapons(
	id serial NOT NULL,
	Name VARCHAR,
	Quality VARCHAR,
	Min_Damage INT,
	Max_Damage INT,
	DPS INT,
	Weapon_Speed_in_Seconds INT,
	FOREIGN KEY (id) REFERENCES OneHand_Weapons(id));
SELECT * FROM Ranged_Weapons;

---Create Table for Two-Handed Weapons Data Frame
CREATE TABLE TwoH_Weapons(
	id serial NOT NULL,
	Name VARCHAR,
	Quality VARCHAR,
	Min_Damage INT,
	Max_Damage INT,
	DPS INT,
	Weapon_Speed_in_Seconds INT,
	FOREIGN KEY (id) REFERENCES OneHand_Weapons(id));
SELECT * FROM TwoH_Weapons;

---Create Tables for Held in Off-Hand Items Data Frame
CREATE TABLE Held_OH(
	id serial NOT NULL,
	Name VARCHAR,
	Quality VARCHAR,
	FOREIGN KEY (id) REFERENCES OneHand_Weapons(id));
SELECT * FROM Held_OH;