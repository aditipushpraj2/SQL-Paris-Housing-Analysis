CREATE DATABASE paris_housing_analysis;
DROP TABLE IF EXISTS paris_housing;

CREATE TABLE paris_housing (
    property_id TEXT,
    arrondissement TEXT,
    property_type TEXT,
    size_sqm TEXT,
    rooms TEXT,
    floor TEXT,
    year_built TEXT,
    condition TEXT,
    distance_to_center_km TEXT,
    price_eur TEXT
);

SELECT *
FROM paris_housing

SELECT DISTINCT property_type
FROM paris_housing;

SELECT AVG(price_eur::numeric) AS average_price
FROM paris_housing;

SELECT *
FROM paris_housing
ORDER BY price_eur::numeric DESC
LIMIT 1;

SELECT *
FROM paris_housing
WHERE rooms::int > 3;

SELECT condition,
       COUNT(*) AS total_properties
FROM paris_housing
GROUP BY condition;

SELECT property_type,
       AVG(size_sqm::numeric) AS average_size
FROM paris_housing
GROUP BY property_type;

SELECT *
FROM paris_housing
WHERE distance_to_center_km::numeric < 5;

SELECT *
FROM paris_housing
ORDER BY price_eur::numeric DESC
LIMIT 5;




