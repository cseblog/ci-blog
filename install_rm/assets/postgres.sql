CREATE TABLE assets (
  id  serial primary key,
  type varchar(255) NOT NULL,
  primary_key integer not null,
  mime varchar(255) NOT NULL,
  extension varchar(100) NOT NULL,
  size varchar(255) DEFAULT NULL,
  description varchar(255) NOT NULL,
  path text NOT NULL,
  user_id integer not null,
  created timestamp NOT NULL,
  modified timestamp NOT NULL,
)


INSERT INTO assets (id, type, primary_key, mime, extension, size, description, path, user_id, created, modified) VALUES
(1, 'post', 0, 'image/jpeg', '.jpg', '190.48', '10', 'assets/uploads/10.jpg', 1, '2015-12-24 23:43:29', '2015-12-24 23:43:29'),
(2, 'post', 0, 'image/jpeg', '.jpg', '305.92', '6', 'assets/uploads/6.jpg', 1, '2015-12-24 23:48:00', '2015-12-24 23:48:00'),
(3, 'post', 0, 'image/jpeg', '.jpg', '340.45', '9', 'assets/uploads/9.jpg', 1, '2015-12-24 23:48:29', '2015-12-24 23:48:29'),
(4, 'post', 0, 'image/jpeg', '.jpg', '190.48', '10', 'assets/uploads/10.jpg', 1, '2015-12-24 23:48:45', '2015-12-24 23:48:45'),
(5, 'post', 0, 'image/jpeg', '.jpg', '467.65', 'hero', 'assets/uploads/hero.jpg', 1, '2015-12-24 23:49:10', '2015-12-24 23:49:10'),
(6, 'post', 0, 'image/jpeg', '.jpg', '552.86', 'blur', 'assets/uploads/blur.jpg', 1, '2015-12-24 23:49:42', '2015-12-24 23:49:42'),
(7, 'post', 0, 'image/jpeg', '.jpg', '305.92', '6', 'assets/uploads/6.jpg', 1, '2015-12-24 23:55:13', '2015-12-24 23:55:13'),
(8, 'post', 0, 'image/jpeg', '.jpg', '186.94', '8', 'assets/uploads/8.jpg', 1, '2015-12-24 23:57:38', '2015-12-24 23:57:38'),
(9, 'post', 0, 'image/jpeg', '.jpg', '552.86', 'blur', 'assets/uploads/blur.jpg', 1, '2015-12-24 23:57:50', '2015-12-24 23:57:50'),
(10, 'post', 0, 'image/jpeg', '.jpg', '186.94', '8', 'assets/uploads/8.jpg', 1, '2015-12-24 23:57:56', '2015-12-24 23:57:56'),
(11, 'post', 0, 'image/jpeg', '.jpg', '190.48', '10', 'assets/uploads/10.jpg', 1, '2015-12-24 23:58:33', '2015-12-24 23:58:33'),
(12, 'post', 0, 'image/jpeg', '.jpg', '340.45', '9', 'assets/uploads/9.jpg', 1, '2015-12-24 23:58:58', '2015-12-24 23:58:58'),
(13, 'post', 0, 'image/jpeg', '.jpg', '305.92', '6', 'assets/uploads/6.jpg', 1, '2015-12-25 00:00:54', '2015-12-25 00:00:54'),
(14, 'post', 0, 'image/jpeg', '.jpg', '209.27', '7', 'assets/uploads/7.jpg', 1, '2015-12-25 00:02:24', '2015-12-25 00:02:24'),
(15, 'post', 0, 'image/jpeg', '.jpg', '209.27', '7', 'assets/uploads/7.jpg', 9, '2015-12-26 02:35:57', '2015-12-26 02:35:57'),
(16, 'post', 0, 'image/jpeg', '.jpg', '268.98', '5', 'assets/uploads/5.jpg', 9, '2015-12-26 02:37:39', '2015-12-26 02:37:39'),
(17, 'post', 0, 'image/jpeg', '.jpg', '238.62', '3', 'assets/uploads/3.jpg', 9, '2015-12-26 02:40:10', '2015-12-26 02:40:10'),
(18, 'post', 0, 'image/jpeg', '.jpg', '161.11', 'leaf', 'assets/uploads/leaf.jpg', 1, '2015-12-27 01:31:27', '2015-12-27 01:31:27'),
(19, 'post', 0, 'image/png', '.png', '0.96', 'header_bg', 'assets/uploads/header_bg.png', 1, '2015-12-27 01:31:59', '2015-12-27 01:31:59'),
(20, 'post', 0, 'image/jpeg', '.jpg', '32.27', 'bridge', 'assets/uploads/bridge.jpg', 1, '2015-12-27 01:32:12', '2015-12-27 01:32:12');



CREATE TABLE IF NOT EXISTS assets_posts (
  id serial primary key,
  post_id integer NOT NULL,
  asset_id integer NOT NULL
)


CREATE TABLE IF NOT EXISTS categories (
  id serial primary key,
  name varchar(255) NOT NULL,
  slug varchar(255) NOT NULL,
  status integer not null
) 

CREATE TABLE IF NOT EXISTS groups (
  id serial primary key,
  name varchar(20) NOT NULL,
  description varchar(100) NOT NULL
) 

CREATE TABLE IF NOT EXISTS login_attempts (
  id serial primary key,
  ip_address varchar(15) NOT NULL,
  login varchar(100) NOT NULL,
  time integer not null
)


CREATE TABLE IF NOT EXISTS menus (
  id serial primary key,
  name varchar(255) NOT NULL,
  url varchar(255) NOT NULL,
  parent_id integer not null DEFAULT '0',
  status integer not null,
  position integer not null,
  type varchar(255) DEFAULT NULL
) 

CREATE TABLE IF NOT EXISTS methods (
  id serial primary key,
  name varchar(255) NOT NULL,
  path varchar(255) NOT NULL,
  parent_id integer not null DEFAULT '0',
) 

CREATE TABLE IF NOT EXISTS methods_groups (
  id serial primary key,
  method_id integer not null DEFAULT '0',
  group_id integer not null DEFAULT '0',
  allow_access integer not null DEFAULT '0'
) 


CREATE TABLE IF NOT EXISTS posts (
  id serial primary key,
  title varchar(255) NOT NULL,
  slug varchar(255) NOT NULL,
  body text,
  type varchar(100) NOT NULL,
  featured_image varchar(255) DEFAULT NULL,
  status integer not null,
  published_at timestamp NOT NULL,
  user_id integer not null,
  created timestamp NOT NULL,
  modified timestamp NOT NULL
) 

CREATE TABLE IF NOT EXISTS posts_categories (
  id serial primary key,
  post_id integer not null,
  category_id integer not null
) 

CREATE TABLE IF NOT EXISTS posts_tags (
  id serial primary key,
  post_id integer not null,
  tag_id integer not null
) 


CREATE TABLE IF NOT EXISTS settings (
  id serial primary key,
  key varchar(255) NOT NULL,
  value text NOT NULL,
  description varchar(255) NOT NULL
  
) 

CREATE TABLE IF NOT EXISTS tags (
  id serial primary key,
  name varchar(255) NOT NULL,
  slug varchar(255) NOT NULL,
  status integer not null
) 

CREATE TABLE IF NOT EXISTS users (
  id serial primary key,
  ip_address varchar(15) NOT NULL,
  username varchar(100) NOT NULL,
  password varchar(255) NOT NULL,
  salt varchar(255) DEFAULT NULL,
  email varchar(100) NOT NULL,
  activation_code varchar(40) DEFAULT NULL,
  forgotten_password_code varchar(40) DEFAULT NULL,
  forgotten_password_time integer not null,
  remember_code varchar(40) DEFAULT NULL,
  created_on integer not null ,
  last_login integer not null,
  active integer not null,
  first_name varchar(50) DEFAULT NULL,
  last_name varchar(50) DEFAULT NULL,
  company varchar(100) DEFAULT NULL,
  phone varchar(20) DEFAULT NULL
) 


CREATE TABLE IF NOT EXISTS users_groups (
  id serial primary key,
  user_id integer not null ,
  group_id integer not null
) 

INSERT INTO categories (id, name, slug, status) VALUES
(1, 'Web Programming', 'web-programming', 1),
(2, 'Web Design', 'web-design', 1),
(3, 'Network  & Security', 'network-security', 1),
(4, 'Search Engine Optimation (SEO)', 'search-engine-optimation-seo', 1),
(5, 'Tutorial Web', 'tutorial-web', 0),
(8, 'Test kategori', 'test-kategori', 0);



INSERT INTO groups (id, name, description) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

INSERT INTO menus (id, name, url, parent_id, status, position, type) VALUES
(12, 'Home', 'home', 0, 1, 12, NULL),
(13, 'About', 'read/about-us', 0, 1, 13, NULL),
(14, 'Blog', 'posts', 0, 1, 14, NULL),
(15, 'Sign In', 'signin', 0, 1, 15, NULL);















