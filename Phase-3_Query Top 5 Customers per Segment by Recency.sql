WITH ranked_customers AS (
    SELECT
        customer_id,
        segment_label,
        recency,
        ROW_NUMBER() OVER(PARTITION BY segment_label ORDER BY recency ASC) AS recency_rank
    FROM
        customer_data
)
SELECT
    customer_id,
    segment_label,
    recency
FROM
    ranked_customers
WHERE
    recency_rank <= 5
ORDER BY
    segment_label, recency ASC;