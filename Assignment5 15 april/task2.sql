Use TicketBookingSystem;
--Task2


--Q1
INSERT INTO Venu (venue_id, venue_name, address) VALUES
(1, 'Rajiv Gandhi International Stadium', 'Uppal, Hyderabad, Telangana, India'),
(2, 'Wankhede Stadium', 'Churchgate, Mumbai, Maharashtra, India'),
(3, 'Eden Gardens', 'BBD Bagh, Kolkata, West Bengal, India'),
(4, 'Chinnaswamy Stadium', 'MG Road, Bengaluru, Karnataka, India'),
(5, 'Feroz Shah Kotla Ground', 'I.P. Estate, New Delhi, India'),
(6, 'MA Chidambaram Stadium', 'Chepauk, Chennai, Tamil Nadu, India'),
(7, 'PCA Stadium', 'Phase 9, Mohali, Punjab, India'),
(8, 'Sardar Patel Stadium', 'Navrangpura, Ahmedabad, Gujarat, India'),
(9, 'Green Park Stadium', 'Civil Lines, Kanpur, Uttar Pradesh, India'),
(10, 'Rajiv Gandhi Cricket Stadium', 'Deorali, Gangtok, Sikkim, India');

--  Event table
INSERT INTO Event (event_id, event_name, event_date, event_time, venue_id, total_seats, available_seats, ticket_price, event_type)
VALUES
(1, 'Cricket Match', '2024-04-16', '14:00:00', 1, 50000, 35000, 500.00, 'Sports'),
(2, 'Bollywood Movie Premiere', '2024-04-17', '18:00:00', 2, 1000, 800, 200.00, 'Movie'),
(3, 'Music Concert', '2024-04-18', '20:00:00', 3, 2000, 1500, 100.00, 'Concert'),
(4, 'Football Match', '2024-04-19', '15:30:00', 4, 40000, 30000, 300.00, 'Sports'),
(5, 'Kabaddi Tournament', '2024-04-20', '17:00:00', 5, 3000, 2000, 50.00, 'Sports'),
(6, 'Stand-up Comedy Show', '2024-04-21', '19:30:00', 6, 1500, 1200, 150.00, 'Concert'),
(7, 'Basketball Championship', '2024-04-22', '16:00:00', 7, 8000, 6000, 200.00, 'Sports'),
(8, 'Cultural Dance Performance', '2024-04-23', '18:30:00', 8, 2500, 2000, 120.00, 'Concert'),
(9, 'Hockey League Match', '2024-04-24', '19:00:00', 9, 6000, 4500, 150.00, 'Sports'),
(10, 'Rock Band Concert', '2024-04-25', '21:00:00', 10, 5000, 4000, 80.00, 'Concert');


delete from Customer;
INSERT INTO Customer (customer_id, customer_name, email, phone_number)
VALUES
(1, 'Aarav Sharma', 'aarav.sharma@gmail.com', '+91 9876543210'),
(2, 'Aadhya Patel', 'aadhya.patel@gmail.com', '+91 8765432109'),
(3, 'Aditi Reddy', 'aditi.reddy@gmail.com', '+91 7654321098'),
(4, 'Advik Kumar', 'advik.kumar@gmail.com', '+91 6543210987'),
(5, 'Ananya Gupta', 'ananya.gupta@gmail.com', '+91 5432109876'),
(6, 'Aaradhya Singh', 'aaradhya.singh@gmail.com', '+91 4321098765'),
(7, 'Aryan Yadav', 'aryan.yadav@gmail.com', '+91 3210987654'),
(8, 'Aisha Sharma', 'aisha.sharma@gmail.com', '+91 2109876543'),
(9, 'Aryan Singh', 'aryan.singh@gmail.com', '+91 1098765432'),
(10, 'Anika Mishra', 'anika.mishra@gmail.com', '+91 0987654321');

select * from Customer;

INSERT INTO Booking (booking_id, customer_id, event_id, num_tickets, total_cost, booking_date)
VALUES
(1, 1, 1, 2, 1000.00, '2024-04-15'),
(2, 2, 2, 4, 800.00, '2024-04-15'),
(3, 3, 3, 1, 100.00, '2024-04-15'),
(4, 4, 4, 3, 900.00, '2024-04-15'),
(5, 5, 5, 5, 250.00, '2024-04-15'),
(6, 6, 6, 2, 300.00, '2024-04-15'),
(7, 7, 7, 3, 600.00, '2024-04-15'),
(8, 8, 8, 4, 480.00, '2024-04-15'),
(9, 9, 9, 2, 300.00, '2024-04-15'),
(10, 10, 10, 6, 480.00, '2024-04-15');

select * from Booking;

UPDATE Customer
SET booking_id = 1
WHERE customer_id = 1;

UPDATE Customer
SET booking_id = 2
WHERE customer_id = 2;

UPDATE Customer
SET booking_id = 3
WHERE customer_id = 3;

UPDATE Customer
SET booking_id = 4
WHERE customer_id = 4;

UPDATE Customer
SET booking_id = 5
WHERE customer_id = 5;

UPDATE Customer
SET booking_id = 6
WHERE customer_id = 6;

UPDATE Customer
SET booking_id = 7
WHERE customer_id = 7;

UPDATE Customer
SET booking_id = 8
WHERE customer_id = 8;

UPDATE Customer
SET booking_id = 9
WHERE customer_id = 9;

UPDATE Customer
SET booking_id = 10
WHERE customer_id = 10;


UPDATE Event
SET booking_id = B.booking_id
FROM Event E
JOIN Booking B ON E.event_id = B.event_id;

SELECT * FROM Event;


--Q2
SELECT * FROM EVENT;

--Q3
