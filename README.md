# SQL-Paris-Housing-Analysis

## Repository Description

Beginner SQL project analyzing Paris housing data using PostgreSQL.

---

# README.md

```markdown
# SQL Paris Housing Analysis

## Project Overview
This beginner SQL project analyzes Paris housing data using PostgreSQL and beginner-level SQL queries. The project focuses on practicing SQL fundamentals such as filtering data, sorting records, grouping results, and performing basic data analysis.

## Dataset Information
The dataset contains Paris housing property information including:
- Property type
- Property size
- Number of rooms
- Floor number
- Property condition
- Year built
- Distance to city center
- Property price

## Tools Used
- PostgreSQL
- SQL
- Excel
- GitHub

## SQL Skills Used
- SELECT
- DISTINCT
- COUNT
- AVG
- WHERE
- GROUP BY
- ORDER BY
- LIMIT

## Key Analysis & Insights
- Analyzed average property prices in Paris.
- Identified the most expensive properties.
- Compared property conditions across listings.
- Analyzed average property sizes by property type.
- Examined properties located close to the city center.
- Explored property distribution based on room count.

## SQL Questions Overview

| Question No. | Analysis Topic | SQL Skill Used |
|---|---|---|
| 1 | Display all properties | SELECT |
| 2 | Different property types | DISTINCT |
| 3 | Count total properties | COUNT |
| 4 | Average property price | AVG |
| 5 | Most expensive property | ORDER BY |
| 6 | Properties with more than 3 rooms | WHERE |
| 7 | Count properties by condition | GROUP BY |
| 8 | Average size by property type | GROUP BY + AVG |
| 9 | Properties close to city center | WHERE |
| 10 | Top 5 expensive properties | ORDER BY + LIMIT |
```

---

# paris_housing_queries.sql

```sql
-- 1. Display All Properties
SELECT *
FROM paris_housing;

-- 2. Find Different Property Types
SELECT DISTINCT property_type
FROM paris_housing;

-- 3. Count Total Properties
SELECT COUNT(*) AS total_properties
FROM paris_housing;

-- 4. Average Property Price
SELECT AVG(price_eur::numeric) AS average_price
FROM paris_housing;

-- 5. Most Expensive Property
SELECT *
FROM paris_housing
ORDER BY price_eur::numeric DESC
LIMIT 1;

-- 6. Properties With More Than 3 Rooms
SELECT *
FROM paris_housing
WHERE rooms::int > 3;

-- 7. Count Properties by Condition
SELECT condition,
       COUNT(*) AS total_properties
FROM paris_housing
GROUP BY condition;

-- 8. Average Property Size by Property Type
SELECT property_type,
       AVG(size_sqm::numeric) AS average_size
FROM paris_housing
GROUP BY property_type;

-- 9. Properties Close to City Center
SELECT *
FROM paris_housing
WHERE distance_to_center_km::numeric < 5;

-- 10. Top 5 Most Expensive Properties
SELECT *
FROM paris_housing
ORDER BY price_eur::numeric DESC
LIMIT 5;
```

```

5. Make repository publ

