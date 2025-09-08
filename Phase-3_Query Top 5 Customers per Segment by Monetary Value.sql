WITH ranked_customers AS (
    SELECT
        customer_id,
        segment_label,
        monetary,
        ROW_NUMBER() OVER(PARTITION BY segment_label ORDER BY monetary DESC) AS monetary_rank
    FROM
        customer_data
)
SELECT
    customer_id,
    segment_label,
    monetary
FROM
    ranked_customers
WHERE
    monetary_rank <= 5
ORDER BY
    segment_label, monetary DESC;