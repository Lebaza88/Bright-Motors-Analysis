------------------------------------------------------------------------------------------------
SELECT 
    YEAR,
    MAKE,
    MODEL,
    TRIM,
    BODY,
    TRANSMISSION,
    STATE,
    CONDITION,
    CASE 
    WHEN condition BETWEEN 1 AND 10 THEN 'Poor'
    WHEN condition BETWEEN 11 AND 20 THEN 'Fair'
    WHEN condition BETWEEN 21 AND 30 THEN 'Good'
    WHEN condition BETWEEN 31 AND 50 THEN 'Excellent'
    ELSE 'Not Provided'
    END AS car_state,
    ODOMETER,
    CASE 
    WHEN ODOMETER < 449999 THEN 'Low Mileage'
    WHEN ODOMETER BETWEEN 450000 AND 889999 THEN 'Average Mileage'
    WHEN ODOMETER >= 900000 THEN 'High Mileage'
    ELSE 'Not Provided'
    END AS mileage_status,
    COLOR,
    INTERIOR,
    SELLER,
    MMR,
    SELLINGPRICE,
    (SELLINGPRICE - MMR) AS profit_and_loss_margin,
    ROUND( (SELLINGPRICE - MMR) / NULLIF(SELLINGPRICE,0) * 100 , 2 ) AS profit_and_loss_percentage,
    SUM(SELLINGPRICE - MMR) as revenue,
    -- Convert VARCHAR → TIMESTAMP correctly using SUBSTRING to extract date/time parts
    TO_TIMESTAMP(SUBSTRING(SALEDATE, 5), 'MMM dd yyyy HH:mm:ss') AS sale_timestamp,
    -- Extract date
    TO_DATE(TO_TIMESTAMP(SUBSTRING(SALEDATE, 5), 'MMM dd yyyy HH:mm:ss')) AS sale_date,
    -- Day name
    DAYNAME(TO_TIMESTAMP(SUBSTRING(SALEDATE, 5), 'MMM dd yyyy HH:mm:ss')) AS day_of_week,
    CASE
    WHEN DAYNAME(TO_TIMESTAMP(SUBSTRING(SALEDATE, 5), 'MMM dd yyyy HH:mm:ss')) IN ('Sat','Sun') THEN 'Weekend'
    ELSE 'Weekday'
    END AS time_of_the_week,
    MONTHNAME(TO_TIMESTAMP(SUBSTRING(SALEDATE, 5), 'MMM dd yyyy HH:mm:ss')) AS month_of_year,
    CASE
    WHEN MONTHNAME(TO_TIMESTAMP(SUBSTRING(SALEDATE, 5), 'MMM dd yyyy HH:mm:ss')) IN ('Dec','Jan','Feb') THEN 'Summer'
    WHEN MONTHNAME(TO_TIMESTAMP(SUBSTRING(SALEDATE, 5), 'MMM dd yyyy HH:mm:ss')) IN ('Mar', 'Apr', 'May') THEN 'Autumn'
    WHEN MONTHNAME(TO_TIMESTAMP(SUBSTRING(SALEDATE, 5), 'MMM dd yyyy HH:mm:ss')) IN ('Jun', 'Jul', 'Aug') THEN 'Winter'
    WHEN MONTHNAME(TO_TIMESTAMP(SUBSTRING(SALEDATE, 5), 'MMM dd yyyy HH:mm:ss')) IN ('Sep', 'Oct', 'Nov') THEN 'Spring'
    END AS season_of_the_year,
    -- Hour
    HOUR(TO_TIMESTAMP(SUBSTRING(SALEDATE, 5), 'MMM dd yyyy HH:mm:ss')) AS hour_of_the_day,
    CASE 
    WHEN HOUR(TO_TIMESTAMP(SUBSTRING(SALEDATE, 5), 'MMM dd yyyy HH:mm:ss')) BETWEEN 0 AND 11 THEN 'Morning'
    WHEN HOUR(TO_TIMESTAMP(SUBSTRING(SALEDATE, 5), 'MMM dd yyyy HH:mm:ss')) BETWEEN 12 AND 17 THEN 'Afternoon'
    ELSE 'Evening'
    END AS time_of_day
FROM workspace.default.car_sales_data
GROUP BY ALL;
