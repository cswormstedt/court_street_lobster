
CREATE DATABASE lobster;

\c court_street

CREATE TABLE users (id SERIAL PRIMARY KEY, username VARCHAR (255), password_digest VARCHAR (255), email VARCHAR(255), first_name VARCHAR(255), last_name VARCHAR(255), phone VARCHAR(20));

CREATE TABLE items (id SERIAL PRIMARY KEY, name VARCHAR (255), info VARCHAR (300), price float);

CREATE TABLE orders (id SERIAL PRIMARY KEY, user_id INT references users(id));

CREATE TABLE totals (id SERIAL PRIMARY KEY, order_id INT references orders(id), item_id INT references items(id), amount INT);

INSERT INTO items (name, info, price) VALUES ('Lobster Roll-Maine Style', 'Fresh Maine Lobster, Lemon Mayo, CSLB Spice Blend', 19.0);

INSERT INTO items (name, info, price) VALUES ('Lobster Roll-Connecticut Style', 'Fresh Maine Lobster, Served traditionally with drawn butter topping', 19.0);



INSERT INTO items (name, info, price) VALUES ('Crab Roll', 'Blue Crab, Sriracha Mayo, Old Bay', 14.0);

INSERT INTO items (name, info, price) VALUES ('Shrimp Roll', 'Chemical Free Gulf Shrimp, Orange Zest Mayo', 12.0);

INSERT INTO items (name, info, price) VALUES ('Chicken Salad Roll', 'Free-Range Pennsylvania Chicken, Celery Mayo, Tarragon, topped with back chicken skins', 9.0);

INSERT INTO items (name, info, price) VALUES ('Veggie Roll', 'Chickpeas, Peppers, Housemade pickles, Housemade Coleslaw, and housemade pesto', 8.0);
