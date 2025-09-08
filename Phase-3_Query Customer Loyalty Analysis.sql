SELECT
    segment_label,
    COUNT(customer_id) AS loyal_customer_count
FROM
    customer_data
WHERE
    recency <= (SELECT PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY recency) FROM customer_data)
    AND frequency >= (SELECT PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY frequency) FROM customer_data)
GROUP BY
    segment_label
ORDER BY
    loyal_customer_count DESC;