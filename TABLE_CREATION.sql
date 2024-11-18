USE HRMS;
CREATE TABLE Client (
    client_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50) NOT NULL,
	gender VARCHAR(20),
    phone_number VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE Room (
    room_id INT PRIMARY KEY IDENTITY(1,1),
    room_number INT NOT NULL,
	room_type VARCHAR(50),
    client_id INT NOT NULL,
	room_price  DECIMAL(10, 2) NOT NULL,
	no_of_occupants INT NOT NULL,
	is_available BIT NOT NULL DEFAULT 1,  --status (1 = available, 0 = not available),
	FOREIGN KEY(client_id) REFERENCES Client(client_id)
);

CREATE TABLE Reservation (
    reservation_id INT PRIMARY KEY IDENTITY(1,1),
    client_id INT NOT NULL,
    room_id INT NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
	booking_status VARCHAR(20) DEFAULT 'Confirmed', --reservation status (e.g., Confirmed, Cancelled)
	no_of_days INT,
    FOREIGN KEY (client_id) REFERENCES Client(client_id),
    FOREIGN KEY (room_id) REFERENCES Room(room_id)
);

CREATE TABLE Payment (
    payment_id INT PRIMARY KEY IDENTITY(1,1),
	payment_method VARCHAR(50),
    payment_Date DATE,
    client_id INT NOT NULL,
    FOREIGN key(client_id) REFERENCES Client(client_id) 
);

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY IDENTITY(1,1),
    fname VARCHAR(20) NOT NULL,
    lname VARCHAR(20) NOT NULL,
    position VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE Service (
    service_id INT PRIMARY KEY IDENTITY(1,1),
    service_type VARCHAR(50) NOT NULL,
    cost DECIMAL(10, 2) NOT NULL

);

