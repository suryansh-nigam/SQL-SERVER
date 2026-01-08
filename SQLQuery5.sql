-----------------Operators-----------------------

CREATE TABLE ITEM (
ITEM_NO INT,
ITEM_NAME VARCHAR(10),  
COLOR VARCHAR(10),  
ITEM_SIZE  INT,  
PRICE MONEY,  
PURCHASED_DATE  DATE        
);


INSERT INTO ITEM  VALUES (1, 'Shirt', 'Red', 40, 500,'2025-02-01');
INSERT INTO ITEM  VALUES (2, 'Pant', 'Blue', 42, 799,'2024-11-10');
INSERT INTO ITEM  VALUES (3, 'Saree', 'Pink', NULL, 1200,'2023-03-19');
INSERT INTO ITEM  VALUES (4, 'Chudidar', 'Green', 38, 899,'2025-01-16');
INSERT INTO ITEM  VALUES (5, 'Lehanga', 'Yellow', NULL, 1500,'2025-08-24');
INSERT INTO ITEM  VALUES (6, 'Shirt', 'Blue', 42, 550,'2025-04-16');
INSERT INTO ITEM  VALUES (7, 'Pant', 'Black', 40, 750,'2024-12-12' );
INSERT INTO ITEM  VALUES (8, 'Saree', 'Black', NULL, 1300.00,'2024-09-18');


SELECT * FROM ITEM;

--display item name, color and price of items whose price is more than 800.
select Item_name,color,price from item where price > 800;

--display all items details where the color is not 'Black'.
select * from item where COLOR  != 'Black';

--display the items purchased after 1st February 2025
select * from item where PURCHASED_DATE > '2025-02-01'

--display the item details where the item name is either shirt,saree,or chudidar
select * from item where ITEM_NAME = 'Shirt' OR
ITEM_NAME = 'Saree' OR ITEM_NAME = 'CHUDIDAR'

-- display all details of the item where the itemname is 'Shirt' and the itemsize is 42.
select * from item where ITEM_NAME = 'Shirt' AND ITEM_SIZE = 42; 

--display item details where the item name is saree and color must be pink.
select * from item where ITEM_NAME = 'Saree' AND COLOR = 'Pink';

--display item details where the item prices between 500 and 1200.
select * from item where PRICE between 500 AND 1200;

--display item details where the items were purachased in 2024
select * from item where PURCHASED_DATE Like '2024%';

-- display items where the item sizes are NULL
select * from item where ITEM_SIZE IS NULL;

-- display items where the itemname start with 'S'
select * from item where ITEM_NAME like 's%';

--display the details of the item where the ITEM_NAME is Shirt and  the COLOR is 'Red' and the ITEM_SIZE is 40.
select * from item where ITEM_NAME = 'Shirt' 
AND COLOR = 'Red' 
AND ITEM_SIZE = 40;

--The item is either a 'Shirt' or a 'Pant'
select * from item where ITEM_NAME = 'Shirt' OR
ITEM_NAME = 'Pant';

--The price is between 500 and 800
select * from item where Price Between 500 AND 800;

--The item was purchased in the year 2025
select * from item where PURCHASED_DATE Like '2025%';

--The color is not 'Red' or 'Black'
select * from item where COLOR != 'Black' AND COLOR != 'Red';

-- Write a query to display items from the ITEM table where:

-- • The item is either a 'Shirt' or a 'Pant'

--• The price is between 500 and 800

--• The item was purchased in the year 2025

--• The color is not 'Red' or 'Black'

select * from Item where (ITEM_NAME = 'Shirt' OR
ITEM_NAME = 'Pant') AND (Price Between 500 AND 800) 
AND (PURCHASED_DATE Like '2025%')
AND (COLOR != 'Black' AND COLOR != 'Red');


