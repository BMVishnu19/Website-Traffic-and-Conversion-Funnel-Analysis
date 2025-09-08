SELECT
    CASE WHEN frequency > 0 THEN 'Converter' ELSE 'Non-Converter' END AS user_type,
    AVG(pages_viewed) AS average_pages_viewed,
    AVG(clicks) AS average_clicks,
    AVG(session_count) AS average_sessions
FROM
    customer_data
GROUP BY
    user_type;