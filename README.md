# 🛒 E-Commerce Sales & Customer Segmentation Analytics

An end-to-end data analytics project evaluating transaction performance, category profitability, discount sensitivity, and customer lifetime value using **SQL (MySQL)** and **Python (Pandas, Seaborn)**.

---

## 📊 Executive Summary & Key Metrics

| Metric | Value | Business Takeaway |
| :--- | :--- | :--- |
| **Total Revenue** | $363,204.39 | Consumer segment generates 51.3% of total revenue |
| **Net Profit** | $33,956.83 | 9.35% overall net profit margin |
| **Discount Threshold** | < 30% | Discounts $\ge$ 30% erode furniture margins below 0% |
| **Active Segments** | 4 RFM Personas | Champions drive recurring order volume |

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
<img width="707" height="393" alt="1000094335" src="https://github.com/user-attachments/assets/eff25e33-d625-4030-b143-28caaed0902d" />

---

## 🎯 Strategic Business Recommendations
1. **Dynamic Discount Caps:** Cap promotional discounts at 25% for high-shipping-cost categories (Tables, Bookcases) to protect gross margins.
2. **Targeted Retention Campaigns:** Trigger automated re-engagement workflows for customers in the "At Risk" RFM bucket before the 90-day inactivity threshold.
3. **Cross-Sell Incentives:** Bundle high-margin Technology accessories with Consumer Office Supplies to lift average order value (AOV).

### 🎯 What-If Strategic Simulation: Discount Capping
To address margin erosion caused by aggressive discounting (≥30%), a simulation model was executed capping maximum discounts at 25%:

| Metric | Baseline | Post-Simulation (25% Cap) | Net Impact |
| :--- | :--- | :--- | :--- |
| **Net Profit** | $33,956.83 | $81,356.96 | **+$47,400.13 (+139.6%)** |

> **Key Takeaway:** Strategic discount thresholding eliminates severe losses in margin-eroding lines while preserving volume among high-value customer cohorts.
> 
---

## 📂 Repository Contents
- `Ecommerce_Sales_Analytics.ipynb` : Cleaned pipeline, exploratory analysis, profit distributions, and RFM modeling.
- `queries.sql` : Production-grade SQL queries analyzing product ranking, margin leaks, and growth trajectories.
- `README.md` : Project documentation, key findings, and strategic business takeaways.

---

## 🚀 How to Run Locally
git clone https://github.com/Anukram01/Ecommerce-Sales-Analytics.git
cd Ecommerce-Sales-Analytics
pip install pandas numpy matplotlib seaborn
jupyter notebook Ecommerce_Sales_Analytics.ipynb
