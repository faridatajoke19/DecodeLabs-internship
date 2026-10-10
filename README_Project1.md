# Project 1: Data Cleaning

## Description
This project cleans a raw e-commerce orders dataset (1,200 records) to prepare it for analysis in later projects. The cleaning process addressed missing values, duplicate records, and inconsistent data formats across dates, numbers, and text fields.

The cleaning covered:
- **Missing value check** across all 14 columns (OrderID, Date, CustomerID, Product, Quantity, UnitPrice, ShippingAddress, PaymentMethod, OrderStatus, TrackingNumber, ItemsInCart, CouponCode, ReferralSource, TotalPrice)
- **Duplicate detection** on both full rows and unique OrderIDs
- **Date formatting** — standardized all order dates to a consistent date format
- **Text consistency** — standardized spelling/casing across categorical columns (Product, PaymentMethod, OrderStatus, ReferralSource, CouponCode) so values aren't split by typos or inconsistent casing
- **Number formatting** — confirmed Quantity, UnitPrice, and TotalPrice are stored as proper numeric types, not text

## Key Findings
- Final cleaned dataset: 1,200 rows, 14 columns
- No missing or null values remain in any column
- No duplicate rows and no duplicate OrderIDs (1,200 unique OrderIDs for 1,200 rows)
- Dates range from Jan 1, 2023 to Jun 30, 2025, all in a consistent date format
- Categorical fields are clean and consistent, with no case or spelling inconsistencies:
  - **Product**: Chair, Desk, Laptop, Monitor, Phone, Printer, Tablet (7 values)
  - **PaymentMethod**: Cash, Credit Card, Debit Card, Gift Card, Online (5 values)
  - **OrderStatus**: Cancelled, Delivered, Pending, Returned, Shipped (5 values)
  - **ReferralSource**: Email, Facebook, Google, Instagram, Referral (5 values)
  - **CouponCode**: FREESHIP, N/A, SAVE10, WINTER15 (4 values)
- Quantity, UnitPrice, and TotalPrice are all properly numeric, ready for calculations in later projects

## How to Run
1. Open `Project1_Cleaned_Dataset.xlsx` in Microsoft Excel
2. The single sheet (`Sheet1`) contains the fully cleaned dataset, ready to use as the source for EDA, SQL analysis, or visualization in later projects
3. No further cleaning is required — all missing values, duplicates, and formatting issues have been resolved

## Tools Used
- Microsoft Excel (data cleaning, formatting, duplicate removal)

## Author
Aliu Faridat Ajoke — Data Analytics Intern, DecodeLabs Tech
