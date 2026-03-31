create database bird;

use bird;

CREATE TABLE bird_data (
    Admin_Unit_Code TEXT,
    Habitat TEXT,
    Year INT,
    Month INT,
    Season TEXT,
    Scientific_Name TEXT,
    Common_Name TEXT,
    Temperature FLOAT,
    Humidity FLOAT,
    Distance TEXT,
    Flyover_Observed BOOLEAN,
    Sex TEXT
);

ALTER TABLE bird_data DROP COLUMN Flyover_Observed;

#Temporal analysis
use bird;
SELECT Year, COUNT(*) AS observations
FROM bird_data
GROUP BY Year;

SELECT Season, COUNT(*) AS observations
FROM bird_data
GROUP BY Season;

#SPATIAL ANALYSIS
SELECT Habitat, COUNT(DISTINCT Scientific_Name) AS species_count
FROM bird_data
GROUP BY Habitat;

#SPECIES ANALYSIS
SELECT Common_Name, COUNT(*) AS count
FROM bird_data
GROUP BY Common_Name
ORDER BY count DESC
LIMIT 10;

#ENVIRONMENTAL ANALYSIS
SELECT Temperature, COUNT(*) 
FROM bird_data 
GROUP BY Temperature
ORDER BY Temperature ;

SELECT Humidity, COUNT(*) 
FROM bird_data 
GROUP BY Humidity
ORDER BY Humidity ;

