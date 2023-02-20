use data_base;

# Создаем таблицу покупателя

create table castomer
(
id int primary key auto_increment,
age int,
first_name varchar(20) not null,
last_name varchar(20) not null, 
phone varchar(20) unique not null

);

# Заполняем таблицу
insert into castomer (age, first_name, last_name, phone)

values
(20, "Петя", "Петров", "89992329499"),
(23, "Вася", "Пряников", "89012224449"),
(40, "Сашок", "Комлкенко", "893425323410"),
(30, "Кирил", "Кирилов", "89091324399");

#Удаляю столбец age
alter table castamer
drop column age;

select * from castomer;

#Добовляем и переносим столбец age вторым после id
alter table castomer
add age int after id;

#Обновил возраст всех покупателей
update castomer
set age = 36
where id = 4;

alter table castomer
add id_prod int after id;

#Создаем внешний ключ
alter table castomer
add foreign key (id_prod) references products (id_prod);

select * from castomer;
