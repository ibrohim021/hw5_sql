use data_base;

create table sales
(
sales_emploer varchar(50) not null,
fiscal_yer int not null,
sale decimal (14, 2) not null,
primary key(sales_emploer,fiscal_yer)
);

drop table sales;

insert  sales

values
("David", 2016,190),
("Bob", 2016,600),
("Bart", 2016,200),
("Gomer", 2017,400),
("Liza", 2017,190),
("Marge", 2017,120),
("David", 2018,190),
("Bob", 2018,690),
("Bart", 2018,280),
("Gomer", 2019,200),
("Liza", 2019,890),
("Marge", 2019,520),
("David", 2020,190),
("Bob", 2020,690),
("Bart", 2021,280),
("Gomer", 2021,200),
("Liza", 2022,890),
("Marge", 2022,520);



# Сумма всех покупок
select sum(sale)as total_summ from sales;

# Сумма покупок в каждом году
select fiscal_yer, sum(sale)as total_sales
from sales
group by fiscal_yer;

# Сгрупировали по периодам покупки и вывели их сумму в каждом году
select fiscal_yer,sales_emploer,
sale,
sum(sale) over (partition by fiscal_yer) as 'sum'
from sales;

select * from sales;

# Найдем мах мин и кол-во покупок за каждый год
select fiscal_yer,sales_emploer,
sale,
min(sale) over (partition by fiscal_yer) as 'min',
max(sale) over (partition by fiscal_yer) as 'max',
count(sale) over (partition by fiscal_yer) as 'count'
from sales;

# Создадим виртуальную таблицу где продажи > 500, Представления
create view sales_view as
select fiscal_yer,sales_emploer,sale
from sales
where sale > 500;

select * from sales_view;

drop view  sales_view;


