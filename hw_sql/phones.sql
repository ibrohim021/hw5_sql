CREATE TABLE `phone_table` (
  `idphone` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `manufacturer` varchar(45) NOT NULL,
  `product_count` int NOT NULL,
  `price` varchar(45) NOT NULL,
  PRIMARY KEY (`idphone`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

INSERT INTO `` (`idphone`,`product_name`,`manufacturer`,`product_count`,`price`) VALUES (1,'galaxy a30s','samsung',8,'90$');
INSERT INTO `` (`idphone`,`product_name`,`manufacturer`,`product_count`,`price`) VALUES (2,'galaxy a20','samsung',4,'80$');
INSERT INTO `` (`idphone`,`product_name`,`manufacturer`,`product_count`,`price`) VALUES (3,'iphone 12','apple',10,'110$');
INSERT INTO `` (`idphone`,`product_name`,`manufacturer`,`product_count`,`price`) VALUES (4,'iphone 8','apple',12,'98$');
INSERT INTO `` (`idphone`,`product_name`,`manufacturer`,`product_count`,`price`) VALUES (5,'nokia 10','nokia',1,'30$');
INSERT INTO `` (`idphone`,`product_name`,`manufacturer`,`product_count`,`price`) VALUES (6,'honor 8x','huawey',3,'70$');
INSERT INTO `` (`idphone`,`product_name`,`manufacturer`,`product_count`,`price`) VALUES (7,'galaxy a70s','samsung',9,'100$');


use phones;

select * from phone_table;

select price, product_name
from phone_table
where product_count < 2;

select product_name
from phone_table
where manufacturer like "samsung";

select manufacturer
from phone_table
where product_name regexp "iphone";