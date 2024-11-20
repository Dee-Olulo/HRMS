use hrms2;
Select distinct room_type from Room;
SELECT COUNT(DISTINCT room_type) FROM Room;

SELECT * FROM Client WHERE gender='F';

SELECT booking_status, no_of_days
FROM Reservation
WHERE booking_status = 'confirmed'
ORDER BY no_of_days

SELECT * FROM Room
WHERE room_type = 'junior' AND no_of_occupants <=3;


SELECT * FROM Room
WHERE room_price > 16000
AND room_type = 'executive suite';

SELECT * FROM Client
WHERE NAME LIKE 'A%';

SELECT MAX(room_price)  AS [PRESIDENTIAL SUITE] FROM Room;


SELECT * FROM Room
WHERE room_price BETWEEN 8000 AND 14000

SELECT C.name, C.email, R.check_in_date
FROM Client C
INNER JOIN Reservation R ON C.client_id = R.client_id;

SELECT P.payment_Date, p.payment_method, C.name
FROM Payment P
INNER JOIN Client C ON C.client_id = P.client_id;

SELECT C.name AS Client_name, R.room_id, R.check_in_date, R.check_out_date
FROM Reservation R
JOIN Client C 
ON R.client_id = C.client_id
ORDER BY no_of_days;

SELECT C.name, COUNT(R.reservation_id) AS Reservation_count
FROM Client C
LEFT JOIN Reservation R ON C.client_id = R.client_id
GROUP BY C.name
ORDER BY Reservation_count DESC, C.name;


SELECT COUNT(client_id) AS No_of_Customers, FORMAT(check_in_date, 'MM') AS MONTH
FROM Reservation
GROUP BY FORMAT(check_in_date, 'MM')
ORDER BY FORMAT(check_in_date, 'MM')ASC;

SELECT COUNT(client_id) AS No_of_Customers, gender
FROM CLIENT
GROUP BY gender
ORDER BY COUNT(client_id) DESC;

SELECT C.client_id, C.name, C.phone_number, R.room_id, R.check_in_date, R.Check_out_date
FROM Client C
INNER JOIN Reservation R ON R.client_id = C.client_id;

