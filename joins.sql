-- 1
-- SELECT *
-- FROM users;

-- 2
-- SELECT *
-- FROM posts
-- WHERE user_id = 100;

-- 3
-- SELECT posts.*, users.first_name, users.last_name
-- FROM posts
-- JOIN users
-- ON posts.user_id = users.id
-- WHERE users.id = 200;

-- 4
-- SELECT posts.*, users.username
-- FROM posts
-- JOIN users
-- ON posts.user_id = users.id
-- WHERE users.first_name = 'Norene' AND users.last_name = 'Schmitt';

-- 5
-- SELECT users.username
-- FROM users
-- JOIN posts
-- ON users.id = posts.user_id
-- WHERE posts.created_at > '2015-1-1';

-- 6
-- SELECT posts.title, posts.content, users.username
-- FROM posts
-- JOIN users
-- ON posts.user_id = users.id
-- WHERE users.created_at > '2015-1-1';

--7
-- SELECT posts.title AS post_title, comments.*
-- FROM comments
-- JOIN posts
-- ON comments.post_id = posts.id;

-- 8
-- SELECT posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
-- FROM posts
-- JOIN comments
-- ON comments.post_id = posts.id
-- WHERE posts.created_at < '2015-1-1';

-- 9
-- SELECT posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
-- FROM posts
-- JOIN comments
-- ON comments.post_id = posts.id
-- WHERE posts.created_at > '2015-1-1';

-- 10
-- SELECT posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
-- FROM posts
-- JOIN comments
-- ON comments.post_id = posts.id
-- WHERE comments.body LIKE '%USB%';

-- 11
-- SELECT posts.title AS post_title, users.first_name, users.last_name, comments.body AS comment_body
-- FROM posts
-- JOIN users
-- ON posts.user_id = users.id
-- JOIN comments
-- ON comments.post_id = posts.id
-- WHERE comments.body LIKE '%matrix%';

-- 12
-- SELECT users.first_name, users.last_name, comments.body AS comment_body
-- FROM posts
-- JOIN users
-- ON posts.user_id = users.id
-- JOIN comments
-- ON comments.post_id = posts.id
-- WHERE comments.body LIKE '%SSL%' AND posts.content LIKE '%dolorum%';

-- 13
-- SELECT users.first_name AS post_author_first_name, users.last_name AS post_author_last_name, posts.title AS post_title, users.username AS comment_author_username, comments.body AS comment_body
-- FROM posts
-- JOIN users
-- ON posts.user_id = users.id
-- JOIN comments
-- ON comments.post_id = posts.id

-- WHERE (comments.body LIKE '%SSL%' OR comments.body LIKE '%firewall%') AND posts.content LIKE '%nemo%';

-- 1
-- SELECT posts.id, posts.title, posts.user_id
-- FROM posts
-- JOIN comments
-- ON comments.post_id = posts.id
-- WHERE posts.user_id = comments.user_id;

-- 2
-- SELECT COUNT(comments.*)
-- FROM posts
-- JOIN comments
-- ON comments.post_id = posts.id
-- WHERE posts.created_at > '2015-7-14';

-- 3
-- SELECT COUNT(users.username)
-- FROM users
-- JOIN comments
-- ON comments.user_id = users.id
-- WHERE comments.body LIKE '%programming%';
