CREATE DATABASE TicketBookingSystem;
USE TicketBookingSystem;

CREATE TABLE Venu (
venue_id INT PRIMARY KEY,
venue_name VARCHAR(50),
address VARCHAR(50)
);

-- Event Table
CREATE TABLE Event (
    event_id INT PRIMARY KEY,
    event_name VARCHAR(50),
    event_date DATE,
    event_time TIME,
    venue_id INT,
    total_seats INT,
    available_seats INT,
    ticket_price DECIMAL(10, 2),
    event_type VARCHAR(50) CHECK (event_type IN ('Movie', 'Sports', 'Concert')),
    FOREIGN KEY (venue_id) REFERENCES Venu(venue_id) ON DELETE CASCADE
);
SELECT * FROM Venu;


-- Customer Table
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(50),
    phone_number VARCHAR(50)
);

CREATE TABLE Booking (
    booking_id INT PRIMARY KEY,
    customer_id INT,
    event_id INT,
    num_tickets INT,
    total_cost DECIMAL(10, 2),
    booking_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (event_id) REFERENCES Event(event_id) ON DELETE CASCADE
);

ALTER TABLE Event
ADD booking_id INT,
FOREIGN KEY (booking_id) REFERENCES Booking(booking_id);



ALTER TABLE Customer
ADD booking_id INT,
FOREIGN KEY (booking_id) REFERENCES Booking(booking_id);

select * from Customer;
