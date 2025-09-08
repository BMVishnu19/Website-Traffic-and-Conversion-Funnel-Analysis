SELECT
    CASE
        WHEN monetary >= 1000 THEN 'High Value'
        WHEN monetary >= 500 AND monetary < 1000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS value_tier,
    AVG(cart_abandon_rate) AS avg_abandonment_rate
FROM
    customer_data
GROUP BY
    value_tier
ORDER BY
    avg_abandonment_rate DESC;