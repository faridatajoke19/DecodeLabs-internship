# Project 2: Exploratory Data Analysis (EDA)

## Description
This project performs exploratory data analysis on a cleaned e-commerce orders dataset (1,200 records, Jan 2023–Jun 2025). It uncovers patterns in sales, customer behavior, and order fulfillment using Excel.

The analysis covers:
- **Descriptive statistics** (mean, median, mode, min, max, sum) for Quantity, Unit Price, Items in Cart, and Total Price
- **Pivot tables** breaking down orders by Product, Order Status, Payment Method, and Referral Source
- **Monthly trend analysis** tracking order volume from Jan 2023 to Jun 2025
- **Outlier detection** using the IQR (Interquartile Range) method to flag statistically high-value orders

## Key Findings
- Total orders: 1,200, with no missing or duplicate records
- Average order value: $1,053.97 (median: $823.62) — order value is right-skewed by a small number of large orders
- Printer, Chair, and Tablet are the most ordered products
- Cancelled and Returned orders together make up 41.4% of all orders
- Monthly order volume is steady (27–53 orders/month) with no clear seasonal trend
- 8 orders exceed the IQR upper bound ($3,330.41) — all verified as legitimate high-value orders, not data errors

## How to Run
1. Open the Excel workbook (`Dataset for Data Analytics.xlsx`) in Microsoft Excel
2. Navigate between sheets using the tabs at the bottom:
   - **Cleaned_Data** — source dataset
   - **pivotTable** — category breakdowns and monthly trend chart
   - **Outlier Detection** — IQR bounds and outlier analysis
   - **Basic Statistics** — descriptive statistics summary
3. All statistics are calculated using live Excel formulas (`AVERAGE`, `MEDIAN`, `MODE`, `QUARTILE`, etc.) referencing the Cleaned_Data sheet — no external tools or code required

## Tools Used
- Microsoft Excel (PivotTables, formulas, conditional formatting)

## Author
Aliu Faridat Ajoke — Data Analytics Intern, DecodeLabs Tech
