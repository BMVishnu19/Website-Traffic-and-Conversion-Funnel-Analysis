SELECT
    customer_id,
    segment_label,
    recency,
    cart_abandon_rate
FROM
    customer_data
WHERE
    recency <= 30
    AND cart_abandon_rate > (SELECT AVG(cart_abandon_rate) FROM customer_data)
ORDER BY
    cart_abandon_rate DESC;