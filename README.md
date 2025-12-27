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
- **Git**: Version Control

## Project Structure
Retail-Data-Warehouse/
├── 📂 Original_Files/ # Source data files
│ ├── customer_info.csv # 500 customer records
│ ├── product_info.csv # 30 product records
│ └── sales_data.csv # 3,000 sales transactions
│
├── 📂 ETL/ # Data cleaning & transformation
│ ├── customer_cleaning.ipynb
│ ├── product_cleaning.ipynb
│ └── sales_cleaning.ipynb
│
├── 📂 Cleaned_Files/ # Processed data outputs
│ ├── customer_clean.csv
│ ├── product_clean.csv
│ └── sales_clean.csv
│
├── 📂 Data_Warehouse/ # Database implementation
│ ├── create_tables.sql # DDL for star schema
│ ├── load_data.sql # Data loading scripts
│ └── sample_queries.sql # Analytical queries
│
├── 📂 Modeling_Design/ # Architecture & diagrams
│ ├── star_schema.png 
│ └── erd.png 
│
├── 📂 Dashboards/ # Power BI visualizations
│ ├── overview.png 
│ ├── customer_analysis.png 
| ├── product_analysis.png 
│ └── sales_analysis.png 
│
├── 📄 README.md # Project documentation
└── 📄 requirements.txt # Python dependencies
