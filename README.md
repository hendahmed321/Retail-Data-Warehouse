# Retail-Data-Warehouse
A complete data warehouse solution for retail analytics using Python, SQL Server, and Power BI.

## Team Members
- Hend Ahmed Haroun
- Hala Mohammed
- Samar El-Ameer
- Mohrael John
- Sameer Abbas

## Objectives
- Build ETL pipeline for data cleaning
- Design and implement Star Schema
- Create interactive Power BI dashboards
- Generate business insights from sales data

## Technologies Used
- **Python**: Pandas, pyodbc (Data Cleaning)
- **SQL Server**: Database Management
- **Power BI**: Data Visualization

## Data Source
- **Dataset**: Retail Sales & Customer Analytics
- **Source**: [Kaggle - Retail Analytics Dataset]([https://www.kaggle.com/datasets/ajinkyachintawar/sales-and-customer-behaviour-insights])

## Data Pipeline Architecture
1. **Data Source**
   - Raw retail data (CSV files)

2. **ETL Process**
   - Data cleaning and preprocessing using Python
   - Handling missing values and data inconsistencies
   - Transforming data into analytical-friendly formats

3. **Data Warehouse**
   - Implemented using a **Star Schema**
   - Fact and dimension tables designed for fast querying

4. **Data Visualization**
   - Power BI dashboards for sales, customers, and product analysis

## Data Warehouse Schema
The data warehouse follows a **Star Schema** design:

<img width="682" height="621" alt="star schema" src="https://github.com/user-attachments/assets/d6888522-240c-40da-bc79-3e995e63ce88" />

## Key Insights & Analysis
- Total revenue reached 237K from 2,923 orders, with an average order value of around 80.
- Sales are evenly distributed across regions, each contributing close to 20% of total orders.
- Cleaning is the top-performing category, generating the highest revenue.
- The dataset includes 490 customers, with Gold being the dominant loyalty tier.
- Most orders are successfully delivered, and Credit Card is the most used payment method.
- The majority of purchases involve 1–3 items, with limited reliance on high discounts.
