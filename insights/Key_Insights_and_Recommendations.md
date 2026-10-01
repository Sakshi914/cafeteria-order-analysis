# Cafeteria Order Data Analysis – Key Insights & Recommendations

## 1. Key Insights

### Branch Performance

* Branch 2 recorded the highest number of sampled orders: **69,203 (46.14%)**.
* Branch 1 recorded **60,505 orders (40.34%)**.
* Together, Branches 1 and 2 contributed approximately **86.5% of sampled orders** and **88.02% of sampled revenue**.
* Branch 1 had a higher average order value (**₹68.46**) than Branch 2 (**₹59.86**), while their sampled revenues were almost equal.

### Peak Ordering Hours

* The highest sampled order volume was observed at **7 PM**, with **18,329 orders**.
* Other high-volume periods were **11 PM (15,816)**, **10 PM (15,411)**, and **6 PM (13,961)**.
* Overall, the data shows a strong observed ordering period between approximately **6 PM and 11 PM**.
* Average order value was also relatively high during the evening, reaching approximately **₹79 at 6–7 PM**.

### Ordering Channels

* The **mobile app** accounted for **60.97%** of sampled orders, making it the largest observed ordering channel.
* SOK represented **21.67%** and POS represented **17.36%** of sampled orders.
* SOK had the highest average order value at approximately **₹79.20**, compared with **₹63.60** for POS and **₹56.65** for the mobile app.

### Payment Behavior

* **Paytm** was the most frequently observed payment method, accounting for **40.89%** of sampled orders.
* **UPI** accounted for **20.15%**.
* Combined, Paytm and UPI represented approximately **61.04%** of sampled orders.
* Payment labels such as `upi`/`UPI`, `paytm`/`Paytm`, and similar variations were standardized during data cleaning.

---

## 2. Business Recommendations

### 1. Plan Capacity Around Evening Demand

The observed 6 PM–11 PM period has substantially higher order volume. Staffing, food preparation, and counter capacity can therefore be reviewed for this period.

### 2. Investigate Branch 1's Higher Average Order Value

Branch 1 has fewer sampled orders than Branch 2 but a higher average order value. Further analysis of item-level and category-level data could help identify the products or combinations contributing to this difference.

### 3. Prioritize Digital Payment Reliability

Since Paytm and UPI together account for more than 60% of sampled orders, reliable digital-payment infrastructure and monitoring should be treated as an important operational consideration.

### 4. Investigate Channel-Level Differences

The higher average order value observed through SOK compared with the mobile app and POS can be investigated further using validated item, category, and customer-level relationships.

---

## 3. Forecasting Limitation

A 7-day forecast was not treated as statistically reliable because the analysis used a **150,000-row extract sampled across multiple periods rather than a continuous daily time series**.

A reliable forecasting model should be developed using the complete continuous daily order history, with sufficient observations for seasonality and trend analysis.

---

## 4. Data & Analysis Limitations

* The analysis was based on a 150,000-row extract from a much larger SQL dataset.
* The extracted periods were not continuous, so monthly and daily totals should not be interpreted as complete period totals.
* All extracted records had the same observed order status (`3`), so comparisons between completed and cancelled orders could not be performed.
* The `carts` table contained `dish_id` but did not provide a validated direct `order_id` relationship in the available schema. Therefore, item-level sales conclusions were not presented without a reliable join.
* Missing discount values were handled as `0` for the working analysis, while missing payment values were labelled as `Unknown`.

---

## 5. Conclusion

The analysis highlights three important operational patterns: **Branches 1 and 2 account for most observed activity, evening hours have the highest observed order volume, and digital payment channels dominate the transaction mix.**

The analysis also demonstrates the importance of validating database relationships before combining tables. With access to a complete continuous dataset and validated order-item relationships, the analysis could be extended to reliable 7-day forecasting, menu-level sales analysis, customer segmentation, and more detailed operational planning.
