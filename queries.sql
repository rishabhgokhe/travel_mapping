-- POSTGRES table Creation Queries --

DROP TABLE IF EXISTS visited_countries, users;

CREATE TABLE users(
id SERIAL PRIMARY KEY,
name VARCHAR(15) UNIQUE NOT NULL,
color VARCHAR(15)
);

CREATE TABLE visited_countries (
    id SERIAL PRIMARY KEY,
    country_code VARCHAR(2) NOT NULL,
    user_id INTEGER NOT NULL REFERENCES users(id),
    UNIQUE (country_code, user_id)
);

INSERT INTO users (name, color)
VALUES ('Rishabh', 'teal'), ('Mayank', 'powderblue');

-- SOME RANDOM DATA INSERTED FOR TESTING --

INSERT INTO visited_countries (country_code, user_id)
VALUES ('IN', 1), ('GB', 1), ('CA', 2), ('FR', 2 );
