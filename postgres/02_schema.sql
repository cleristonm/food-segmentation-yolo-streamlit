\connect food_ai_db;

CREATE TABLE foods (
    id SERIAL PRIMARY KEY,
    class_name VARCHAR(100) UNIQUE NOT NULL,
    nom_fr VARCHAR(100),
    groupe VARCHAR(100),
    calories_100g NUMERIC,
    proteines_100g NUMERIC,
    glucides_100g NUMERIC,
    lipides_100g NUMERIC,
    conseil TEXT
);