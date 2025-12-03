-- JOINS – QUESTIONS

-- 1.	WRITE A QUERY TO DISPLAY MOVIE TITLE AND SHOW TIME USING A JOIN.
select movies.title MovieName,shows.show_time ShowTime from movies join shows on movies.movie_id=shows.movie_id;

-- 2.	WRITE A QUERY TO LIST ALL BOOKINGS WITH CUSTOMER NAME.
select bookings.booking_id,bookings.show_id,customers.name CustomerName,bookings.booking_time,bookings.total_amount
from bookings join customers on bookings.customer_id=customers.customer_id;

-- 3.	WRITE A QUERY TO FETCH THEATRE NAME AND ITS SCREENS.
select screens.screen_id,screens.theatre_id,theatres.name TheatreName,screens.screen_name,screens.total_seats 
from theatres join screens on theatres.theatre_id=screens.theatre_id;

-- 4.	WRITE A QUERY TO DISPLAY BOOKINGS WITH PAYMENT STATUS.
select bookings.booking_id,customers.name CustomerName,payments.amount,payments.payment_mode,payments.payment_status
from bookings join customers on bookings.customer_id=customers.customer_id
join payments on bookings.booking_id=payments.booking_id;

-- 5.	WRITE A QUERY TO LIST ALL CUSTOMERS WHO BOOKED A SPECIFIC MOVIE.
select customers.customer_id,customers.name CustomerName,customers.email,customers.phone 
from bookings join customers on customers.customer_id=bookings.customer_id
join shows on bookings.show_id=shows.show_id
join movies on shows.movie_id=movies.movie_id
where movies.title='Jawan';

-- 6.	WRITE A QUERY TO SHOW ALL SEATS BOOKED FOR A SHOW.
select bookings.booking_id,customers.name CustomerName,booking_seats.seat_number,movies.title MovieName
from movies join shows on movies.movie_id =shows.movie_id 
join bookings on shows.show_id=bookings.show_id
join customers on bookings.customer_id=customers.customer_id
join booking_seats on bookings.booking_id=booking_seats.booking_id;

-- 7.	WRITE A QUERY TO GET ALL SHOWS OF A THEATRE.
select shows.show_id,theatres.name TheatreName,screens.screen_name,movies.title MovieName
from  theatres join screens on theatres.theatre_id=screens.theatre_id
join shows on shows.screen_id=screens.screen_id
join movies on movies.movie_id=shows.movie_id;

-- 8.	WRITE A QUERY TO PERFORM A LEFT JOIN BETWEEN SHOWS AND BOOKINGS.
select * from shows left join bookings on shows.show_id=bookings.show_id;
