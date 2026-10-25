-- ===================================================
-- SwiftPOS System Database Schema & Initial Data
-- Database Name: pos_system
-- Author: Umindu Dinal
-- ===================================================

CREATE DATABASE IF NOT EXISTS `pos_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `pos_system`;

-- ---------------------------------------------------
-- 1. Table structure for `users`
-- ---------------------------------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(50) NOT NULL UNIQUE,
  `password` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Sample User (Default Login: admin / 1234 or admin / admin)
INSERT INTO `users` (`username`, `password`) VALUES
('admin', 'admin'),
('cashier', '1234');

-- ---------------------------------------------------
-- 2. Table structure for `products`
-- ---------------------------------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `barcode` VARCHAR(50) NOT NULL UNIQUE,
  `product_name` VARCHAR(150) NOT NULL,
  `category` VARCHAR(100) DEFAULT 'General',
  `price` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  `quantity` INT NOT NULL DEFAULT 0,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Sample Products
INSERT INTO `products` (`barcode`, `product_name`, `category`, `price`, `quantity`) VALUES
('F1001', 'Milk Powder 400g', 'Dairy', 1150.00, 50),
('F1002', 'White Sugar 1kg', 'Groceries', 280.00, 100),
('F1003', 'Tea Leaves 200g', 'Beverages', 450.00, 45),
('F1004', 'Wheat Flour 1kg', 'Bakery', 210.00, 80),
('F1005', 'Biscuits Chocolate 100g', 'Snacks', 150.00, 8); -- low stock example (<10)

-- ---------------------------------------------------
-- 3. Table structure for `customers`
-- ---------------------------------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(20) DEFAULT NULL,
  `email` VARCHAR(100) DEFAULT NULL,
  `address` TEXT DEFAULT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Sample Customers
INSERT INTO `customers` (`name`, `phone`, `email`, `address`) VALUES
('Kamal Perera', '0771234567', 'kamal@gmail.com', 'Colombo, Sri Lanka'),
('Nimal Silva', '0719876543', 'nimal@gmail.com', 'Kandy, Sri Lanka'),
('Sunil Fernando', '0751122334', 'sunil@gmail.com', 'Galle, Sri Lanka');

-- ---------------------------------------------------
-- 4. Table structure for `sales`
-- ---------------------------------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `sale_id` INT AUTO_INCREMENT PRIMARY KEY,
  `sale_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `subtotal` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  `discount` DECIMAL(10,2) DEFAULT 0.00,
  `net_total` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  `paid_amount` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  `balance` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  `payment_method` VARCHAR(50) DEFAULT 'Cash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ---------------------------------------------------
-- 5. Table structure for `sale_items`
-- ---------------------------------------------------
DROP TABLE IF EXISTS `sale_items`;
CREATE TABLE `sale_items` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `sale_id` INT NOT NULL,
  `product_name` VARCHAR(150) NOT NULL,
  `qty` INT NOT NULL,
  `price` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  `total` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  CONSTRAINT `fk_sale_items_sale_id` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
