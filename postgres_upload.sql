-- Create tables for data
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

-- Query to display data in tables
SELECT * FROM happiness;

SELECT * FROM life_expectancy;

-- Query to join tables into one
SELECT happiness.country, happiness.happiness_2015, happiness.happiness_2016, happiness.happiness_2017, happiness.happiness_2018, happiness.happiness_2019, life_expectancy.LE_2015, life_expectancy.LE_2016, life_expectancy.LE_2017, life_expectancy.LE_2018, life_expectancy.LE_2019
FROM happiness
JOIN life_expectancy
ON happiness.country = life_expectancy.country;