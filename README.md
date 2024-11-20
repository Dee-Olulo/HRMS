
# Hotel Reservation Management System (HRMS)

## Overview
The HRMS (Hotel Reservation Management System) is designed to manage hotel bookings, client data, room availability, payment processing, and staff management. This system allows hotel operators to handle reservations efficiently, track room usage, and streamline operations.

## Project Structure
This project includes the following files:

- **README.md**: This file, containing setup and usage instructions.
- **SQL_SCHEMA.sql**: SQL script for creating the required tables for the system.
- **CRUD_OPERATIONS.sql**: SQL script for inserting sample data into the tables.
- **ADVANCED_SQL_QUERIES.sql**: SQL script for querying and manipulating the data in the database.
- **table_structure.JPG**: file containing the structure of the database.
- **FILE REPORT**: Contains the documaentation about the whole project.
- ** PRESENTATION SLIDES**

## Requirements
Before running the scripts, ensure you have the following installed:
1. **SQL Server**: The system is built on SQL Server.
2. **MySQL OR SQL Server Management Studio (SSMS)**: Use mysql or ssms to run the SQL scripts for table creation, data insertion, and manipulation.

## Setup Instructions

### 1. Clone the Repository
Clone the HRMS repository to your local machine using Git:
git clone url
### 2. **Create the Database**
- To set up the database, follow these steps:

- Open SQL Server
- Connect to your SQL Server instance.
- Run the TABLE_CREATION.sql script to create the necessary tables in your database.
- You can run this script directly from mysql or ssms by opening the script and clicking Execute.

### 3. Insert Sample Data
Once the tables are created, run the Values_insertion.sql script to insert sample data into the tables. This will help you test the database and its functionality.

### 4. Query and Manipulate Data
Run the sql_manipulations.sql script to perform various queries and data manipulations based on the HRMS requirements. This script will provide insights into room availability, booking trends, client preferences, etc.
