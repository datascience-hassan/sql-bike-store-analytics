# Bike Store Sales Analytics with SQL

SQL analysis of a retail bike store dataset focused on customer behavior, revenue trends, discount impact, and product performance.

## Overview
This project analyzes a bike store sales database using SQL to answer practical business questions about customer value, retention, geography, monthly revenue trends, discount leakage, and basket behavior. The analysis is built on three related tables: `customers`, `orders`, and `order_items`. Revenue is calculated as `quantity * list_price * (1 - discount)`. 

## Dataset
- **1,445 customers**
- **1,615 orders**
- **4,722 order line items**
- **Date coverage:** January 2016 through 2017, with partial 2018 data

### Core Tables
- `customers`
- `orders`
- `order_items`

## Business Questions Answered
- Who are the top customers by total spend?
- How many customers are repeat customers?
- Which cities and states have the highest concentration of customers and orders?
- What is the month-over-month revenue trend?
- What is the average number of items per order?
- How much revenue is lost due to discounts?
- Which products generate the highest revenue?

## Key Results
- **Repeat customer rate:** 9.1%
- **Average items per order:** 4.38
- **Top product revenue:** $555,559
- **Highest discount loss:** Product 7 lost about $60,440 to discounts
- **Revenue trend:** Revenue increased from about $215K in January 2016 to a full-period peak of $378,866 in June 2017

## Business Insights
- New York had the strongest customer concentration, with 8 of the top 10 cities located there.
- Product 7 was both the top revenue generator and the largest source of discount loss.
- Revenue showed strong growth through 2017.
- Customer retention is the clearest growth opportunity, with only 131 repeat customers out of 1,445.
- Basket size suggests room for bundling and cross-sell strategies.

## SQL Skills Demonstrated
- Joins (`INNER JOIN`, `LEFT JOIN`)
- Aggregations (`SUM`, `COUNT`, `AVG`)
- `GROUP BY` and `HAVING`
- Subqueries
- Common Table Expressions (CTEs)
- Date functions (`DATE_FORMAT`, `MONTH`)
- Sorting and filtering with `ORDER BY`
- Business-focused SQL analysis

## Revenue Formula
```sql
quantity * list_price * (1 - discount)
```

## Files
- `queries.sql` — SQL queries used in the project
- `SQL_Project_Report.docx` — written project report

## Portfolio Value
This project demonstrates the ability to work with relational sales data, write business-focused SQL queries, calculate key performance metrics, and translate query results into clear recommendations.
