# Ecommerce-Sales-Analysis

# E-commerce Sales Analysis

## Project Overview
This project analyzes the sales performance of an online store using **Python, SQL, and Power BI**.  
The goal was to clean raw sales data, perform SQL-based analysis, and create an interactive Power BI dashboard for business insights.

## Tools & Technologies
- Python (Pandas, NumPy)
- SQL (MySQL/PostgreSQL)
- Power BI

## Dataset
- Source: Kaggle – Sample Superstore (~9,800 rows)
- Columns: Order Date, Ship Date, Category, Sub-Category, Region, Sales, Quantity, Discount, Profit, etc.

## Steps Performed
1. **Data Cleaning (Python)**  
   - Missing values handled  
   - Order Date & Ship Date converted to datetime  
   - Standardized categorical values  
   - Outliers detected & capped (Sales & Profit)  
   - Cleaned dataset exported  

2. **Data Analysis (SQL)**  
   - Aggregations: SUM, AVG, COUNT  
   - Category/Region-wise Sales analysis  
   - Top Products using ORDER BY + LIMIT  
   - Yearly & Monthly Sales trends with DATE functions  

3. **Data Visualization (Power BI)**  
   - KPIs: Total Sales, Orders, Discount, Profit  
   - Category & Sub-category performance  
   - Region-wise Sales & Profit Map  
   - Time-series trends (Monthly/Yearly)  
   - Top Customers by Revenue  

## Insights
- Technology products contributed the highest sales  
- South region had the lowest profit margin  
- High discounts often reduced profitability  

## Dashboard
*(Upload a screenshot here)*

## Conclusion
This project demonstrates end-to-end Data Analysis workflow:
- Cleaning → SQL Analysis → Dashboarding
