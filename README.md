# Retail Sales Data Analysis using SQL

## Project Overview
This project focuses on analyzing retail sales data using PostgreSQL. The objective is to clean the dataset, explore sales transactions, and generate meaningful business insights using SQL queries.

## Tools & Technologies
- PostgreSQL
- pgAdmin 4
- SQL

## Project Objectives
- Create and manage a retail sales database.
- Perform data cleaning and handle missing values.
- Analyze sales performance across different categories.
- Identify top customers based on total sales.
- Understand customer purchasing patterns.
- Analyze monthly sales trends.
- Explore sales distribution across different shifts.

## Database Information

**Table Name:** `retail_sales`

The dataset contains the following columns:

| Column | Description |
|---|---|
| transactions_id | Unique transaction ID |
| sale_date | Date of transaction |
| sale_time | Time of transaction |
| customer_id | Customer ID |
| gender | Customer gender |
| age | Customer age |
| category | Product category |
| quantiy | Quantity purchased |
| price_per_unit | Price per unit |
| cogs | Cost of goods sold |
| total_sale | Total sales amount |

## Project Workflow

### 1. Database & Table Creation
- Created the retail_sales table.
- Defined appropriate data types.
- Used transactions_id as the primary key.

### 2. Data Cleaning
- Checked the total number of records.
- Identified NULL values.
- Removed records containing missing values.

### 3. Data Analysis
Performed 10 business analysis queries:

1. Retrieve all sales transactions made on November 5, 2022.
2. Identify Clothing transactions with quantity greater than 4 during November 2022.
3. Calculate total sales and transaction count for each category.
4. Find the average customer age in the Beauty category.
5. Identify transactions with total sales greater than 1,000.
6. Analyze transaction counts by gender and category.
7. Find average monthly sales and identify the best-selling month in each year.
8. Identify the top 5 customers based on total sales.
9. Calculate unique customers for each category.
10. Categorize transactions into Morning, Afternoon, and Evening shifts.

## SQL Concepts Practiced
- CREATE TABLE
- DROP TABLE
- SELECT
- WHERE
- IS NULL
- DELETE
- GROUP BY
- ORDER BY
- Aggregate Functions (SUM, AVG, COUNT)
- DISTINCT
- TO_CHAR()
- EXTRACT()
- CASE WHEN
- Common Table Expressions (CTE)
- Window Functions (RANK)
- LIMIT

## Key Learnings
- Understanding relational database structures.
- Performing data cleaning using SQL.
- Applying aggregate functions for business analysis.
- Using window functions to rank monthly sales.
- Converting business questions into SQL queries.

## Conclusion
This project helped me strengthen my SQL fundamentals and understand how PostgreSQL can be used to clean, explore, and analyze retail sales data to generate business insights.

---

**Author:** Pushpa Venkatesan
