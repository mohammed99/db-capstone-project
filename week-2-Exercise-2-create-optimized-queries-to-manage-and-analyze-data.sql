
#Task 1: Creating GetMaxQuantity Procedure  
DELIMITER // 
CREATE PROCEDURE GetMaxQuantity()
BEGIN
SELECT MAX(Quantity) AS MaximumQuantity FROM Orders; 
END//
DELIMITER ; 

#Task 2: GetOrderDetail Preperd statement 
PREPARE GetOrderDetail FROM 'SELECT OrderID, Quantity, Cost FROM Orders WHERE OrderID = ?';
SELECT @id := 1;
EXECUTE GetOrderDetail USING @id;

#Task 3: Creating CancelOrder() Procedure 
DELIMITER // 
CREATE PROCEDURE CancelOrder(IN id INT)
BEGIN 
DELETE FROM Orders WHERE OrderID = id; 
END //
