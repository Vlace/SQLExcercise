INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, false);

INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, true);

INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, false);

SELECT * FROM products;

SELECT name FROM products;

SELECT name, price FROM products;

INSERT INTO products (name, price, can_be_returned) VALUES ('picture', 345.00, false);

SELECT * FROM products WHERE can_be_returned = 'true';

SELECT * FROM products WHERE price < 44.00;

SELECT * FROM products WHERE price BETWEEN 22.50 and 99.99;

UPDATE products SET price = price - 20.00;

DELETE FROM products WHERE price < 25.00;

UPDATE products SET price = price + 20.00;

UPDATE products SET can_be_returned = 'true'


-------

SELECT app_name FROM analytics WHERE id = 1880;

SELECT id, app_name FROM analytics WHERE last_updated = '08/01/2018';

SELECT category, count(*) FROM analytics GROUP BY category;

SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;

SELECT app_name, rating, reviews FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;

SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) DESC;

SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1;

SELECT app_name FROM analytics WHERE min_installs <= 50 ORDER BY rating DESC;

SELECT app_name FROM analytics WHERE reviews >= 10000 and rating < 3;

SELECT app_name FROM analytics WHERE price BETWEEN 1 and .1 ORDER BY rating DESC LIMIT 10;

SELECT app_name FROM analytics WHERE last_updated= (SELECT MIN(last_updated) FROM analytics);

SELECT app_name FROM analytics WHERE price = (SELECT MAX(PRICE) FROM analytics);

SELECT SUM(reviews) FROM analytics;

SELECT app_name, reviews, min_installs, ROUND(min_installs * 1./ reviews * 1. , 2) as proportion FROM analytics WHERE min_installs >= 100000 ORDER BY proportion LIMIT 1;