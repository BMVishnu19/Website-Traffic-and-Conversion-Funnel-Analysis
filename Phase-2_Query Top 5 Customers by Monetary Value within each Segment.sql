SELECT
    segment_label,
    customer_id,
    monetary
FROM (
    SELECT
        segment_label,
        customer_id,
        monetary,
        ROW_NUMBER() OVER (PARTITION BY segment_label ORDER BY monetary DESC) AS rn
    FROM
        customer_data
) AS ranked_data
WHERE
    rn <= 5
ORDER BY
    segment_label, monetary DESC;