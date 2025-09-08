SELECT
    segment_label,
    AVG(session_count) AS avg_session_count
FROM
    customer_data
GROUP BY
    segment_label
ORDER BY
    avg_session_count DESC;