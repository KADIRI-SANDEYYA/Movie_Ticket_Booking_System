create database Movie_Booking_System;

use Movie_Booking_System;


-- MOVIES TABLE
create table movies (
    movie_id int primary key auto_increment,
    title varchar(100) not null unique,
    genre varchar(50) not null,
    language varchar(50) not null,
    duration int check (duration > 0),
    release_date date not null
)auto_increment=1001;


-- THEATRES TABLE
create table theatres (
    theatre_id int primary key auto_increment,
    name varchar(100) not null unique,
    city varchar(50) not null,
    address varchar(255) not null
)auto_increment=2001;


-- SCREENS TABLE
create table screens (
    screen_id int primary key auto_increment,
    theatre_id int not null,
    screen_name varchar(50) not null,
    total_seats int not null check (total_seats > 0),
    foreign key (theatre_id) references theatres(theatre_id)
)auto_increment=101;


-- SHOWS TABLE
create table shows (
    show_id int primary key auto_increment,
    movie_id int not null,
    screen_id int not null,
    show_date date not null,
    show_time time not null,
    price decimal(10,2) not null check (price >= 50),
    foreign key (movie_id) references movies(movie_id),
    foreign key (screen_id) references screens(screen_id)
);


-- CUSTOMERS TABLE
create table Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL
)auto_increment=501;


-- BOOKINGS TABLE
create table bookings (
    booking_id int primary key auto_increment,
    customer_id int not null,
    show_id int not null,
    booking_time datetime default current_timestamp,
    total_amount decimal(10,2) not null check (total_amount >= 0),
    foreign key (customer_id) references customers(customer_id),
    foreign key (show_id) references shows(show_id)
)auto_increment=301;


-- BOOKING SEATS TABLE
create table booking_seats (
    seat_id int primary key auto_increment,
    booking_id int not null,
    seat_number varchar(10) not null,
    foreign key (booking_id) references bookings(booking_id)
)auto_increment=201;


-- PAYMENTS TABLE
create table payments (
    payment_id int primary key auto_increment,
    booking_id int not null,
    amount decimal(10,2) not null,
    payment_mode varchar(20) not null check (payment_mode in ('upi','card','cash')),
    payment_status varchar(20) default 'pending' check (payment_status in ('success','failed','pending')),
    payment_date datetime default current_timestamp,
    foreign key (booking_id) references bookings(booking_id)
)auto_increment=5001;



























