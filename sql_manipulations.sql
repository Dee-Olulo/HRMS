--CRUD OPERATIONS
USE HRMS;

/*UPDATE Client
SET name = 'Zarah Adana', email = 'zarahAdana@ gmail.com'
WHERE client_id = 17;*/

SELECT * FROM Reservation;

SELECT  DISTINCT room_type FROM Room;--RETURNS THE UNIQUE VALUES IN A SPECIFIED COLUMN

SELECT COUNT(DISTINCT room_type) FROM Room; --no of unique values in a specified column.

SELECT * FROM Client WHERE gender='Female' --where clause used to filter records

SELECT booking_status, no_of_days 
    FROM Reservation 
    WHERE booking_status='Confirmed'
    ORDER BY no_of_days;

SELECT * FROM Room
WHERE room_type ='junior' OR no_of_occupants= 4;

SELECT * FROM Room
    WHERE room_price > 17000.00
    AND room_type = 'Executive Suite';

SELECT * FROM Client
    WHERE name LIKE 'A%';

SELECT fname, lname FROM Staff
    WHERE NOT position = 'Room Service';

SELECT  email FROM Staff 
    WHERE position IS NOT NULL;

/*DELETE FROM Service WHERE service_id=1; --WHERE CLAUSE FILTERS RECORDS
DELETE FROM  Staff; --DELETES ALL RECORDS AND THE TABKE REMAINS EMPTY
DROP TABLE Service; --REMOVES THE TABLE COMPLETELY.*/

SELECT MIN(cost) AS Promo FROM Service;

SELECT MAX(room_price) AS Presidential FROM Room;

SELECT TOP 10 * FROM Client;

SELECT TOP 5 name, gender FROM Client;

SELECT * FROM Room
    WHERE room_price BETWEEN 10000 AND 16000;

SELECT MIN(room_price) AS [Smallest Price], room_type
    FROM Room
    GROUP BY room_type;

SELECT c.email, c.name, r.check_in_date
    FROM Client c
    INNER JOIN Reservation r ON c.client_id= r.client_id;

SELECT P.payment_Date, P.payment_method, c.name
    FROM Payment P
    INNER JOIN Client c ON c.client_id = p.client_id

SELECT * FROM Room r
LEFT JOIN Client c ON c.client_id= r.client_id
SELECT c.client_id, c.name, c.phone_number, r.room_id, r.check_in_date, r.check_out_date
FROM Client c
INNER JOIN Reservation r ON c.client_id = r.client_id;

SELECT COUNT(client_id) AS total, gender
FROM Client
GROUP BY gender
ORDER BY COUNT(client_id) DESC;

SELECT COUNT(client_id) AS No_of_Customers, FORMAT(check_in_date, 'MM')AS MONTH
 FROM reservation GROUP BY FORMAT(check_in_date, 'MM')
 ORDER BY FORMAT(check_in_date, 'MM')ASC;

 --returns a list of all client names and the number of reservations per client, 
-- sorted starting with the client with the most reservations and then by the client's name.
SELECT c.name, COUNT(r.reservation_id) AS reservation_count
FROM  client c
LEFT JOIN reservation r
ON c.client_id = r.client_id
GROUP BY c.name
ORDER BY reservation_count DESC, c.name;

--returns a list of reservations that end in JANUARY 2025, 
-- including the name of the Client, the room id, and the reservation dates.
SELECT 
    c.name AS guest_name, 
    r.room_id, 
    r.check_in_date, 
    r.check_out_date
FROM 
    reservation r
JOIN 
    client c
ON 
    r.client_id = c.client_id
WHERE 
    r.check_in_date BETWEEN '2024-12-01' AND '2025-01-31'
ORDER BY 
    r.no_of_days, c.name;


