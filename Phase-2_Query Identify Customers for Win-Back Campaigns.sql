SELECT
    customer_id, recency, frequency, monetary
FROM
    customer_data
WHERE
    recency > 180 -- Customers who haven't purchased in a long time
    AND frequency > 10 -- Were frequent shoppers
    AND monetary > 1000 -- Were high-value spenders
ORDER BY
    recency ASC;