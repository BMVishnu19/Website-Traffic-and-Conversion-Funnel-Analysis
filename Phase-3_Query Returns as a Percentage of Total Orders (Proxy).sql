SELECT
    segment_label,
    SUM(returns) AS total_returns,
    SUM(frequency) AS total_orders,
    (CAST(SUM(returns) AS REAL) / SUM(frequency)) * 100 AS return_rate_percentage
FROM
    customer_data
WHERE
    frequency > 0
GROUP BY
    segment_label
ORDER BY
    return_rate_percentage DESC;