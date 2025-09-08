SELECT customer_id, wishlist_adds, monetary
FROM customer_data
ORDER BY wishlist_adds DESC
LIMIT 5;