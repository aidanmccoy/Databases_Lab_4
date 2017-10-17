-- aimccoy

CREATE TABLE Continents (
	ContID INTEGER PRIMARY KEY,
	Continent VARCHAR(20) NOT NULL
);

CREATE TABLE Countries (
	CountryID INTEGER PRIMARY KEY,
	CountryName VARCHAR(100) NOT NULL,
	Continent INTEGER NOT NULL,
	FOREIGN KEY (Continent) REFERENCES Continents (ContID)
);

CREATE TABLE Makers (
	Id INTEGER PRIMARY KEY NOT NULL,
	Maker VARCHAR(10) NOT NULL,
	FullName VARCHAR(100) NOT NULL,
	Country INTEGER,
	FOREIGN KEY (Country) REFERENCES Countries (CountryID)
);

CREATE TABLE Models (
	ModelID INTEGER PRIMARY KEY,
	Maker INTEGER NOT NULL,
	Model VARCHAR(20) NOT NULL,
	FOREIGN KEY (Maker) REFERENCES Makers (Id),
	UNIQUE (Model)
);

CREATE TABLE Names(
	ID INTEGER PRIMARY KEY NOT NULL,
	Model VARCHAR(20) NOT NULL,
	Make VARCHAR(50),
	FOREIGN KEY (Model) REFERENCES Models (Model)
);

CREATE TABLE Data (
	Id INTEGER PRIMARY KEY,
	MPG NUMERIC(4,1),
	Cylinders INTEGER,
	Edispl NUMERIC(4,1),
	Horsepower INTEGER,
	Weight INTEGER(5),
	Accelerate NUMERIC(4,1),
	Year INTEGER,
	FOREIGN KEY (Id) REFERENCES Names (ID)
);
