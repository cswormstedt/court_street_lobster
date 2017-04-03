CREATE DATABASE court_street;

\c court_street

CREATE TABLE users (id SERIAL PRIMARY KEY, username VARCHAR (255), password_digest VARCHAR (255), email VARCHAR(255), first_name VARCHAR(255), last_name VARCHAR(255), phone VARCHAR(20));

CREATE TABLE menus (id SERIAL PRIMARY KEY, name VARCHAR (255), info VARCHAR (300), price float);

CREATE TABLE orders (id SERIAL PRIMARY KEY, user_id INT references users(id), menu_id INT references menus(id), amount INT, order_number INT);