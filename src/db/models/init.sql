DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    password TEXT NOT NULL
);

DROP TABLE IF EXISTS shops CASCADE;

CREATE TABLE IF NOT EXISTS shops (
    id SERIAL PRIMARY KEY,
    owner_id integer REFERENCES users (id) NOT NULL,
    address TEXT NOT NULL,
    postcode TEXT NOT NULL,
    name TEXT NOT NULL
);

DROP TABLE IF EXISTS shop_items CASCADE;

CREATE TABLE IF NOT EXISTS shop_items (
    id SERIAL PRIMARY KEY,
    shop_id integer REFERENCES shops (id) NOT NULL
);

