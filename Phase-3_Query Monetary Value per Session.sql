SELECT
    segment_label,
    AVG(CAST(monetary AS REAL) / session_count) AS avg_monetary_per_session
FROM
    customer_data
WHERE
    session_count > 0
GROUP BY
    segment_label
ORDER BY
    avg_monetary_per_session DESC;