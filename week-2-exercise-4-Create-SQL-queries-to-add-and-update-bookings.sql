#Task 1: Create AddBooking() Proceduce 
DELIMITER //
CREAtE PROCEDURE AddBooking(IN bookingid INT, IN customerid INT, IN bookingdate DATE, IN tablenumber INT)
BEGIN
INSERT INTO Bookings(BookingID, CustomerID, BookingDate, TableNo) 
VALUES(bookingid, customerid, bookingdate, tablenumber); 
SELECT "New Booking Added"; 
END //
DELIMITER ;

#Task 2: CREATE UpdateBooking() Procedure
DELIMITER //
CREAtE PROCEDURE UpdateBooking(IN bookingid INT, IN bookingdate DATE)
BEGIN
UPDATE Bookings SET BookingDate = bookingdate WHERE BookingID = bookingid; 
SELECT CONCAT("Booking ", BookingID, " Updated"); 
END //
DELIMITER ;

#Task 3: CREATE CancelBooking() Procedure
DELIMITER //
CREAtE PROCEDURE CancelBooking(IN bookingid INT)
BEGIN
Delete FROM Bookings WHERE BookingID = bookingid; 
SELECT CONCAT("Booking ", BookingID, " Deleted"); 
END //
DELIMITER ;