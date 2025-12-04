# 🎬 Movie Ticket Booking System (MySQL)

A **relational database-driven system** for managing **movie ticket bookings**, allowing users to browse movies, select shows, book seats, and track payments.  
The system implements **real-time database operations** with **SQL queries**, ensuring data integrity, consistency, and efficient booking management.

---

## 🎯 Project Objectives
- Design a **robust relational database** for movie ticket bookings.
- Implement **efficient SQL queries** for CRUD operations.
- Ensure **data integrity** using primary and foreign keys, constraints, and normalization.
- Support **real-time booking and payment management**.

---

## ❓ Problem Statement
Traditional movie ticket booking methods are:
- Manual and error-prone
- Time-consuming for booking and seat allocation
- Difficult to track customer history and payments  

This project replaces manual processes with a **structured, automated database system** for **efficient, accurate, and fast booking operations**.

---

## ⚙️ Methodology

1. **Database Design**  
   Designed normalized tables for Movies, Theatres, Screens, Shows, Customers, Bookings, Seats, and Payments.

2. **Constraints Implementation**  
   Used **Primary Keys, Foreign Keys, UNIQUE constraints, and CHECK constraints** to maintain data integrity.

3. **Data Population**  
   Inserted sample records into tables to simulate real-world usage.

4. **Query Implementation**  
   Executed SQL queries for:
   - Viewing movies and shows  
   - Booking and cancelling tickets  
   - Checking seat availability  
   - Recording payments  

5. **Testing**  
   Validated queries and relationships to ensure accurate operations.

---

## 📊 Database Structure

| Table Name    | Description                                      |
|---------------|--------------------------------------------------|
| `Movies`      | Stores movie details                             |
| `Theatres`    | Stores theatre information                        |
| `Screens`     | Stores screens in each theatre                    |
| `Shows`       | Stores show timings for movies                    |
| `Customers`   | Stores customer details                           |
| `Bookings`    | Tracks ticket bookings                            |
| `Booking Seats`| Stores seat availability and allocation           |
| `Payments`    | Records payment information                       |

---

## 🗂️ ER Diagram
![ER Diagram](https://github.com/KADIRI-SANDEYYA/Movie_Ticket_Booking_System/blob/main/ER_Diagram.jpg)
*Entity-Relationship diagram showing relationships between Movies, Theatres, Screens, Shows, Customers, Bookings, Seats, and Payments.*

---

## 🧩 Tech Stack
- **Database:** MySQL / MariaDB  
- **Query Language:** SQL  
- **Tools:** MySQL Workbench, phpMyAdmin, Git, GitHub  

---

## 🧠 System Architecture

- **Customer → Select Movie & Show → Seat Selection → Booking → Payment → Confirmation**

---

## ⚙️ Key Features

- Manage movies, theatres, screens, shows, and customers

- Real-time seat availability tracking

- Automated booking and payment recording

- Enforces data integrity with primary/foreign keys and constraints

- Scalable for multi-theatre, multi-screen operations

---

## 🌟 Results

- Successfully created and populated all relational tables

- Implemented real-world booking scenarios with SQL queries

- Ensured data consistency and relational integrity

- Simplified ticket booking and payment processes

--- 

## 🔮 Future Enhancements

- Add user authentication and role-based access

- Build a web interface for customers to book tickets online

- Integrate payment gateway for real-time transactions

- Implement seat recommendation system based on availability

---

## 👤 Author

**Kadiri Sandeyya**

📧 **Email**: kadirisamson81@gmail.com

💼 **LinkedIn**: [My Linkedin Profile](https://www.linkedin.com/in/kadirisandeyya/)

---
