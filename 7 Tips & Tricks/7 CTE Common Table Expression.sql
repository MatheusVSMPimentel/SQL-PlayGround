use DesenvolvedorIOCourse;
/*
CREATE TABLE products
(
	id int identity primary key,
	description varchar(100)
)
GO

CREATE TABLE orders
(
	id int identity primary key,
	data DATE,
	observation VARCHAR(100)
)
GO


CREATE TABLE orders_products
(
	id int identity primary key,
	product_id INT,
	order_id INT,
	quantity INT,
	value DECIMAL(12, 2),
	FOREIGN KEY(order_id) REFERENCES orders(id),
	FOREIGN KEY(product_id) REFERENCES products(id),
)
GO


DECLARE @products INT = 1 
WHILE @products <= 50
BEGIN  
  INSERT INTO products(description)  VALUES ('PRODUCT '+cast(@products as varchar));
  SET @products = @products+1
END 

DECLARE @orders INT = 1 
DECLARE @itens INT = 1 
WHILE @orders <= 1000
BEGIN  
  INSERT INTO orders(data, observation)  VALUES (GETDATE(), 'OBSERVACAO '+cast(@orders as varchar));
  WHILE @itens <= 50
  BEGIN
	INSERT INTO orders_products(order_id,product_id,quantity,value)
	VALUES  (@orders, @itens, 1, 1);
	SET @itens = @itens + 1;
  END
  SET @itens = 1;
  SET @orders = @orders+1
END 
GO

CREATE NONCLUSTERED INDEX idx_order_itens_product_id
ON  orders_products (order_id)
INCLUDE (product_id,quantity)
GO
*/

/*
SELECT * FROM orders_products op
INNER JOIN orders o ON op.order_id = o.id
*/

/*
SELECT op.product_id, sum(op.quantity) FROM orders_products op
INNER JOIN orders o ON op.order_id = o.id
group by op.product_id
Order by op.product_id
*/

SELECT pr.description, op.product_id, sum(op.quantity) total FROM orders_products op
INNER JOIN orders o ON op.order_id = o.id
INNER JOIN products pr ON pr.id = op.product_id
group by pr.description, op.product_id 
Order by op.product_id
GO

WITH Search (code, quantity) AS (
SELECT op.product_id, sum(op.quantity) total FROM orders_products op
INNER JOIN orders o ON op.order_id = o.id
group by  op.product_id 
)

SELECT pr.description, s.code, s.quantity  FROM Search s
INNER JOIN products pr ON pr.id = s.code
Order by s.code