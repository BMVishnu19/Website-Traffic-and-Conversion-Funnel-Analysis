WITH overall_average AS (
    SELECT AVG(monetary) AS total_avg_monetary
    FROM customer_data
)
SELECT
    c.segment_label,
    AVG(c.monetary) AS segment_avg_monetary,
    o.total_avg_monetary,
    AVG(c.monetary) - o.total_avg_monetary AS difference_from_avg
FROM
    customer_data c
CROSS JOIN
    overall_average o
GROUP BY
    c.segment_label, o.total_avg_monetary
ORDER BY
    difference_from_avg DESC;