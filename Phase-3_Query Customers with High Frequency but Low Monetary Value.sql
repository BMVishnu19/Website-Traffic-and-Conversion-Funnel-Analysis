SELECT
    customer_id,
    segment_label,
    frequency,
    monetary
FROM
    customer_data
WHERE
    frequency >= (SELECT AVG(frequency) * 1.5 FROM customer_data)
    AND monetary <= (SELECT AVG(monetary) * 0.5 FROM customer_data)
ORDER BY
    frequency DESC;