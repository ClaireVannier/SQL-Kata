-- Insert data into user table
INSERT INTO user (name, email, password) VALUES
('John Doe', 'john.doe@example.com', 'password123'),
('Jane Smith', 'jane.smith@example.com', 'password456');

-- Insert data into restaurant table
INSERT INTO restaurant (name, address) VALUES
('Restaurant A', '123 Main St'),
('Restaurant B', '456 Elm St');

-- Insert data into menu table
INSERT INTO menu (restaurant_id, name) VALUES
(1, 'Lunch Menu'),
(2, 'Dinner Menu');

-- Insert data into dish table
INSERT INTO dish (menu_id, name, price) VALUES
(1, 'Burger', 8.99),
(1, 'Salad', 6.99),
(2, 'Steak', 14.99),
(2, 'Pasta', 11.99);

-- Insert data into orders table
INSERT INTO orders (user_id, restaurant_id, order_date) VALUES
(1, 1, '2024-05-29 12:34:56'),
(2, 2, '2024-05-29 13:45:07');

-- Verify orders table data before inserting into order_detail
SELECT * FROM orders;

-- Insert data into order_detail table
INSERT INTO order_detail (order_id, dish_id, quantity, price) VALUES
(1, 1, 2, 17.98),
(1, 2, 1, 6.99),
(2, 3, 1, 14.99),
(2, 4, 2, 23.98);

-- Insert data into review table
INSERT INTO review (user_id, restaurant_id, rating, comment, review_date) VALUES
(1, 1, 5, 'Great food!', '2024-05-29 14:56:00'),
(2, 2, 4, 'Good service.', '2024-05-29 15:12:00');
