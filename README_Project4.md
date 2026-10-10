# Project 4: Data Visualization

## Description
This project visualizes the same e-commerce orders dataset used in Projects 1–3 (1,200 records, Jan 2023–Jun 2025) using Power BI. A single-page interactive dashboard was built to highlight patterns in product performance, order trends over time, and payment method distribution — turning the raw data explored in earlier projects into a clear visual story.

The dashboard includes:
- **Bar chart — Orders by Product**: compares order counts across all 7 products, the right choice for comparing discrete categories
- **Line chart — Monthly Order Trend (Jan 2023 – Jun 2025)**: tracks order volume over time, the right choice for showing change across a continuous timeline
- **Pie chart — Orders by Payment Method**: shows the share of orders across 5 payment methods (Online, Cash, Credit Card, Debit Card, Gift Card), the right choice for a small number of categories making up a whole
- **Caption labels** under each chart calling out the specific insight it shows
- **Key Insights panel** summarizing the main takeaways from the data

## Key Findings
- Printer leads with 181 orders, followed by Tablet (179) and Chair (178)
- Monthly order volume ranges from ~27 to 53, with no strong seasonal pattern
- Online and Cash are the top payment methods, each used in about 1 in 5 orders
- Payment methods overall are fairly evenly split across Online, Cash, Credit Card, Debit Card, and Gift Card
- Cancelled and Returned orders together make up over 40% of all orders

## How to Run
1. Open `Project4_Dashboard.pbix` in Power BI Desktop
2. The data is loaded from the **Cleaned_Data** sheet of the Project 2 Excel workbook (`Dataset for Data Analytics.xlsx`)
3. All three visuals are on Page 1 and update automatically if the source data changes — click **Refresh** on the Home tab to pull in any updates

## Tools Used
- Microsoft Power BI Desktop (Get Data, Clustered Column Chart, Line Chart, Pie Chart, Text Boxes)

## Author
Aliu Faridat Ajoke — Data Analytics Intern, DecodeLabs Tech
