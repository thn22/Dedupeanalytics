CREATE TABLE happiness (
    Country VARCHAR PRIMARY KEY,
    Happiness_2015 REAL,
    Happiness_2016 REAL,
    Happiness_2017 REAL,
    Happiness_2018 REAL,
    Happiness_2019 REAL
);

CREATE TABLE life_expectancy (
    Country VARCHAR PRIMARY KEY,
    LE_2015 VARCHAR,
    LE_2016 VARCHAR,
    LE_2017 VARCHAR,
    LE_2018 VARCHAR,
    LE_2019 VARCHAR
);

SELECT * FROM happiness;

SELECT * FROM life_expectancy;