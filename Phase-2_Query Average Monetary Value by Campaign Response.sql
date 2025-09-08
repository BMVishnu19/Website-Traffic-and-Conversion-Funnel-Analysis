SELECT
    CASE WHEN campaign_response = 1 THEN 'Responded' ELSE 'Did Not Respond' END AS campaign_status,
    AVG(monetary) AS avg_monetary_value
FROM
    customer_data
GROUP BY
    campaign_status;