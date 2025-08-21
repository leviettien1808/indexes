CREATE DATABASE indexes;
-- MySQL
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT NULL,
    salary INT CHECK (salary > 0)
);

CREATE TABLE addresses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    street VARCHAR(300) NOT NULL,
    house_number VARCHAR(20) NOT NULL,
    postal_code VARCHAR(10) NOT NULL,
    city VARCHAR(300) NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Postgres
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT NULL,
    salary INT CHECK (salary > 0)
);

CREATE TABLE addresses (
    id SERIAL PRIMARY KEY,
    street VARCHAR(300) NOT NULL,
    house_number VARCHAR(20) NOT NULL,
    postal_code VARCHAR(10) NOT NULL,
    city VARCHAR(300) NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- SQLite
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL,
    salary INTEGER CHECK (salary > 0)
);

CREATE TABLE addresses (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    street TEXT NOT NULL,
    house_number TEXT NOT NULL,
    postal_code TEXT NOT NULL,
    city TEXT NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Data
INSERT INTO users (first_name, last_name, email, salary) VALUES
('John', 'Doe', 'john@test.com', 11000),
('Jane', 'Doe', 'jane@test.com', 12800),
('Alice', 'Smith', 'alice@test.com', 15000),
('Bob', 'Brown', 'bob@test.com', 13000),
('Charlie', 'Black', 'charlie@test.com', 9000),
('Diana', 'White', 'diana@test.com', 10000);

INSERT INTO addresses (street, house_number, postal_code, city, user_id) VALUES
('Main St', '123', '12345', 'Springfield', 1),
('Second St', '456', '67890', 'Shelbyville', 2),
('Third St', '789', '54321', 'Capital City', 3),
('Fourth St', '101', '98765', 'Ogdenville', 4),
('Fifth St', '202', '11223', 'North Haverbrook', 5),
('Sixth St', '303', '44556', 'East Springfield', 6);