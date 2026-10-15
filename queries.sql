-- 1. Category & Sub-Category Margin Analysis (Identifying Loss-Making Lines)
SELECT 
    Category,
    Sub_Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND((SUM(Profit) * 100.0 / NULLIF(SUM(Sales), 0)), 2) AS profit_margin_pct
FROM ecommerce_sales
GROUP BY Category, Sub_Category
ORDER BY profit_margin_pct ASC;

-- 2. Regional Sales, Profit, and Discount Sensitivity
SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(AVG(Discount) * 100, 2) AS avg_discount_pct
FROM ecommerce_sales
GROUP BY Region
ORDER BY total_profit DESC;

-- 3. High-Discount Transaction Impact (Discount >= 30%)
SELECT 
    Segment,
    COUNT(*) AS total_discounted_orders,
    ROUND(SUM(Sales), 2) AS discounted_sales,
    ROUND(SUM(Profit), 2) AS total_loss
FROM ecommerce_sales
WHERE Discount >= 0.30
GROUP BY Segment
ORDER BY total_loss ASC;

-- 4. Monthly Revenue & Month-over-Month (MoM) Growth Trajectory
WITH monthly_summary AS (
    SELECT 
        DATE_FORMAT(Order_Date, '%Y-%m') AS sale_month,
        ROUND(SUM(Sales), 2) AS current_revenue
    FROM ecommerce_sales
    GROUP BY sale_month
)
SELECT 
    sale_month,
    current_revenue,
    LAG(current_revenue, 1) OVER (ORDER BY sale_month) AS previous_month_revenue,
    ROUND(((current_revenue - LAG(current_revenue, 1) OVER (ORDER BY sale_month)) 
           / NULLIF(LAG(current_revenue, 1) OVER (ORDER BY sale_month), 0)) * 100, 2) AS mom_growth_pct
FROM monthly_summary;

-- 5. Top 3 Sub-Categories by Sales per Category (Window Ranking)
WITH ranked_categories AS (
    SELECT 
        Category,
        Sub_Category,
        ROUND(SUM(Sales), 2) AS total_sales,
        DENSE_RANK() OVER (PARTITION BY Category ORDER BY SUM(Sales) DESC) AS rank_in_category
    FROM ecommerce_sales
    GROUP BY Category, Sub_Category
)
SELECT 
    Category,
    Sub_Category,
    total_sales
FROM ranked_categories
WHERE rank_in_category <= 3;
