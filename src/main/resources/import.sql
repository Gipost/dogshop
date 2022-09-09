-- ----------------------------
-- order_main
-- ----------------------------
INSERT INTO public.order_main (order_id, buyer_address, buyer_email, buyer_name, buyer_phone, create_time, order_amount, order_status, update_time) VALUES (4, 'Vladimir, Suzdalskiy prospekt 17', 'Test@email.com', 'Vadim', '+79206546546', '2022-09-09 13:57:05.886', 12997.00, 2, '2022-09-09 13:58:41.388');
INSERT INTO public.order_main (order_id, buyer_address, buyer_email, buyer_name, buyer_phone, create_time, order_amount, order_status, update_time) VALUES (7, 'Vladimir, Suzdalskiy prospekt 17', 'Test@email.com', 'Vadim', '+79206546546', '2022-09-09 13:59:27.862', 11477.00, 1, '2022-09-09 14:08:35.956');


-- ----------------------------
-- product_category
-- ----------------------------
INSERT INTO public.product_category (category_id, category_name, category_type, create_time, update_time) VALUES (2147483645, 'Food', 1, '2018-03-10 00:26:05', '2018-03-10 00:26:05');
INSERT INTO public.product_category (category_id, category_name, category_type, create_time, update_time) VALUES (2147483641, 'Dogs', 0, '2018-03-09 23:03:26', '2018-03-10 00:15:27');
INSERT INTO public.product_category (category_id, category_name, category_type, create_time, update_time) VALUES (2147483642, 'Accessories', 2, '2018-03-10 00:15:02', '2018-03-10 00:15:21');


-- ----------------------------
-- product_in_order
-- ----------------------------
INSERT INTO public.product_in_order (id, category_type, product_description, product_icon, product_id, product_name, product_price, product_quantity, order_id) VALUES (5, 2, 'Трекер для животных Doggy. Трекер для животных Jet Pet Doggy отслеживает перемещение вашего любимца с помощью спутникового модуля GPS.', 'https://4lapy.ru/resize/480x480/upload/iblock/332/332d77525aec2d2f96f2facad934a382.jpg', 'A00000002', 'JET Трекер для животных Doggy', 2999.00, 1, 4);
INSERT INTO public.product_in_order (id, category_type, product_description, product_icon, product_id, product_name, product_price, product_quantity, order_id) VALUES (6, 0, 'Бульдог', 'https://upload.wikimedia.org/wikipedia/commons/b/bf/Bulldog_inglese.jpg', 'D0000002', 'Английский бульдог', 4999.00, 2, 4);
INSERT INTO public.product_in_order (id, category_type, product_description, product_icon, product_id, product_name, product_price, product_quantity, order_id) VALUES (8, 1, 'Fresh Meat Puppy Small корм для щенков мелких пород, с индейкой, 2 кг', 'https://4lapy.ru/resize/480x480/upload/iblock/6f4/6f4fd7e840a08bb581547670aee4eed0.jpg', 'F0000002', 'Корм для щенков мелких пород, с индейкой, 2 кг', 1789.00, 2, 7);
INSERT INTO public.product_in_order (id, category_type, product_description, product_icon, product_id, product_name, product_price, product_quantity, order_id) VALUES (9, 2, '120х85х30 см, черный', 'https://4lapy.ru/resize/480x480/upload/iblock/3f7/3f708b60b8e8b48f3cd1ce8ac39ffaef.jpg', 'A00000001', 'Ортопедический диван Эвальд для собак', 7899.00, 1, 7);



-- ----------------------------
-- product_info
-- ----------------------------
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('D0000001', 0, NULL, '', 'https://www.purina.ru/sites/default/files/styles/nppe_breed_selector_500/public/2020-04/pug.jpg?itok=bk7-RYSe', 'Мопс', 5000.00, 0, 21, '2022-09-07 17:06:04.14');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('D0000003', 0, '2022-09-07 17:16:01.17', 'шпиц', 'https://www.purina.ru/sites/default/files/styles/nppe_breed_selector_500/public/2020-04/pomeranian.jpg?itok=GWYDIeUi', 'Померанский шпиц', 9999.00, 0, 12, '2022-09-07 17:16:01.17');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('D0000004', 0, '2022-09-07 17:18:06.051', 'Пока что отсутствуют', 'https://www.belanta.vet/vet-blog/wp-content/uploads/2018/08/sobaka-bishon-frize_06.jpg', 'Бишон фризе', 29999.00, 1, 0, '2022-09-07 17:18:06.051');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('F0000001', 1, '2022-09-07 17:19:31.869', 'OWNAT GF JUST сухой корм для взрослых собак с ягненком, 14 кг', 'https://4lapy.ru/resize/480x480/upload/iblock/3f6/3f6803ab13b5cba83eb50abde3a988d3.jpg', 'Cухой корм для взрослых собак с ягненком, 14 кг', 7899.00, 0, 500, '2022-09-07 17:19:31.869');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('F0000003', 1, '2022-09-07 17:21:57.548', 'Для собак всех пород от 1 года.', 'https://4lapy.ru/resize/480x480/upload/iblock/496/496b70743665caf2beec8ed840ee6247.jpg', 'Сухой корм для взрослых собак всех пород, ягненок с рисом, 12кг', 6899.00, 0, 398, '2022-09-07 17:21:57.548');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('F0000002', 1, '2022-09-07 17:20:34.894', 'Fresh Meat Puppy Small корм для щенков мелких пород, с индейкой, 2 кг', 'https://4lapy.ru/resize/480x480/upload/iblock/6f4/6f4fd7e840a08bb581547670aee4eed0.jpg', 'Корм для щенков мелких пород, с индейкой, 2 кг', 1789.00, 0, 495, '2022-09-07 17:20:34.894');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('A00000003', 2, '2022-09-07 17:27:40.583', 'бежево-серая, 32х28х13 см', 'https://4lapy.ru/resize/480x480/upload/iblock/d62/d62eb9ad94157083ac357c63ef6300e9.jpg', 'Поилка-фонтан для собак PET FOUNTAIN', 1789.00, 0, 99, '2022-09-07 17:27:40.583');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('A00000001', 2, NULL, '120х85х30 см, черный', 'https://4lapy.ru/resize/480x480/upload/iblock/3f7/3f708b60b8e8b48f3cd1ce8ac39ffaef.jpg', 'Ортопедический диван Эвальд для собак', 7899.00, 0, 29, '2022-09-07 17:25:01.516');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('D0000002', 0, '2022-09-07 17:14:05.343', 'Бульдог', 'https://upload.wikimedia.org/wikipedia/commons/b/bf/Bulldog_inglese.jpg', 'Английский бульдог', 4999.00, 0, 45, '2022-09-07 17:14:05.343');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('A00000002', 2, NULL, 'Трекер для животных Doggy. Трекер для животных Jet Pet Doggy отслеживает перемещение вашего любимца с помощью спутникового модуля GPS.', 'https://4lapy.ru/resize/480x480/upload/iblock/332/332d77525aec2d2f96f2facad934a382.jpg', 'JET Трекер для животных Doggy', 2999.00, 0, 198, '2022-09-07 17:26:31.024');


-- ----------------------------
-- users
-- ----------------------------
INSERT INTO public.users (id, active, address, email, name, password, phone, role) VALUES (2147483645, true, '3100 Western Road A', 'customer2@email.com', 'customer2', '$2a$10$0oho5eUbDqKrLH026A2YXuCGnpq07xJpuG/Qu.PYb1VCvi2VMXWNi', '2343456', 'ROLE_CUSTOMER');
INSERT INTO public.users (id, active, address, email, name, password, phone, role) VALUES (2147483642, true, 'Vladimir, Gorkovo 46', 'manager1@email.com', 'manager1', '$2a$10$pFzDPGyZXrSjxJWjrGmdUOVJrNFU8eYSUZBStCpCNiX6V1zdpkioe', '+79456959', 'ROLE_MANAGER');
INSERT INTO public.users (id, active, address, email, name, password, phone, role) VALUES (2147483643, true, 'Vladimir, mira 556', 'employee1@email.com', 'employee1', '$2a$10$xiT3qP7RqztfRyM31tJQhOLUY0bpFDk6CYNCrKwYy9yPBJ/4DLWDO', '+7920654777', 'ROLE_EMPLOYEE');
INSERT INTO public.users (id, active, address, email, name, password, phone, role) VALUES (2147483641, true, 'Vladimir, Belokonskya 21', 'customer1@email.com', 'customer1', '$2a$10$hDpuGJhwdYY4/PUIFDlEE.BLniLOzhA/e2nnx93svFYVxCHWZaIW.', '896502333', 'ROLE_CUSTOMER');
INSERT INTO public.users (id, active, address, email, name, password, phone, role) VALUES (3, true, 'Vladimir, Suzdalskiy prospekt 17', 'Test@email.com', 'Vadim', '$2a$10$LrJJSdolJJ4qZsq8yMQ0Y.FFWnSYjVswGyXUqBSCfh7L90i2C0s7K', '+79206546546', 'ROLE_CUSTOMER');



