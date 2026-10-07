# 🛍️ E-Commerce Sales & Profitability Analytics

### 📌 Project Overview
An end-to-end business intelligence and data analytics project analyzing e-commerce transactions across customer segments, geographical regions, and merchandise categories. The core focus is isolating margin compression, discount sensitivity, and regional profit drivers.

---

### 🔍 Key Business Insights
- **Discount Threshold & Margin Erosion:** Profit margins remain positive up to a 20% discount rate; discounting at or above 30% directly drives margins into negative territory (-25% to -50%).
- **Category Profit Performance:** High revenue categories do not uniformly translate to high net margins due to product-level markdown variance.
- **Segment Contribution:** Consumer segment accounts for the largest share of overall gross merchandise value (GMV), followed by Corporate and Home Office.

---

### 🛠️ Tech Stack
- **Languages:** Python (Pandas, NumPy, Matplotlib, Seaborn), SQL
- **Database / Engine:** In-memory SQLite
- **Environment:** Google Colab / Jupyter Notebook

---

### 📊 SQL Analytical Highlights
Included in `queries.sql`:
1. **Category Profit Margins:** Identifies loss-making inventory lines using aggregated sales and net profit margins.
2. **Regional Margin & Discount Behavior:** Correlates average regional discount percentages with net profit generation.
3. **High-Discount Impact:** Isolates orders discounted at >= 30% to quantify direct margin loss by customer segment.
   
