# Phase 1: Data Cleaning & Analysis in Excel

## What This Phase Was About
Before moving to SQL or Power BI, the raw dataset was cleaned and 
explored in Excel. The dataset had 3,203 rows and 17 columns covering 
Amazon and Walmart sales records.

---

## Part 1 — Data Cleaning

**Removed Duplicate Records**
Checked for duplicate Order IDs using Excel's Remove Duplicates feature
to make sure each transaction was counted only once.

**Handled Missing Values**
Went through each column and identified blank or null cells.
Rows with critical missing data like missing Sales or Order ID were removed.

**Fixed Date Formats**
Order_Date and Ship_Date columns had inconsistent formats.
Standardized both columns so they could work correctly in SQL and Power BI.

**Created New Columns**
Added these derived columns to support deeper analysis:
- `Delivery_Days` — difference between Ship_Date and Order_Date
- `Profit_Margin` — calculated as (Profit / Sales) × 100
- `Order_Size` — categorized orders as High, Medium, or Low based on sales value
- `Year_col` — extracted year from Order_Date
- `Month_col` — extracted month name from Order_Date

**Final Check**
Made sure all numeric columns (Sales, Profit, Quantity) had correct 
number format with no mixed text values.

---

## Part 2 — Pivot Tables & Charts

Four pivot tables were created on separate sheets to answer 
key business questions from the data.

---

### Pivot Table 1 — Sales & Profit by Category
**What it shows:** Total Sales and Total Profit broken down by each product Category.

**Chart used:** Clustered Bar Chart
**Why this chart:** Bar charts make it easy to compare values across multiple 
categories side by side. Since we had 5+ categories, a bar chart is cleaner 
and more readable than a pie chart for this kind of comparison.

---

### Pivot Table 2 — Monthly Revenue Trend
**What it shows:** Total Sales for each month across all years to see 
seasonal patterns and growth over time.

**Chart used:** Line Chart
**Why this chart:** Line charts are the best choice for showing trends over time. 
They clearly show whether sales are going up, down, or staying flat month by month. 
A bar chart would have worked too but line charts feel more natural for time-based data.

---

### Pivot Table 3 — Sales by State (Geographic View)
**What it shows:** Which states are generating the most revenue 
to identify high-performing and low-performing regions.

**Chart used:** Bar Chart (sorted highest to lowest)
**Why this chart:** Since we are comparing sales across many different states, 
a sorted bar chart immediately shows which states are at the top and which 
are at the bottom. Sorting it makes it much more useful than an unsorted table.

---

### Pivot Table 4 — Top Products by Profit
**What it shows:** Which individual products are the most profitable 
to help identify the best-selling and highest-margin items.

**Chart used:** Horizontal Bar Chart (Top 10 filtered)
**Why this chart:** Horizontal bars work better than vertical bars when 
product names are long — the names fit cleanly on the left side without 
overlapping. Filtering to Top 10 keeps the chart focused and not cluttered.

---

## Part 3 — Dataset Columns Reference
| Column | Description |
|--------|-------------|
| Order_ID | Unique order identifier |
| Order_Date | Date the order was placed |
| Ship_Date | Date the order was shipped |
| EmailID | Customer email |
| Country | Country of order |
| City | City of order |
| State_Name | State of order |
| Category | Product category |
| Product_Name | Name of the product |
| Sales | Revenue from the order |
| Profit | Profit from the order |
| Quantity | Number of items ordered |
| Year_col | Extracted year |
| Month_col | Extracted month |
| Delivery_Days | Days taken to deliver |
| Profit_Margin | Profit as % of sales |
| Order_Size | High / Medium / Low value order |

---

## Tools & Skills Used
- Microsoft Excel
- Pivot Tables, Pivot Charts
- Data Cleaning, Feature Engineering
- Formulas: `SUMIF`, `COUNTIF`, `AVERAGEIF`, `YEAR`, `TEXT`

---

## 🚀 Next Steps
With the data cleaned and validated, the dataset is ready to be imported into SQL for advanced querying and subsequent dashboard development in Power BI.
