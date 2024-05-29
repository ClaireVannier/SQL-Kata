SELECT orders.order_id, dish.name AS dish_name, order_detail.quantity, order_detail.price
FROM orders
JOIN order_detail ON orders.order_id = order_detail.order_id
JOIN dish ON order_detail.dish_id = dish.dish_id
WHERE orders.order_id = (SELECT MAX(order_id) FROM orders);
