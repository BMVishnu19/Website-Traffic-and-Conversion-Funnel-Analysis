SELECT
    segment_label,
    CASE
        WHEN recency <= 30 THEN '0-30 days'
        WHEN recency > 30 AND recency <= 90 THEN '31-90 days'
        WHEN recency > 90 AND recency <= 180 THEN '91-180 days'
        ELSE '180+ days'
    END AS recency_bucket,
    COUNT(customer_id) AS customer_count
FROM
    customer_data
GROUP BY
    segment_label, recency_bucket
ORDER BY
    segment_label, recency_bucket;