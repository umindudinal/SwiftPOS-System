# SwiftPOS - Point of Sale System

A desktop-based Point of Sale (POS) and inventory management system built with Java (Swing) and MySQL.

## 🚀 Features

- **User Authentication**: Secure login system for authorized staff.
- **Main Dashboard**: Overview of operations and quick navigation.
- **New Sale & Billing**: Streamlined checkout workflow with item calculation and cart management.
- **Product Management**: Manage inventory, products, categories, and stock levels.
- **Customer Management**: Maintain customer records and contact details.
- **Transaction History**: Track, review, and audit sales transactions.
- **Database Connectivity**: Integrated with MySQL database via JDBC.

## 🛠️ Tech Stack

- **Language**: Java
- **UI Framework**: Java Swing (NetBeans GUI Builder)
- **Build Tool**: Apache Maven
- **Database**: MySQL
- **Connector**: MySQL Connector/J (`mysql-connector-java`)

## 📋 Prerequisites

- **Java Development Kit (JDK)**: JDK 17 or higher
- **Maven**: 3.8+
- **MySQL Server**: MySQL 8.0+

## ⚙️ Setup & Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/umindudinal/SwiftPOS-System.git
   cd SwiftPOS-System
   ```

2. **Configure Database**:
   - Create a database named `pos_system` in your MySQL server:
     ```sql
     CREATE DATABASE pos_system;
     ```
   - Update your MySQL credentials in `src/main/java/com/mycompany/pos_system/DBConnect.java` if needed.

3. **Build & Run**:
   - Using Maven:
     ```bash
     mvn clean install
     mvn exec:java
     ```
   - Or open the project directly in **NetBeans IDE**, **IntelliJ IDEA**, or **VS Code**.

## 👤 Author

- **Umindu Dinal** - [@umindudinal](https://github.com/umindudinal)
