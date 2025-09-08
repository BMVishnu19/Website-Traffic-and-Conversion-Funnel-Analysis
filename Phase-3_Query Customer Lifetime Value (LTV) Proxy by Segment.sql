SELECT
    segment_label,
    AVG(frequency * avg_order_value) AS avg_ltv_proxy
FROM
    customer_data
GROUP BY
    segment_label
ORDER BY
    avg_ltv_proxy DESC;