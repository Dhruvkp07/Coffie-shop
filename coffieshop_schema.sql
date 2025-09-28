-- Create Database
CREATE DATABASE coffieshop_new;
USE coffieshop_new;

-- Coffee Table
CREATE TABLE coffees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    coffee_name VARCHAR(50) NOT NULL
);

-- Payment Type Table
CREATE TABLE payment_types (
    id INT AUTO_INCREMENT PRIMARY KEY,
    payment_method VARCHAR(20) NOT NULL
);

-- Transactions Table
CREATE TABLE transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hour_of_day INT,
    payment_type_id INT,
    money FLOAT,
    coffee_id INT,
    time_of_payment VARCHAR(20),
    weekday VARCHAR(10),
    month_name VARCHAR(10),
    date DATE,
    time_hour INT,
    FOREIGN KEY (payment_type_id) REFERENCES payment_types(id),
    FOREIGN KEY (coffee_id) REFERENCES coffees(id)
);

-- Sample Data for Coffee Table
INSERT INTO coffees (coffee_name) VALUES
('Latte'), ('Hot Chocolate'), ('Americano'), ('Espresso'), ('Cappuccino');

-- Sample Data for Payment Type Table
INSERT INTO payment_types (payment_method) VALUES
('card'), ('cash');

-- Sample Transactions (using IDs from lookup tables)
INSERT INTO transactions (hour_of_day, payment_type_id, money, coffee_id, time_of_payment, weekday, month_name, date, time_hour) VALUES
(10, 1, 38.7, 1, 'Morning', 'Fri', 'Mar', '2024-03-01', 15),
(12, 1, 38.7, 2, 'Afternoon', 'Fri', 'Mar', '2024-03-01', 19),
(12, 1, 38.7, 2, 'Afternoon', 'Fri', 'Mar', '2024-03-01', 20),
(13, 1, 28.9, 3, 'Afternoon', 'Fri', 'Mar', '2024-03-01', 46),
(13, 1, 38.7, 1, 'Afternoon', 'Fri', 'Mar', '2024-03-01', 48),
(8, 2, 40.0, 4, 'Morning', 'Sat', 'Apr', '2024-04-01', 7),
(9, 1, 35.0, 5, 'Morning', 'Sat', 'Apr', '2024-04-01', 8),
(17, 2, 42.0, 1, 'Evening', 'Sun', 'May', '2024-05-01', 16),
(18, 1, 38.0, 3, 'Evening', 'Sun', 'May', '2024-05-01', 17),
(19, 2, 39.0, 2, 'Evening', 'Sun', 'May', '2024-05-01', 18);

SELECT * FROM coffees;