#Task 1: Creating a virtual table
CREATE VIEW OrdersView AS SELECT OrderID, Quantity, Cost FROM Orders WHERE Quantity > 2;

#Task 2: Writing a join statement

SELECT Customers.CustomerID, Customers.FullName, Orders.OrderID, Orders.Cost, Menus.MenuName, 
MenuItems.CourseName, MenuItems.StarterName
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN Menus ON Orders.MenuID = Menus.MenuID
INNER JOIN MenuItems ON MenuItems.ItemID = MenuItems.MenuItemID
WHERE Orders.Cost > 150 ORDER BY Orders.Cost DESC; 

#Task 3: Selecting Menu Items with 2 orders 
SELECT MenuName FROM Menus WHERE MenuID = ANY (SELECT MenuID FROM Orders WHERE Quantity > 2);
