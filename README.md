# Cafeteria Order Data Analysis 

Hi, I’m **Sakshi Adhikari**, and this is my submission for the internship challenge. The goal was to analyze a cafeteria order dataset, find meaningful business insights, and explore the possibility of forecasting the next 7 days of orders.

The dataset was large, and I faced challenges while importing and processing it in MySQL. Instead of repeatedly running heavy queries, I extracted manageable portions of the `orders` table and used Python and Pandas for the analysis.

For the full story, please read **Cafeteria_Order_Data_Analysis_Report.pdf**. It explains how I handled the database challenges, cleaned the data, performed the analysis, and worked through the forecasting limitation.

## Files

**Code**

* `Cafeteria_Order_Analysis.ipynb` – Python analysis and visualizations
* `sql_queries.sql` – SQL queries used for data extraction

**Insights**

* `Key_Insights_and_Recommendations.md` – Main findings and recommendations

**Report**

* `Cafeteria_Order_Data_Analysis_Report.pdf` – Full project report and experience

## Key Insights

* Branches 1 and 2 account for most of the sampled orders and revenue.
* The highest observed order activity was during the evening, especially around 18:00–23:00.
* The Mobile App was the largest ordering channel.
* SOK had the highest average order value among the observed channels.
* Paytm and UPI together accounted for around 61% of sampled orders.

## How I Did It

I started by exploring the large MySQL database and its available tables. Due to processing limitations, I created targeted extracts and analyzed **150,000 orders** using Python.

I cleaned the data, performed EDA, analyzed branches, ordering channels, payment methods and peak hours, and documented the limitations affecting forecasting.

**Submitted by:** Sakshi Adhikari
