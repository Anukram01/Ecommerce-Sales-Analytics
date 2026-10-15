# 🛒 E-Commerce Sales & Customer Segmentation Analytics

An end-to-end data analytics project evaluating transaction performance, category profitability, discount sensitivity, and customer lifetime value using **SQL (MySQL)** and **Python (Pandas, Seaborn)**.

---

## 📌 Business Problem & Objectives
Modern e-commerce platforms often encounter revenue leakages driven by heavy discounting, uneven regional margins, and increasing customer churn. This project provides analytical solutions to:
- Identify loss-making product categories and evaluate discount threshold risks.
- Analyze month-over-month (MoM) revenue trajectory and running sales totals.
- Classify customers via RFM (Recency, Frequency, Monetary) modeling for targeted retention strategies.

---

## 🛠️ Tech Stack & Analytical Methods
- **Database Engine & Queries:** MySQL / SQLite (Window Functions: `LAG`, `DENSE_RANK`, CTEs, Safe Margin Aggregations)
- **Data Wrangling & Analysis:** Python (`pandas`, `numpy`)
- **Visual Analytics:** `seaborn`, `matplotlib`
- **Analytics Frameworks:** RFM Segmentation, Margin Sensitivity Analysis, MoM Trajectory

---

## 💡 Key Business Findings
1. **Discount Threshold Risks:** Transactions with discounts $\ge$ 30% contributed disproportionately to negative margins, particularly across consumer furniture lines.
2. **Revenue Concentration:** The Consumer segment accounts for 51.3% of total platform revenue, followed by Corporate (28.0%) and Home Office (20.8%).
3. **Category Margins:** Technology and Office Supplies maintain steady margins, while specific furniture sub-categories operate near loss thresholds due to logistics and markdown practices.
4. **Retention Opportunities:** RFM segmentation categorized buyers into actionable personas (Champions, Potential Loyalists, At Risk, and Lost), pinpointing high-value churn risks before complete attrition.

---

## 📂 Repository Contents
- `Ecommerce_Sales_Analytics.ipynb` : Cleaned pipeline, exploratory analysis, profit distributions, and RFM modeling.
- `queries.sql` : Production-grade SQL queries analyzing product ranking, margin leaks, and growth trajectories.
- `README.md` : Project documentation, key findings, and strategic business takeaways.

---

## 🚀 How to Run Locally
1. Clone the repository:
git clone https://github.com/Anukram01/Ecommerce-Sales-Analytics.git
cd Ecommerce-Sales-Analytics
pip install pandas numpy matplotlib seaborn
jupyter notebook Ecommerce_Sales_Analytics.ipynb
