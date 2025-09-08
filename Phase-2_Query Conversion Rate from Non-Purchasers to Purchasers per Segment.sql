SELECT
    segment_label,
    SUM(CASE WHEN frequency > 0 THEN 1 ELSE 0 END) AS converting_customers,
    COUNT(customer_id) AS total_customers,
    CAST(SUM(CASE WHEN frequency > 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(customer_id) AS conversion_rate_percentage
FROM
    customer_data
GROUP BY
    segment_label
ORDER BY
    conversion_rate_percentage DESC;