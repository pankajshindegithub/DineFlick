-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS dine;
USE dine;

-- Create users table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    booking_date DATE NOT NULL,
    booking_time TIME NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    table_name varchar(50),
    FOREIGN KEY (email) REFERENCES users(email) ON DELETE CASCADE
);

CREATE TABLE resell (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    booking_date DATE NOT NULL,
    booking_time TIME NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    table_name VARCHAR(100) NOT NULL
);


































/*create database dine;

CREATE TABLE IF NOT EXISTS users ( id INT AUTO_INCREMENT PRIMARY KEY, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL, email VARCHAR(100) UNIQUE NOT NULL, password VARCHAR(255) NOT NULL, created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP );




-- Table for storing restaurant tables information
CREATE TABLE restaurant_tables (
    table_id INT PRIMARY KEY AUTO_INCREMENT,
    table_name VARCHAR(50) NOT NULL,
    capacity INT NOT NULL,
    base_price DECIMAL(10, 2) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE
);

-- Table for storing additional options that can be added to bookings
CREATE TABLE additional_options (
    option_id INT PRIMARY KEY AUTO_INCREMENT,
    option_name VARCHAR(100) NOT NULL,
    option_price DECIMAL(10, 2) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE
);

-- Main table for storing booking information
CREATE TABLE table_bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    table_id INT NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    customer_phone VARCHAR(20) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    booking_date DATE NOT NULL,
    booking_time TIME NOT NULL,
    number_of_guests INT NOT NULL,
    base_price DECIMAL(10, 2) NOT NULL,
    service_tax DECIMAL(10, 2) NOT NULL,
    gst DECIMAL(10, 2) NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    booking_status ENUM('pending', 'confirmed', 'cancelled') DEFAULT 'pending',
    payment_status ENUM('pending', 'paid', 'refunded') DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (table_id) REFERENCES restaurant_tables(table_id)
);

-- Table for storing the additional options selected for each booking
CREATE TABLE booking_options (
    id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT NOT NULL,
    option_id INT NOT NULL,
    option_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES table_bookings(booking_id),
    FOREIGN KEY (option_id) REFERENCES additional_options(option_id)
);

-- Insert sample data for restaurant tables
INSERT INTO restaurant_tables (table_name, capacity, base_price) VALUES
('Table 01', 4, 900.00),
('Table 02 Large', 8, 1349.00),
('Table 03', 4, 900.00),
('Table 04', 4, 1050.00),
('Table 05', 4, 1050.00);

-- Insert sample data for additional options
INSERT INTO additional_options (option_name, option_price) VALUES
('Table Decoration', 700.00),
('Celebration Cake', 800.00);*/