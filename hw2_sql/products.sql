use data_base;

select * from castomer;

# Создаем таблицу
create table products
(
id_prod int primary key auto_increment,
prod_name varchar(50)not null,
manufacture varchar(50)not null,
product_count int default 0,
price decimal
);

#Переименование столбца

alter table products
rename column product_coun to product_count;


# Переименование столбца в таблице
alter table products
rename to products_2;

# Добавление продуктов в таблицу

insert products

values
(1, "galaxy a30s","samsung", 5, 10000 ),
(2, "galaxy a20s","samsung", 9, 8000 ),
(3, "galaxy a12","samsung", 6, 9000 ),
(4, "galaxy m11","samsung", 3, 8500 ),
(5, "iphone 8","apple", 5, 9000 ),
(6, "iphone 12","apple", 6, 15000 );


select * from products;

#Удалил позицию nokia
delete from products where prod_name = "nokia";


#Добавил еовые значения для продукта nokia
insert products

values
(8,"nokia 20", "HTM Global", 3, 5000),
(9,"nokia 50", "HTM Global", 4, 8000);

select * from products;



# ЭТИ ЗАПРОСЫ НЕ РАБОТАЛИ В ДАННОМ ОКРУЖЕНИИ !!! Я ИХ ДОБОВЛЯЛ ЧЕРЕЗ ТЕРМИНАЛ! почему в терминале все работает а здесь нет ???
#Обновил кол-во продукта = 1 для модели nokia 20  
update products
set product_count = 1
where prod_name = "nokia 20";

select * from products;

#Обновил кол-во продукта = 20 для модели nokia 20
update products
set product_count = 20
where prod_name = "nokia 20";

select * from products;


# Логические операторы -- and, or, not

#select * from products

#where manufacture = "HTM Global" or not price > 8000
# where manufacture = "samsung" or price > 9000
# where manufacture = "iphone" and price > 10000



# ЭТИ ЗАПРОСЫ НЕ РАБОТАЛИ В ДАННОМ ОКРУЖЕНИИ !!! Я ИХ ДОБОВЛЯЛ ЧЕРЕЗ ТЕРМИНАЛ! почему в терминале все работает а здесь нет ???
# Изменяем цены для всех продуктов
update products
set price = price + 2000;

select * from products;


# Создаем кейс для товара

select prod_name, product_count,
case

	when product_count = 1
		then "Товар заканчивается!"
	when product_count = 2
		then "Товара маловато"
	when product_count = 3
		then "Есть в наличии"
	else "Много товара еще )"
	

end as category
from products;

select prod_name, product_count,
	if(product_count>5, "Много товара", "Мало товара")
from products;



# Выводим все данные таблицы кроме apple & samsung 
select * from products
where not manufacture in ("apple", "samsung");


select * from products;


