use Movie_Booking_System;


-- MOVIES DATA
insert into movies (title, genre, language, duration, release_date) values
('Interstellar', 'sci-fi', 'english', 169, '2014-11-07'),
('Baahubali: The Beginning', 'action', 'telugu', 159, '2015-07-10'),
('Premam', 'romance', 'malayalam', 156, '2015-05-29'),
('RRR', 'action', 'telugu', 187, '2022-03-25'),
('Vikram', 'action', 'tamil', 175, '2022-06-03'),
('Pathaan', 'action', 'hindi', 146, '2023-01-25'),
('Ala Vaikunthapurramuloo', 'drama', 'telugu', 163, '2020-01-12'),
('The Dark Knight', 'action', 'english', 152, '2008-07-18'),
('Master', 'action', 'tamil', 179, '2021-01-13'),
('Bangalore Days', 'drama', 'malayalam', 171, '2014-05-30');


-- THEATRES DATA
insert into theatres (name, city, address) values
('pvr orion mall', 'bangalore', 'orion mall, rajajinagar, bangalore'),
('inox gvk one', 'hyderabad', 'gvk one mall, banjara hills, hyderabad'),
('spi escape cinemas', 'chennai', 'express avenue mall, royapettah, chennai'),
('pvr koramangala', 'bangalore', 'forum mall road, koramangala, bangalore'),
('asian radhika cinemas', 'hyderabad', 'radhika circle, ecil, hyderabad'),
('rohini silver screens', 'chennai', 'koyambedu main road, chennai'),
('pvr lulu mall', 'kochi', 'lulu mall, edappally, kochi'),
('pvr vijayawada', 'vijayawada', 'pvp mall, vijayawada, andhra pradesh'),
('cinepolis forum', 'kochi', 'forum mall, maradu, kochi'),
('pvr visakhapatnam', 'visakhapatnam', 'cmr central mall, maddilapalem, visakhapatnam');

-- SCREENS DATA
insert into screens (theatre_id, screen_name, total_seats) values
(2001, 'screen 1 - orion imax', 320),
(2002, 'screen 2 - koramangala deluxe', 250),
(2003, 'screen 1 - inox gold', 200),
(2004, 'screen 3 - asian ultra', 180),
(2005, 'screen 1 - escape atmos', 220),
(2006, 'screen 2 - rohini super', 300),
(2007, 'screen 1 - lulu premier', 280),
(2008, 'screen 2 - forum cine', 220),
(2009, 'screen 1 - pvp dolby', 240),
(2010, 'screen 3 - vizag max', 260);

-- SHOWS DATA
insert into shows (movie_id, screen_id, show_date, show_time, price) values
(1001, 101, '2025-12-01', '10:00:00', 150.00),
(1002, 102, '2025-12-01', '13:00:00', 250.00),
(1003, 103, '2025-12-01', '16:00:00', 350.00),
(1004, 104, '2025-12-01', '19:00:00', 150.00),
(1005, 105, '2025-12-02', '10:30:00', 250.00),
(1006, 106, '2025-12-02', '13:30:00', 400.00),
(1007, 107, '2025-12-02', '16:30:00', 150.00),
(1008, 108, '2025-12-02', '19:30:00', 350.00),
(1009, 109, '2025-12-03', '11:00:00', 250.00),
(1010, 110, '2025-12-03', '14:00:00', 150.00);

-- CUSTOMERS DATA
insert into customers (name, email, phone) values
('samson kadiri', 'samson.k@example.com', '9876543210'),
('sangeetha rao', 'sangeetha.r@example.com', '9876543211'),
('rohit sharma', 'rohit.s@example.com', '9876543212'),
('ananya mehta', 'ananya.m@example.com', '9876543213'),
('vikram singh', 'vikram.s@example.com', '9876543214'),
('sneha kapoor', 'sneha.k@example.com', '9876543215'),
('arjun patil', 'arjun.p@example.com', '9876543216'),
('isha gupta', 'isha.g@example.com', '9876543217'),
('saurav das', 'saurav.d@example.com', '9876543218'),
('meera nair', 'meera.n@example.com', '9876543219');


-- BOOKINGS DATA
insert into bookings (customer_id, show_id, booking_time, total_amount) values
(501, 1, '2025-11-28 10:15:00', 150.00),
(502, 2, '2025-11-28 11:30:00', 250.00),
(503, 3, '2025-11-28 12:00:00', 350.00),
(504, 4, '2025-11-28 13:15:00', 150.00),
(505, 5, '2025-11-28 14:00:00', 250.00),
(506, 6, '2025-11-28 15:30:00', 400.00),
(507, 7, '2025-11-28 16:45:00', 150.00),
(508, 8, '2025-11-28 17:00:00', 350.00),
(509, 9, '2025-11-28 18:15:00', 250.00),
(510, 10, '2025-11-28 19:30:00', 150.00);


-- BOOKING SEATS DATA
insert into booking_seats (booking_id, seat_number) values
(301, 'a1'),
(302, 'b1'),
(303, 'c1'),
(304, 'd1'),
(305, 'e1'),
(306, 'f1'),
(307, 'g1'),
(308, 'h1'),
(309, 'i1'),
(310, 'j1');


-- PAYMENTS DATA
insert into payments (booking_id, amount, payment_mode, payment_status, payment_date) values
(301, 150.00, 'upi', 'success', '2025-11-28 10:20:00'),
(302, 250.00, 'card', 'success', '2025-11-28 11:35:00'),
(303, 350.00, 'cash', 'pending', '2025-11-28 12:05:00'),
(304, 150.00, 'upi', 'failed', '2025-11-28 13:20:00'),
(305, 250.00, 'card', 'success', '2025-11-28 14:05:00'),
(306, 400.00, 'cash', 'failed', '2025-11-28 15:35:00'),
(307, 150.00, 'upi', 'success', '2025-11-28 16:50:00'),
(308, 350.00, 'card', 'pending', '2025-11-28 17:05:00'),
(309, 250.00, 'upi', 'success', '2025-11-28 18:20:00'),
(310, 150.00, 'cash', 'pending', '2025-11-28 19:35:00');