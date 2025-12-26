CREATE DATABASE retail_dwh;
USE retail_dwh;

-- 1. Dim_Customer
CREATE TABLE Dim_Customer (
    customer_id VARCHAR(20) PRIMARY KEY,
    email VARCHAR(100),
    gender VARCHAR(10),
    region VARCHAR(50),
    loyalty_tier VARCHAR(20),
    signup_date DATE
);

-- 2. Dim_Product
CREATE TABLE Dim_Product (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    base_price DECIMAL(10,2),
    supplier_code VARCHAR(20),
    launch_date DATE
);

-- 3. Dim_Date
CREATE TABLE Dim_Date (
    date_id INT PRIMARY KEY,
    full_date DATE NOT NULL,
    day INT,
    day_of_week VARCHAR(15), 
    month INT,
    year INT
);

-- 4. Dim_Payment
CREATE TABLE Dim_Payment (
    payment_method_id INT IDENTITY(1,1) PRIMARY KEY,
    payment_method VARCHAR(50) UNIQUE NOT NULL
);

-- 5. Dim_Delivery
CREATE TABLE Dim_Delivery (
    delivery_status_id INT IDENTITY(1,1) PRIMARY KEY,
    delivery_status VARCHAR(50) UNIQUE NOT NULL
);

-- 6. Dim_Region
CREATE TABLE Dim_Region (
    region_key INT IDENTITY(1,1) PRIMARY KEY, 
    region_name VARCHAR(50) UNIQUE NOT NULL
);

-- 7. fact_sales 
CREATE TABLE fact_sales (
    sales_id INT IDENTITY(1,1) PRIMARY KEY, 
    order_id VARCHAR(20),
    product_id VARCHAR(20) FOREIGN KEY REFERENCES Dim_Product(product_id),
    customer_id VARCHAR(20) FOREIGN KEY REFERENCES Dim_Customer(customer_id),
    date_id INT FOREIGN KEY REFERENCES Dim_Date(date_id),
    payment_method_id INT FOREIGN KEY REFERENCES Dim_Payment(payment_method_id),
    region_key INT FOREIGN KEY REFERENCES Dim_Region(region_key),
    delivery_status_id INT FOREIGN KEY REFERENCES Dim_Delivery(delivery_status_id),
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    discount_applied DECIMAL(5,3) DEFAULT 0,
    total_amount AS (quantity * unit_price * (1 - discount_applied))
);
