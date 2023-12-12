#Task 1: populating the Bookings table with data records 

INSERT INTO Bookings (BookingID, BookingDate, TableNo, CustomerID) VALUES
(1,'2022-10-10',5,1), 
(2,'2022-11-12',3, 3), 
(3,'2022-10-11',2,2),
(4,'2022-10-13',2,1);

#Task 2: Creating CheckBooking() procedure 
DELIMITER //  
CREATE PROCEDURE CheckBooking(IN BDate DATE, IN TabNo INT)
BEGIN
SELECT CONCAT("Table ", TableNo, " is already booked.") FROM Bookings
WHERE BookingDate=BDate AND TableNo=TabNo; 
END//
DELIMITER ;  

#Task 3: verify bookings, and decline eservations for tables already booked. 
DELIMITER //
CREATE PROCEDURE AddValidBooking(IN BDate DATE, IN TabNo INT)
START TRANSACTION; 
INSERT INTO Bookings(BookingDate, TableNo) VALUES (BDate, TabNo); 
IF EXISTS (SELECT BookingID FROM Bookings WHERE BookingDate=BDate AND TableNo=TabNo)
THEN ROLLBACK 
ELSE COMMIT //
DELIMITER ;  


