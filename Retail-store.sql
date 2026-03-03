USE superstore_analysis;
SELECT COUNT(*) FROM `sample - superstore`;
SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Profit_Margin_Pct,
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM `sample - superstore`
GROUP BY Category
ORDER BY Total_Profit DESC;

SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Profit_Margin_Pct,
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM `sample - superstore`
GROUP BY Region
ORDER BY Total_Profit ASC;

SELECT 
    `Product Name`,
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(Discount) * 100, 1) AS Avg_Discount_Pct,
    SUM(Quantity) AS Units_Sold
FROM `sample - superstore`
GROUP BY `Product Name`, Category
HAVING Total_Sales > 1000 AND Total_Profit < 0
ORDER BY Total_Profit ASC
LIMIT 10;

SELECT 
    `Customer Name`,
    Segment,
    Region,
    ROUND(SUM(Sales), 2) AS Lifetime_Value,
    COUNT(DISTINCT `Order ID`) AS Total_Orders,
    ROUND(SUM(Profit), 2) AS Total_Profit_Generated
FROM `sample - superstore`
GROUP BY `Customer Name`, Segment, Region
ORDER BY Lifetime_Value DESC
LIMIT 10;

SELECT 
    `Sub-Category`,
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Margin_Pct,
    COUNT(DISTINCT `Order ID`) AS Orders
FROM `sample - superstore`
GROUP BY `Sub-Category`, Category
ORDER BY Margin_Pct DESC;

SELECT 
    CASE 
        WHEN Discount = 0 THEN '0% - No Discount'
        WHEN Discount <= 0.2 THEN '1-20% Discount'
        WHEN Discount <= 0.4 THEN '21-40% Discount'
        ELSE '40%+ Heavy Discount'
    END AS Discount_Tier,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(Profit), 2) AS Avg_Profit_Per_Order
FROM `sample - superstore`
GROUP BY Discount_Tier
ORDER BY Total_Profit DESC;