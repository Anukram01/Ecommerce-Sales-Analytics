-- 1. Category & Sub-Category Margin Analysis (Identifying Loss-Making Lines)
SELECT 
    Category,
    Sub_Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND((SUM(Profit) * 100.0 / SUM(Sales)), 2) AS profit_margin_pct
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
