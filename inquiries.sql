select * from bids;
select full_name, bid_value from users JOIN bids ON(user_id=users_user_id);
select full_name, title from users JOIN items ON(user_id=users_user_id);
select full_name, title from users JOIN items ON(user_id=users_user_id) where title like 's%';
select full_name, title from users JOIN items ON(user_id=users_user_id) where description='new';
select full_name, avg(start_price) from users JOIN items ON(user_id=users_user_id) group by full_name;
select title, max(bid_value) from bids JOIN items ON(item_id=items_item_id) group by title;
select full_name, title from users JOIN items ON(user_id=users_user_id);
INSERT INTO users (user_id, full_name, billing_address, login, password)
 VALUES (6, 'Sokolov Egor', 'Perm', 'Sokolov', '1234');
 INSERT INTO items (item_id, title, description, start_price, bid_increment, start_date, stop_date, by_it_now, users_user_id)
 VALUES (6, 'phone', 'new', 190, 10, '2021-11-01', '2021-12-31', 2, 6);
 UPDATE items SET bid_increment = 0 WHERE item_id = 6;
 DELETE FROM items WHERE item_id=6;
 UPDATE items SET start_price = start_price*2 WHERE item_id = 5;