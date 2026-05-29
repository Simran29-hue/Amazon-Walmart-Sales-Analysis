# 📊 Phase 1: Data Preparation & Exploratory Analysis (Excel)

## Project Overview
Before running SQL queries or building Power BI dashboards, the raw data was validated. Spending 2–3 hours in Microsoft Excel to clean and structure the dataset ensured data accuracy and established a reliable foundation for further analysis.

---

## 🛠️ Data Cleaning & Feature Engineering
New columns were created to add business context and prevent incorrect insights:
* **Data Accuracy:** Converted raw data into a structured table (`Ctrl + T`) and removed duplicate rows based on `Order ID` to secure correct transaction counts.
* **Time-Series Tracking:** Extracted `Year` and `Month` from order dates to allow for historical trend and seasonal analysis.
* **Performance Metrics:** Added a calculated `Profit Margin %` column to evaluate true product profitability instead of just looking at raw sales volume.
* **Visual Auditing:** Applied conditional formatting (red/green) to quickly identify financial losses and top-performing items.

---

## 📈 Pivot Table Analysis
Four dedicated pivot tables and charts were built on separate sheets to answer key business questions:
* **Product Performance:** Analyzed sales and profit by `Category` and `Sub-Category` to identify top revenue drivers and low-performing products.
* **Revenue Trend:** Tracked monthly sales trends over time using a line chart to visualize seasonal growth patterns.
* **Geographic Analysis:** Drilled down from `Region` to `State` to find locations where high operational costs reduce profit margins.
* **Customer Segments:** Analyzed purchasing behavior by buyer types to find the most valuable audience segments.
* **Executive Summary:** Created a main dashboard sheet using `SUMIF`, `COUNTIF`, and `AVERAGEIF` formulas for a quick view of core business KPIs.

---

## 💻 Technical Toolkit
* **Software:** Microsoft Excel
* **Core Skills:** Data Cleaning, Feature Engineering, Pivot Tables & Charts, Conditional Formatting
* **Formulas Used:** `SUMIF`, `COUNTIF`, `AVERAGEIF`, `YEAR`, `TEXT`

---

## 🚀 Next Steps
With the data cleaned and validated, the dataset is ready to be imported into SQL for advanced querying and subsequent dashboard development in Power BI.
