create schema VK;
drop database VK;
use VK;


create table users
(
id_user bigint not null primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(120) unique,
phone bigint not null,
index user_phone_idx(phone),
index user_name_last_name_idx(first_name, last_name )
);


drop table users;

insert into users
values
(1, 'Reuben', 'Nienow', 'arlo50@example.org', 9374071116),
(2, 'Reuben', 'Nienow', 'terrence.cartwright@example.org', 9127498182),
(3, 'Reuben', 'Windler', 'rupert55@example.org', 9921090703),
(4, 'Reuben', 'West', 'rebekah29@example.net', 9592139196),
(5, 'Frederick', 'Effertz', 'von.bridget@example.net', 9909791725),
(6, 'Frederick', 'Medhurst', 'sstehr@example.net', 9456642385),
(7, 'Frederick', 'Braun', 'itzel.beahan@example.com', 9448906606),
(8, 'Frederick', 'Kilback', 'johnathan.wisozk@example.com', 9290679311),
(9, 'Frederick', 'Orn', 'missouri87@example.org', 9228624339),
(10, 'Jordyn', 'Jerde', 'edach@example.com', 9443126821),
(11, 'Jordyn', 'McDermott', 'shaun.ferry@example.org', 9840726982),
(12, 'Jordyn', 'Runolfsdottir', 'doug57@example.net', 9260442904),
(13, 'Jordyn', 'Haag', 'lhoeger@example.net', 9984574866),
(14, 'Jordyn', 'Stanton', 'tconsidine@example.org', 9499932439),
(15, 'Jordyn', 'Wolff', 'effertz.laverna@example.org', 9251665331),
(16, 'Lina', 'Macejkovic', 'smitham.demarcus@example.net', 9762021357),
(17, 'Jerrell', 'Stanton', 'deja00@example.com', 9191103792),
(18, 'Golden', 'Wisozk', 'frida19@example.com', 9331565437),
(19, 'Elisa', 'Balistreri', 'romaine27@example.org', 9372983850),
(20, 'Reed', 'Bogan', 'zhyatt@example.com', 9924753974),
(21, 'Gwendolyn', 'McClure', 'zluettgen@example.net', 9745046704),
(22, 'Luz', 'Bailey', 'tillman.iliana@example.org', 9881942174),
(23, 'Alyce', 'Toy', 'russel.ewell@example.com', 9754884857),
(24, 'Oma', 'Ortiz', 'jailyn.feest@example.com', 9339073755),
(25, 'Valentine', 'Goldner', 'matteo.wiza@example.net', 9803404650),
(26, 'Rasheed', 'Ebert', 'brenden32@example.net', 9924275184),
(27, 'Misael', 'Lakin', 'benjamin.hilpert@example.com', 9619165091),
(28, 'Shaun', 'Fritsch', 'wwiegand@example.org', 9231898080),
(29, 'Katarina', 'Sipes', 'jenifer.gislason@example.net', 9348426774),
(30, 'Newton', 'Koss', 'beatty.river@example.org', 9574058915),
(31, 'Selmer', 'Quitzon', 'ztromp@example.net', 9363178382),
(32, 'Margarete', 'Koepp', 'idell70@example.net', 9743498718),
(33, 'Donavon', 'Bauch', 'michele.lakin@example.com', 9229739697),
(34, 'Ashlynn', 'Cummerata', 'weber.tatyana@example.net', 9710902090),
(35, 'Fletcher', 'Lang', 'mona94@example.com', 9502246403),
(36, 'Amiya', 'Leuschke', 'mathilde.macejkovic@example.com', 9461791942),
(37, 'Terrance', 'West', 'ebert.magnus@example.org', 9381729082),
(38, 'Keara', 'Kiehn', 'audie.franecki@example.net', 9796576345),
(39, 'Wyatt', 'Olson', 'jarvis92@example.org', 9212459514),
(40, 'Paula', 'Shields', 'casey.bayer@example.org', 9410763172);

select * from users;


# Вывели имена в алфавитном порядке и указали кол-во юзеров с данным именем
select first_name, count(*) as users_name
from users
group by first_name
order by users_name;



create table messenges
(
id_mass serial,
from_user_id bigint unsigned not null,
to_user_id bigint unsigned not null,
body text,
created_at  datetime default now(),
INDEX messages_from_user_id (from_user_id),
INDEX messages_to_user_id (to_user_id),
FOREIGN KEY (from_user_id) REFERENCES users(id_user),
FOREIGN KEY (to_user_id) REFERENCES users(id_user)
);

insert messenges
values
('1','1','2','Voluptatem ut quaerat quia. Pariatur esse amet ratione qui quia. In necessitatibus reprehenderit et. Nam accusantium aut qui quae nesciunt non.','1995-08-28 22:44:29'),
('2','2','1','Sint dolores et debitis est ducimus. Aut et quia beatae minus. Ipsa rerum totam modi sunt sed. Voluptas atque eum et odio ea molestias ipsam architecto.',now()),
('3','3','1','Sed mollitia quo sequi nisi est tenetur at rerum. Sed quibusdam illo ea facilis nemo sequi. Et tempora repudiandae saepe quo.','1993-09-14 19:45:58'),
('4','1','3','Quod dicta omnis placeat id et officiis et. Beatae enim aut aliquid neque occaecati odit. Facere eum distinctio assumenda omnis est delectus magnam.','1985-11-25 16:56:25'),
('5','1','5','Voluptas omnis enim quia porro debitis facilis eaque ut. Id inventore non corrupti doloremque consequuntur. Molestiae molestiae deleniti exercitationem sunt qui ea accusamus deserunt.','1999-09-19 04:35:46'),
('6','1','6','Rerum labore culpa et laboriosam eum totam. Quidem pariatur sit alias. Atque doloribus ratione eum rem dolor vitae saepe.','1973-11-09 08:12:04'),
('7','1','7','Perspiciatis temporibus doloribus debitis. Et inventore labore eos modi. Quo temporibus corporis minus. Accusamus aspernatur nihil nobis placeat molestiae et commodi eaque.','1998-04-09 00:00:26'),
('8','8','8','Suscipit dolore voluptas et sit vero et sint. Rem ut ratione voluptatum assumenda nesciunt ea. Quas qui qui atque ut. Similique et praesentium non voluptate iure. Eum aperiam officia quia dolorem.','2005-08-20 18:40:27'),
('9','9','9','Et quia libero aut vitae minus. Rerum a blanditiis debitis sit nam. Veniam quasi aut autem ratione dolorem. Sunt quo similique dolorem odit totam sint sed.','2013-03-19 04:10:10'),
('10','10','10','Praesentium molestias quia aut odio. Est quis eius ut animi optio molestiae. Amet tempore sequi blanditiis in est.','1976-05-22 14:38:15'),
('11','11','11','Molestiae laudantium quibusdam porro est alias placeat assumenda. Ut consequatur rerum officiis exercitationem eveniet. Qui eum maxime sed in.','1996-04-27 00:23:37'),
('12','12','12','Quo asperiores et id veritatis placeat. Aperiam ut sit exercitationem iste vel nisi fugit quia. Suscipit labore error ducimus quaerat distinctio quae quasi.','1989-05-13 22:39:47'),
('13','13','1','Earum sunt quia sed harum modi accusamus. Quia dolor laboriosam asperiores aliquam quia. Sint id quasi et cumque qui minima ut quo. Autem sed laudantium officiis sit sit.','1997-09-30 00:06:14'),
('14','4','1','Aut enim sint voluptas saepe. Ut tenetur quos rem earum sint inventore fugiat. Eaque recusandae similique earum laborum.','1977-10-15 23:26:40'),
('15','4','1','Nisi rerum officiis officiis aut ad voluptates autem. Dolor nesciunt eum qui eos dignissimos culpa iste. Atque qui vitae quos odit inventore eum. Quam et voluptas quia amet.','1977-10-13 19:40:32'),
('16','4','1','Consequatur ut et repellat non voluptatem nihil veritatis. Vel deleniti omnis et consequuntur. Et doloribus reprehenderit sed earum quas velit labore.','1998-05-24 10:09:36'),
('17','2','1','Iste deserunt in et et. Corrupti rerum a veritatis harum. Ratione consequatur est ut deserunt dolores.','1993-01-30 15:51:38'),
('18','18','1','Dicta non inventore autem incidunt accusamus amet distinctio. Aut laborum nam ab maxime. Maxime minima blanditiis et neque. Et laboriosam qui at deserunt magnam.','1996-05-19 14:18:39'),
('19','19','1','Amet ad dolorum distinctio excepturi possimus quia. Adipisci veniam porro ipsum ipsum tempora est blanditiis. Magni ut quia eius qui.','1998-08-12 04:42:34'),
('20','20','20','Porro aperiam voluptate quo eos nobis. Qui blanditiis cum id eos. Est sit reprehenderit consequatur eum corporis. Molestias quia quo sit architecto aut.','2013-11-01 05:14:05'),
('21','21','21','Architecto sunt asperiores modi. A commodi non qui.','2007-10-22 01:34:17'),
('22','8','1','Minus praesentium ipsum iusto ipsum et a nobis. Aut distinctio enim dolor suscipit et. Quia culpa molestiae architecto quod. Error nulla qui et harum sapiente maxime qui sed.','1986-07-17 11:23:56'),
('23','8','1','Explicabo nostrum eius cum molestiae. Et deserunt aut consectetur molestiae. Illo veritatis sed ab.','2002-06-22 15:10:59'),
('24','8','1','Excepturi consequatur ducimus voluptatum. Est sed perferendis ducimus officia et. Qui nemo sapiente harum rerum.','2007-09-14 22:06:16'),
('25','8','1','Non deserunt quis non illum. In vel exercitationem dolore reiciendis non animi sequi cumque. Officia et repellat in aut voluptas. Dignissimos sed voluptatem minima eligendi. Magnam porro omnis mollitia aspernatur error quia.','2006-06-16 19:28:59'),
('26','8','1','Minus tenetur molestiae laudantium est voluptatem tempora. Sed ab veniam porro similique cumque. Accusamus illo est et tempora excepturi odit.','1977-11-04 08:02:22'),
('27','8','1','At ratione quae facere minima exercitationem vel ipsum ipsam. Qui eligendi repellat ut unde quos hic sit. Itaque expedita voluptatem id numquam. Provident culpa expedita alias optio ipsum id. Voluptatum quae quidem nihil aut nemo voluptatibus.','1975-06-25 22:37:18'),
('28','8','1','Nam dignissimos nobis qui qui voluptate. Dolor voluptas praesentium quis tenetur deleniti dolorem incidunt. Cupiditate qui nam excepturi.','2007-03-22 10:13:05'),
('29','8','1','Molestias ratione tenetur sint. Vel rerum voluptas vel vitae et aut non autem. Distinctio sunt in dignissimos esse eligendi praesentium. Ut totam autem vel sapiente architecto et.','2003-01-11 19:37:45'),
('30','8','1','Perferendis in eius architecto debitis exercitationem. Optio deleniti ad dolor sapiente soluta. Quisquam deserunt autem amet magni quasi quo dolores. Expedita ea omnis omnis sint.','2010-04-13 15:06:20'),
('31','31','31','Voluptatum totam inventore numquam dolor mollitia. Qui explicabo ut commodi culpa libero quisquam. Doloribus consequuntur rerum in nesciunt quia consequuntur ut.','2009-02-23 05:02:06'),
('32','32','32','Delectus animi laboriosam magnam. Dolor a qui numquam et. Magnam rerum exercitationem officiis numquam.','2017-06-21 05:19:41'),
('33','33','33','Blanditiis incidunt fugiat itaque animi impedit modi ratione at. Excepturi vel hic enim quidem aut ullam facilis. Ipsum aut maxime deserunt doloremque.','1996-01-15 13:05:37'),
('34','34','34','Quia magnam reprehenderit libero fugiat. Voluptatem id qui incidunt nihil et voluptatem quos dicta. Corrupti et ut ratione quos architecto omnis. Accusamus quo aliquam hic sit quia illum.','1987-01-09 11:35:59'),
('35','35','35','Voluptatem aperiam omnis ut sed nulla. Autem optio eligendi et corrupti.','1980-07-24 15:48:57'),
('36','36','36','Omnis dolor dignissimos vel tempora. Quia explicabo iste tempora delectus esse. Laudantium molestiae recusandae laboriosam quam.','2007-01-31 14:18:23'),
('37','37','37','Nesciunt vitae consequuntur et molestiae deleniti cupiditate nostrum. Et natus eveniet officiis voluptas voluptas magni velit. Explicabo ipsam et quis eos dolore explicabo.','1971-09-15 21:08:26'),
('38','38','38','Atque deleniti voluptas labore veniam quas ipsam voluptatem. Similique facere qui est quaerat est et. Incidunt corporis aut deleniti aut excepturi.','1991-12-06 22:30:58'),
('39','39','39','Placeat eos est animi voluptatem quas dolore. Dolor minima rem corporis perspiciatis. Nemo est autem voluptate est.','2004-10-09 10:37:23'),
('40','40','40','Ab quibusdam dolor et illum quis dolore. Qui deserunt consequuntur voluptatem itaque. Expedita sit velit hic repudiandae provident culpa quisquam. Est aut rerum itaque in non et.','1972-03-14 21:06:39');


select * from messenges;

create table friend_requests
(
-- id serial primary key,
initiator_user_id bigint unsigned not null,
target_user_id bigint unsigned not null,
`status` ENUM('requested', 'approved', 'unfriended', 'declined'),
requested_at datetime default now(),
confirmed_at datetime,
index (initiator_user_id),
index (target_user_id),
foreign key  (initiator_user_id) references users(id_user),
foreign key (target_user_id) references users(id_user)

);
drop table friend_requests;

insert friend_requests
values
(1, '10', 'approved', '1970-08-21 06:40:37', '2003-12-29 23:20:55'),
(1, '2', 'requested', '1987-10-10 07:33:23', '1983-01-18 01:56:05'),
(1, '3', 'approved', '2015-02-07 01:53:07', '2015-09-14 16:17:12'),
(4, '1', 'approved', '1983-04-08 15:57:26', '1976-12-28 23:54:58'),
(5, '2', 'unfriended', '1976-03-03 18:22:00', '1996-12-03 11:29:04'),
(6, '3', 'unfriended', '2008-12-06 17:07:59', '2015-11-01 08:03:23'),
(7, '1', 'requested', '1989-10-26 06:20:23', '2001-08-05 16:01:03'),
(8, '6', 'unfriended', '1987-12-30 01:50:03', '2001-07-09 07:39:50'),
(9, '7', 'requested', '2003-12-27 22:52:09', '1998-04-18 04:41:46'),
(10, '11', 'declined', '1970-05-08 00:32:15', '2007-03-22 21:08:16');

select * from friend_requests;

# Находим кол-во запросов в друзья в `status`
select `status`, count('requested') as request
from friend_requests
group by `status`;


create table profil
(
id_profile bigint unsigned not null ,
gender char(1),
birthday date,
photo_id bigint unsigned not null,
create_at datetime default now(),
hometown varchar(100),
foreign key (id_profile) references users(id_user)
);

insert profil
values 
('1','f','1976-11-08','1','1970-01-18 03:54:01','Adriannaport'),
('2','f','2011-12-20','2','1994-11-06 23:56:10','North Nettieton'),
('3','m','1994-06-15','3','1975-11-27 02:27:11','Padbergtown'),
('4','f','1979-11-07','4','1994-04-12 04:31:49','Port Rupertville'),
('5','f','1976-04-19','5','1976-07-05 02:25:30','Spencerfort'),
('6','f','1983-09-07','6','1981-06-20 15:54:43','South Woodrowmouth'),
('7','m','2014-07-31','7','1997-06-21 07:52:05','South Jeffereyshire'),
('8','f','1975-03-26','8','2008-08-18 18:23:25','Howeside'),
('9','f','1982-11-01','9','2014-09-29 01:22:26','Loweborough'),
('10','m','1977-05-14','10','1980-03-17 18:17:45','New Nellaside'),
('11','m','1988-10-28','11','2011-08-22 08:31:06','New Skylar'),
('12','f','1994-02-07','12','2015-08-04 16:34:50','South Dameontown'),
('13','f','1998-08-08','13','1978-02-12 03:14:55','North Terencemouth'),
('14','f','1973-11-16','14','2015-03-13 03:01:16','West Wilfordshire'),
('15','m','1979-08-20','15','1983-08-13 03:48:56','North Xavier'),
('16','m','1997-03-17','16','1989-09-08 23:17:00','Port Kayton'),
('17','m','2015-02-25','17','1992-10-29 05:38:24','New Odie'),
('18','f','2011-04-05','18','1981-08-22 06:53:53','South Newton'),
('19','f','1981-01-24','19','1975-08-17 04:48:38','Port Jovanyview'),
('20','f','2010-03-12','20','2008-02-11 09:39:28','Port Adolfoville'),
('21','f','1971-02-01','21','1972-09-21 21:31:09','Kleinbury'),
('22','f','2000-08-30','22','1977-03-15 13:44:30','South Ciara'),
('23','f','1991-08-17','23','1991-10-15 01:01:05','Magdalenahaven'),
('24','m','2008-08-26','24','2016-06-23 23:04:39','Port Jettchester'),
('25','f','2005-03-19','25','2002-11-21 22:26:09','West Juneview'),
('26','m','1970-03-17','26','1995-06-07 00:37:46','South Jose'),
('27','m','2011-01-12','27','1992-03-18 22:28:05','Christinahaven'),
('28','m','2000-01-22','28','2003-06-16 16:15:57','Lednerstad'),
('29','f','1988-02-16','29','1988-02-09 12:47:21','Lisandrofort'),
('30','m','1977-08-16','30','1977-03-09 23:28:37','Sethfort'),
('31','f','1978-11-28','31','2008-01-31 16:16:06','Tessieport'),
('32','f','2004-02-06','32','1995-11-19 13:46:21','Lake Reilly'),
('33','f','2000-05-07','33','1991-11-21 16:14:32','East Rosalinda'),
('34','f','1988-11-22','34','2008-08-17 22:20:26','Lake Henderson'),
('35','f','2008-08-28','35','1991-07-07 07:37:17','Melanyport'),
('36','m','2004-02-05','36','1973-11-04 03:21:50','Bryanaland'),
('37','m','2012-01-21','37','2014-11-25 14:47:51','South Lorenstad'),
('38','f','1999-10-17','38','1990-04-29 04:32:11','Rocioport'),
('39','f','1991-02-16','39','1976-09-18 06:18:30','New Petra'),
('40','m','1993-08-26','40','1976-10-03 19:24:42','Wizabury');


# Выводим всех мужиков cnfhit 35 из списка 
select gender as man, count(gender) as total_man
from profil
where timestampdiff(YEAR, birthday, NOW()) > 35
and gender = 'm'
group by gender;

select * from messenges;

create table communities
(
id serial,
name varchar(50),
INDEX communities_name_idx(name)
);

drop view  users_communities;
 
 create table users_communities
 (
user_id bigint unsigned not null,
community_id bigint unsigned not null,
PRIMARY KEY   (user_id, community_id),
FOREIGN KEY (user_id) REFERENCES users(id_user),
FOREIGN KEY (community_id) REFERENCES communities(id)
 );
 
 set foreign_key_checks = 0;
 
insert into users_communities

values
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);


# Подсчитать количество групп, в которые вступил каждый пользователь.
select 
	concat(first_name, ' ', last_name) AS owner,
	count(*)
from users u
join users_communities uc on u.id_user = uc.user_id
group by u.id_user
order by count(*) desc;
 
 # Подсчитать количество пользователей в каждом сообществе.
 
select count(*), communities.name
from users_communities 
join communities on users_communities.community_id = communities.id
group by communities.id;

