# Project 3: SQL Data Analysis

## Description
This project uses SQL to extract insights from the same e-commerce orders dataset used in Projects 1 and 2 (1,200 records, Jan 2023–Jun 2025). Instead of Excel, the analysis is done directly against a relational database using structured queries — writing SELECT statements, filtering with WHERE, sorting with ORDER BY, and aggregating with GROUP BY, COUNT, SUM, and AVG.

The queries cover:
- **Basic SELECT** statements to view full and partial data
- **WHERE filtering** — isolating cancelled orders, high-value orders, payment/status combinations, and product + referral source combinations
- **ORDER BY sorting** — highest-value orders, chronological order, and top 10 rankings
- **GROUP BY aggregations** — order counts, total revenue, and average order value broken down by Product, Payment Method, Order Status, Referral Source, and Month
- **Combined queries** — WHERE + GROUP BY + ORDER BY together to answer multi-part business questions

## Key Findings
- Total orders: 1,200, confirmed via `SELECT COUNT(*)`
- Highest single order value: $3,456.40 (matches the outlier identified in Project 2)
- Printer (181), Tablet (179), and Chair (178) are the top-selling products by order count
- Online ($206,263.57) and Cash ($203,885.58) are the highest-revenue payment methods, excluding cancelled orders
- Among delivered orders, Printer has the highest average order value ($1,312.23), while Desk has the lowest ($757.06)
- Cancelled (250) and Returned (247) remain the two most common order statuses
- Monthly order volume ranges from 27 to 53 orders with no clear seasonal trend, confirming the pattern first seen in Project 2

## How to Run
1. Open **SQL Server Management Studio (SSMS)** and connect to your local server
2. Open `project3_queries.sql`
3. Run **STEP 1** and **STEP 2** first (creates the `DecodeLabsOrders` database and the `orders` table)
4. Import the dataset: right-click **DecodeLabsOrders** → **Tasks** → **Import Flat File...** → select `orders.csv` → map it to the `orders` table
5. Run each query in **Sections A–E** individually (highlight a query, press F5) to view its results

## Tools Used
- Microsoft SQL Server Management Studio (SSMS)
- T-SQL (SELECT, WHERE, ORDER BY, GROUP BY, HAVING, COUNT, SUM, AVG, FORMAT)

## Author
Aliu Faridat Ajoke — Data Analytics Intern, DecodeLabs Tech
