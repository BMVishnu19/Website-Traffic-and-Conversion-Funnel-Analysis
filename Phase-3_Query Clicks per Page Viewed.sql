SELECT
    segment_label,
    AVG(CAST(clicks AS REAL) / pages_viewed) AS avg_clicks_per_page
FROM
    customer_data
WHERE
    pages_viewed > 0
GROUP BY
    segment_label
ORDER BY
    avg_clicks_per_page DESC;