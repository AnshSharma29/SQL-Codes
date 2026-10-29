INSERT INTO customer (customer_id, full_name, email, phone, city, registered_on)
VALUES (101, 'Aarav Sharma', 'aarav.sharma@example.com', '9876500101', 'Delhi', DATE '2026-01-12');
INSERT INTO customer (customer_id, full_name, email, phone, city, registered_on)
VALUES (102, 'Priya Verma', 'priya.verma@example.com', '9876500102', 'Noida', DATE '2026-02-03');
INSERT INTO customer (customer_id, full_name, email, phone, city, registered_on)
VALUES (103, 'Rohan Gupta', 'rohan.gupta@example.com', '9876500103', 'Gurugram', DATE '2026-02-18');
INSERT INTO customer (customer_id, full_name, email, phone, city, registered_on)
VALUES (104, 'Sneha Singh', 'sneha.singh@example.com', '9876500104', 'Delhi', DATE '2026-03-07');
INSERT INTO customer (customer_id, full_name, email, phone, city, registered_on)
VALUES (105, 'Karan Mehta', 'karan.mehta@example.com', '9876500105', 'Ghaziabad',
        DATE '2026-04-21');
INSERT INTO customer (customer_id, full_name, email, phone, city, registered_on)
VALUES (106, 'Ananya Iyer', 'ananya.iyer@example.com', '9876500106', 'Delhi', DATE '2026-05-09');
INSERT INTO customer (customer_id, full_name, email, phone, city, registered_on)
VALUES (107, 'Vikram Malik', 'vikram.malik@example.com', '9876500107', 'Meerut', DATE '2026-06-15');
INSERT INTO customer (customer_id, full_name, email, phone, city, registered_on)
VALUES (108, 'Neha Kapoor', 'neha.kapoor@example.com', '9876500108', 'Noida', DATE '2026-07-02');
INSERT INTO customer (customer_id, full_name, email, phone, city, registered_on)
VALUES (109, 'Arjun Tyagi', 'arjun.tyagi@example.com', '9876500109', 'Meerut', DATE '2026-09-10');
INSERT INTO customer (customer_id, full_name, email, phone, city, registered_on)
VALUES (110, 'Simran Kaur', 'simran.kaur@example.com', '9876500110', 'Delhi', DATE '2026-09-24');
INSERT INTO restaurant (restaurant_id, restaurant_name, cuisine_type, city, rating, is_open)
VALUES (201, 'Spice Route', 'North Indian', 'Delhi', 4.4, 'Y');
INSERT INTO restaurant (restaurant_id, restaurant_name, cuisine_type, city, rating, is_open)
VALUES (202, 'Pizza Piazza', 'Italian', 'Noida', 4.1, 'Y');
INSERT INTO restaurant (restaurant_id, restaurant_name, cuisine_type, city, rating, is_open)
VALUES (203, 'Wok and Roll', 'Chinese', 'Gurugram', 3.9, 'Y');
INSERT INTO restaurant (restaurant_id, restaurant_name, cuisine_type, city, rating, is_open)
VALUES (204, 'Green Bowl', 'Healthy', 'Delhi', 4.3, 'Y');
INSERT INTO restaurant (restaurant_id, restaurant_name, cuisine_type, city, rating, is_open)
VALUES (205, 'Sweet Tooth Bakery', 'Desserts', 'Noida', 4.6, 'Y');
INSERT INTO restaurant (restaurant_id, restaurant_name, cuisine_type, city, rating, is_open)
VALUES (206, 'Burger Barn', 'Fast Food', 'Ghaziabad', 3.8, 'N');
INSERT INTO restaurant (restaurant_id, restaurant_name, cuisine_type, city, rating, is_open)
VALUES (207, 'Southern Spice', 'South Indian', 'Delhi', 4.2, 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (301, 201, 'Butter Chicken', 'Main Course', 320, 'N', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (302, 201, 'Paneer Tikka', 'Starter', 240, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (303, 201, 'Dal Makhani', 'Main Course', 210, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (304, 201, 'Garlic Naan', 'Bread', 45, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (305, 201, 'Chicken Biryani', 'Rice', 290, 'N', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (306, 202, 'Margherita Pizza', 'Pizza', 249, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (307, 202, 'Farmhouse Pizza', 'Pizza', 329, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (308, 202, 'Pepperoni Pizza', 'Pizza', 379, 'N', 'N');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (309, 202, 'Garlic Bread', 'Starter', 119, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (310, 203, 'Veg Hakka Noodles', 'Noodles', 179, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (311, 203, 'Chicken Manchurian', 'Main Course', 229, 'N', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (312, 203, 'Veg Spring Rolls', 'Starter', 149, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (313, 203, 'Schezwan Fried Rice', 'Rice', 199, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (314, 204, 'Quinoa Salad Bowl', 'Bowl', 259, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (315, 204, 'Grilled Chicken Bowl', 'Bowl', 299, 'N', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (316, 204, 'Fruit Smoothie', 'Beverage', 129, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (317, 204, 'Hummus Wrap', 'Wrap', 189, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (318, 205, 'Chocolate Truffle Pastry', 'Pastry', 99, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (319, 205, 'Red Velvet Cupcake', 'Cupcake', 79, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (320, 205, 'Brownie Sundae', 'Dessert', 149, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (321, 205, 'Cheesecake Slice', 'Dessert', 169, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (322, 206, 'Classic Veg Burger', 'Burger', 99, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (323, 206, 'Chicken Zinger Burger', 'Burger', 159, 'N', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (324, 206, 'Peri Peri Fries', 'Sides', 89, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (325, 206, 'Cold Coffee', 'Beverage', 119, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (326, 207, 'Masala Dosa', 'Dosa', 120, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (327, 207, 'Idli Sambar', 'Breakfast', 80, 'Y', 'Y');
INSERT INTO menu_item (item_id, restaurant_id, item_name, category, price, is_veg, available)
VALUES (328, 207, 'Filter Coffee', 'Beverage', 50, 'Y', 'Y');


INSERT INTO delivery_partner (partner_id, full_name, phone, vehicle_type, city, status)
VALUES (401, 'Ravi Kumar', '9811100401', 'BIKE', 'Delhi', 'ON_DELIVERY');
INSERT INTO delivery_partner (partner_id, full_name, phone, vehicle_type, city, status)
VALUES (402, 'Mohit Yadav', '9811100402', 'SCOOTER', 'Noida', 'AVAILABLE');
INSERT INTO delivery_partner (partner_id, full_name, phone, vehicle_type, city, status)
VALUES (403, 'Deepak Chauhan', '9811100403', 'BIKE', 'Gurugram', 'AVAILABLE');
INSERT INTO delivery_partner (partner_id, full_name, phone, vehicle_type, city, status)
VALUES (404, 'Imran Khan', '9811100404', 'SCOOTER', 'Delhi', 'AVAILABLE');
INSERT INTO delivery_partner (partner_id, full_name, phone, vehicle_type, city, status)
VALUES (405, 'Sunil Rawat', '9811100405', 'BICYCLE', 'Ghaziabad', 'OFFLINE');
INSERT INTO delivery_partner (partner_id, full_name, phone, vehicle_type, city, status)
VALUES (406, 'Pooja Devi', '9811100406', 'SCOOTER', 'Delhi', 'AVAILABLE');


-- total_amount = sum of its order items
INSERT INTO orders (order_id, customer_id, restaurant_id, partner_id, order_date, status,
                    delivery_address, total_amount)
VALUES (1001, 101, 201, 401, TO_DATE('2026-09-20 13:10', 'YYYY-MM-DD HH24:MI'), 'DELIVERED',
        'B-12, Rajouri Garden, Delhi', 620);
INSERT INTO orders (order_id, customer_id, restaurant_id, partner_id, order_date, status,
                    delivery_address, total_amount)
VALUES (1002, 102, 202, 402, TO_DATE('2026-09-21 20:05', 'YYYY-MM-DD HH24:MI'), 'DELIVERED',
        'Sector 62, Noida', 368);
INSERT INTO orders (order_id, customer_id, restaurant_id, partner_id, order_date, status,
                    delivery_address, total_amount)
VALUES (1003, 103, 203, 403, TO_DATE('2026-09-22 19:30', 'YYYY-MM-DD HH24:MI'), 'DELIVERED',
        'DLF Phase 3, Gurugram', 736);
INSERT INTO orders (order_id, customer_id, restaurant_id, partner_id, order_date, status,
                    delivery_address, total_amount)
VALUES (1004, 101, 204, 404, TO_DATE('2026-09-25 14:00', 'YYYY-MM-DD HH24:MI'), 'DELIVERED',
        'B-12, Rajouri Garden, Delhi', 517);
INSERT INTO orders (order_id, customer_id, restaurant_id, partner_id, order_date, status,
                    delivery_address, total_amount)
VALUES (1005, 104, 201, 401, TO_DATE('2026-09-27 21:15', 'YYYY-MM-DD HH24:MI'), 'DELIVERED',
        'Saket, Delhi', 820);
INSERT INTO orders (order_id, customer_id, restaurant_id, partner_id, order_date, status,
                    delivery_address, total_amount)
VALUES (1006, 105, 206, 405, TO_DATE('2026-09-28 18:45', 'YYYY-MM-DD HH24:MI'), 'DELIVERED',
        'Indirapuram, Ghaziabad', 525);
INSERT INTO orders (order_id, customer_id, restaurant_id, partner_id, order_date, status,
                    delivery_address, total_amount)
VALUES (1007, 106, 205, 402, TO_DATE('2026-10-01 16:20', 'YYYY-MM-DD HH24:MI'), 'DELIVERED',
        'Dwarka Sector 10, Delhi', 516);
INSERT INTO orders (order_id, customer_id, restaurant_id, partner_id, order_date, status,
                    delivery_address, total_amount)
VALUES (1008, 102, 201, 406, TO_DATE('2026-10-02 20:40', 'YYYY-MM-DD HH24:MI'), 'DELIVERED',
        'Sector 62, Noida', 585);
INSERT INTO orders (order_id, customer_id, restaurant_id, partner_id, order_date, status,
                    delivery_address, total_amount)
VALUES (1009, 107, 202, NULL, TO_DATE('2026-10-03 13:55', 'YYYY-MM-DD HH24:MI'), 'CANCELLED',
        'Shastri Nagar, Meerut', 329);
INSERT INTO orders (order_id, customer_id, restaurant_id, partner_id, order_date, status,
                    delivery_address, total_amount)
VALUES (1010, 108, 203, 404, TO_DATE('2026-10-04 19:10', 'YYYY-MM-DD HH24:MI'), 'DELIVERED',
        'Sector 18, Noida', 856);
INSERT INTO orders (order_id, customer_id, restaurant_id, partner_id, order_date, status,
                    delivery_address, total_amount)
VALUES (1011, 103, 204, 404, TO_DATE('2026-10-06 13:35', 'YYYY-MM-DD HH24:MI'), 'DELIVERED',
        'DLF Phase 3, Gurugram', 617);
INSERT INTO orders (order_id, customer_id, restaurant_id, partner_id, order_date, status,
                    delivery_address, total_amount)
VALUES (1012, 104, 205, 405, TO_DATE('2026-10-07 17:05', 'YYYY-MM-DD HH24:MI'), 'DELIVERED',
        'Saket, Delhi', 316);
INSERT INTO orders (order_id, customer_id, restaurant_id, partner_id, order_date, status,
                    delivery_address, total_amount)
VALUES (1013, 101, 201, 401, TO_DATE('2026-10-09 20:25', 'YYYY-MM-DD HH24:MI'), 'OUT_FOR_DELIVERY',
        'B-12, Rajouri Garden, Delhi', 1020);
INSERT INTO orders (order_id, customer_id, restaurant_id, partner_id, order_date, status,
                    delivery_address, total_amount)
VALUES (1014, 106, 206, NULL, TO_DATE('2026-10-11 21:00', 'YYYY-MM-DD HH24:MI'), 'PLACED',
        'Dwarka Sector 10, Delhi', 248);
INSERT INTO orders (order_id, customer_id, restaurant_id, partner_id, order_date, status,
                    delivery_address, total_amount)
VALUES (1015, 105, 202, NULL, TO_DATE('2026-10-11 21:30', 'YYYY-MM-DD HH24:MI'), 'PLACED',
        'Indirapuram, Ghaziabad', 617);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1001, 301, 1, 320);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1001, 304, 2, 45);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1001, 303, 1, 210);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1002, 306, 1, 249);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1002, 309, 1, 119);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1003, 310, 2, 179);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1003, 311, 1, 229);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1003, 312, 1, 149);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1004, 314, 1, 259);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1004, 316, 2, 129);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1005, 305, 2, 290);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1005, 302, 1, 240);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1006, 322, 2, 99);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1006, 324, 1, 89);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1006, 325, 2, 119);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1007, 318, 2, 99);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1007, 320, 1, 149);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1007, 321, 1, 169);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1008, 303, 1, 210);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1008, 304, 3, 45);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1008, 302, 1, 240);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1009, 307, 1, 329);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1010, 313, 2, 199);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1010, 311, 2, 229);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1011, 315, 1, 299);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1011, 317, 1, 189);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1011, 316, 1, 129);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1012, 319, 4, 79);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1013, 301, 2, 320);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1013, 304, 2, 45);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1013, 305, 1, 290);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1014, 323, 1, 159);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1014, 324, 1, 89);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1015, 306, 2, 249);
INSERT INTO order_item (order_id, item_id, quantity, unit_price) VALUES (1015, 309, 1, 119);


-- amount = items + 5% GST + Rs.40 delivery fee (free above Rs.500)
INSERT INTO payment (payment_id, order_id, payment_mode, payment_status, amount, paid_on)
VALUES (501, 1001, 'UPI', 'PAID', 651, TO_DATE('2026-09-20 13:12', 'YYYY-MM-DD HH24:MI'));
INSERT INTO payment (payment_id, order_id, payment_mode, payment_status, amount, paid_on)
VALUES (502, 1002, 'CARD', 'PAID', 426.4, TO_DATE('2026-09-21 20:07', 'YYYY-MM-DD HH24:MI'));
INSERT INTO payment (payment_id, order_id, payment_mode, payment_status, amount, paid_on)
VALUES (503, 1003, 'UPI', 'PAID', 772.8, TO_DATE('2026-09-22 19:32', 'YYYY-MM-DD HH24:MI'));
INSERT INTO payment (payment_id, order_id, payment_mode, payment_status, amount, paid_on)
VALUES (504, 1004, 'WALLET', 'PAID', 542.85, TO_DATE('2026-09-25 14:02', 'YYYY-MM-DD HH24:MI'));
INSERT INTO payment (payment_id, order_id, payment_mode, payment_status, amount, paid_on)
VALUES (505, 1005, 'COD', 'PAID', 861, TO_DATE('2026-09-27 22:10', 'YYYY-MM-DD HH24:MI'));
INSERT INTO payment (payment_id, order_id, payment_mode, payment_status, amount, paid_on)
VALUES (506, 1006, 'UPI', 'PAID', 551.25, TO_DATE('2026-09-28 18:47', 'YYYY-MM-DD HH24:MI'));
INSERT INTO payment (payment_id, order_id, payment_mode, payment_status, amount, paid_on)
VALUES (507, 1007, 'CARD', 'PAID', 541.8, TO_DATE('2026-10-01 16:22', 'YYYY-MM-DD HH24:MI'));
INSERT INTO payment (payment_id, order_id, payment_mode, payment_status, amount, paid_on)
VALUES (508, 1008, 'UPI', 'PAID', 614.25, TO_DATE('2026-10-02 20:42', 'YYYY-MM-DD HH24:MI'));
INSERT INTO payment (payment_id, order_id, payment_mode, payment_status, amount, paid_on)
VALUES (509, 1009, 'UPI', 'REFUNDED', 385.45, TO_DATE('2026-10-03 13:57', 'YYYY-MM-DD HH24:MI'));
INSERT INTO payment (payment_id, order_id, payment_mode, payment_status, amount, paid_on)
VALUES (510, 1010, 'COD', 'PAID', 898.8, TO_DATE('2026-10-04 20:05', 'YYYY-MM-DD HH24:MI'));
INSERT INTO payment (payment_id, order_id, payment_mode, payment_status, amount, paid_on)
VALUES (511, 1011, 'UPI', 'PAID', 647.85, TO_DATE('2026-10-06 13:37', 'YYYY-MM-DD HH24:MI'));
INSERT INTO payment (payment_id, order_id, payment_mode, payment_status, amount, paid_on)
VALUES (512, 1012, 'WALLET', 'PAID', 371.8, TO_DATE('2026-10-07 17:07', 'YYYY-MM-DD HH24:MI'));
INSERT INTO payment (payment_id, order_id, payment_mode, payment_status, amount, paid_on)
VALUES (513, 1013, 'UPI', 'PAID', 1071, TO_DATE('2026-10-09 20:27', 'YYYY-MM-DD HH24:MI'));
INSERT INTO payment (payment_id, order_id, payment_mode, payment_status, amount, paid_on)
VALUES (514, 1014, 'COD', 'PENDING', 300.4, NULL);
INSERT INTO payment (payment_id, order_id, payment_mode, payment_status, amount, paid_on)
VALUES (515, 1015, 'UPI', 'PENDING', 647.85, NULL);
COMMIT;
SELECT 'CUSTOMER' AS table_name, COUNT(*) AS row_count FROM customer
UNION ALL SELECT 'RESTAURANT',       COUNT(*) FROM restaurant
UNION ALL SELECT 'MENU_ITEM',        COUNT(*) FROM menu_item
UNION ALL SELECT 'DELIVERY_PARTNER', COUNT(*) FROM delivery_partner
UNION ALL SELECT 'ORDERS',           COUNT(*) FROM orders
UNION ALL SELECT 'ORDER_ITEM',       COUNT(*) FROM order_item
UNION ALL SELECT 'PAYMENT',          COUNT(*) FROM payment;
