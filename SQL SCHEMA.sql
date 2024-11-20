use hrms2;
create table Client(
client_id int primary key identity(1,1),
name varchar(50) not null,
gender varchar(20),
phone_number varchar(100),
email VARCHAR(100)
);

create table Room(
room_id int primary key identity(1,1),
room_number int not null,
room_type varchar(50),
client_id int not null,
room_price decimal(10,2) not null,
no_of_occupants int not null,
is_available bit not null default 1, 
foreign key(client_id) references Client(client_id)
);

create table Reservation(
reservation_id int primary key identity(1,1),
client_id int not null,
room_id int not null,
check_in_date date not null,
check_out_date date not null,
booking_status varchar(20) default 'confirmed',
no_of_days int,
foreign key(client_id) References Client(client_id),
foreign key (room_id) References Room(room_id)
);

create table Service(
service_id int primary key identity(1,1),
client_id int not null,
service_type varchar(50) not null,
cost decimal(10,2) not null,
foreign key(client_id) References Client(client_id)
);

CREATE TABLE Payment(
    payment_id INT PRIMARY KEY IDENTITY(1,1),
	payment_method VARCHAR(50),
    payment_Date DATE,
    client_id INT NOT NULL,
    FOREIGN key(client_id) REFERENCES Client(client_id) 
);