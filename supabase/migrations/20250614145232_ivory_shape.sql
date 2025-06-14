-- Database setup for Anime World application
-- Run this script in your MySQL database

-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS animeworld;
USE animeworld;

-- Create the animeregistration table
CREATE TABLE IF NOT EXISTS animeregistration (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    confirmpassword VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Add indexes for better performance
CREATE INDEX idx_email ON animeregistration(email);
CREATE INDEX idx_name ON animeregistration(name);

-- Insert some sample data (optional)
INSERT INTO animeregistration (name, email, password, confirmpassword) VALUES
('Naruto Uzumaki', 'naruto@animeworld.com', 'ramen123', 'ramen123'),
('Luffy Monkey', 'luffy@animeworld.com', 'pirate123', 'pirate123'),
('Edward Elric', 'edward@animeworld.com', 'alchemy123', 'alchemy123');

-- Show the table structure
DESCRIBE animeregistration;

-- Show sample data
SELECT id, name, email, created_at FROM animeregistration;