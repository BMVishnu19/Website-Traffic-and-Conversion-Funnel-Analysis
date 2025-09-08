SELECT
    AVG(wishlist_adds) AS avg_wishlist_adds,
    AVG(returns) AS avg_returns
FROM
    customer_data
WHERE
    returns > (SELECT AVG(returns) FROM customer_data);