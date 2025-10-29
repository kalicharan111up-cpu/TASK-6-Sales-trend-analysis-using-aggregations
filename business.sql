# Use EXTRACT(MONTH FROM order_date) for month.
SELECT * FROM startersql.business;
SELECT EXTRACT(MONTH FROM '2023-01-15') AS Month;
SELECT EXTRACT(MONTH FROM '2023-02-15') AS Month;
SELECT EXTRACT(MONTH FROM '2023-03-15') AS Month;
SELECT EXTRACT(MONTH FROM '2023-04-15') AS Month;
SELECT EXTRACT(MONTH FROM '2023-05-15') AS Month;
SELECT EXTRACT(MONTH FROM '2023-06-15') AS Month;
SELECT EXTRACT(MONTH FROM '2023-07-15') AS Month;
SELECT EXTRACT(MONTH FROM '2023-08-15') AS Month;
SELECT EXTRACT(MONTH FROM '2023-09-15') AS Month;
SELECT EXTRACT(MONTH FROM '2023-10-15') AS Month;
SELECT EXTRACT(MONTH FROM '2023-11-15') AS Month;
SELECT EXTRACT(MONTH FROM '2023-12-15') AS Month;

# GROUP BY year/month.
SELECT
   OrderDate(YEAR, 30-12-2018) AS Year,
   OrderDate(MONTH, 30-01-2018) AS Month,
   Category,
   COUNT(Status) AS TotalCount
FROM startersql.business
WHERE
   Closing_Date >= '2018-02-01'
   AND Closing_Date <= '2018-12-31'
   AND Defect_Status1 IS NOT NULL
GROUP BY
   OrderDate(YEAR, 30-12-2018),
   OrderDate(MONTH, 30-01-2018),
   Category;


# Use SUM() for revenue.
SELECT * FROM startersql.business;
SELECT SUM('profit * quantity') as total_revenue



# COUNT(DISTINCT order_id) for volume.
SELECT COUNT(DISTINCT 'Order_ID') AS volume
FROM startersql.business;



# Use ORDER BY for sorting.
SELECT *
FROM startersql.business
ORDER BY CustomerName ASC;
SELECT *
FROM startersql.business
ORDER BY CustomerName DESC;




# Limit results for specific time periods.
SELECT amount, profit
FROM startersql.business
WHERE amount>100 BETWEEN '09-01-2018' AND '09-05-2018'
LIMIT 100;
