USE lana_dog_walking;

INSERT INTO Clients
(customer_id, first_name, last_name, email, city, created_at)
VALUES
(1, 'Sarah', 'Johnson', 'sarah.johnson@example.com', 'Salt Lake City', '2026-10-20 09:00:00'),
(2, 'Emma', 'Wilson', 'emma.wilson@example.com', 'Sandy', '2026-10-20 10:00:00'),
(3, 'Michael', 'Brown', 'michael.brown@example.com', 'Murray', '2026-10-20 11:00:00'),
(4, 'Jessica', 'Davis', 'jessica.davis@example.com', 'Draper', '2026-10-21 08:30:00'),
(5, 'David', 'Miller', 'david.miller@example.com', 'West Jordan', '2026-10-21 09:30:00'),
(6, 'Olivia', 'Taylor', 'olivia.taylor@example.com', 'Midvale', '2026-10-21 10:30:00'),
(7, 'James', 'Anderson', 'james.anderson@example.com', 'South Jordan', '2026-10-22 08:00:00'),
(8, 'Sophia', 'Thomas', 'sophia.thomas@example.com', 'Herriman', '2026-10-22 09:00:00'),
(9, 'Daniel', 'Moore', 'daniel.moore@example.com', 'Millcreek', '2026-10-22 10:00:00'),
(10, 'Emily', 'Martin', 'emily.martin@example.com', 'Riverton', '2026-10-23 09:00:00'),
(11, 'Noah', 'Clark', 'noah.clark@example.com', 'Taylorsville', '2026-10-23 10:00:00');

SELECT * FROM Clients;

INSERT INTO Dogs
(dog_id, customer_id, dog_name, breed)
VALUES
(1, 1, 'Bella', 'Golden Retriever'),
(2, 2, 'Max', 'Labrador'),
(3, 3, 'Charlie', 'Poodle'),
(4, 4, 'Luna', 'German Shepherd'),
(5, 5, 'Cooper', 'Golden Retriever'),
(6, 6, 'Daisy', 'Beagle'),
(7, 7, 'Rocky', 'Bulldog'),
(8, 8, 'Milo', 'Husky'),
(9, 9, 'Bailey', 'Boxer'),
(10, 10, 'Lucy', 'Corgi'),
(11, 11, 'Teddy', 'Shih Tzu');

SELECT * FROM Dogs;

INSERT INTO Appointments
(appointment_id, dog_id, appointment_date, appointment_time, service_price)
VALUES
(1, 1, '2026-10-26', '10:00:00', 25.00),
(2, 2, '2026-10-26', '11:00:00', 30.00),
(3, 3, '2026-10-27', '09:00:00', 25.00),
(4, 4, '2026-10-27', '12:00:00', 35.00),
(5, 5, '2026-10-28', '10:30:00', 30.00),
(6, 6, '2026-10-28', '13:00:00', 25.00),
(7, 7, '2026-10-29', '09:30:00', 35.00),
(8, 8, '2026-10-29', '14:00:00', 30.00),
(9, 9, '2026-10-30', '11:30:00', 25.00),
(10, 10, '2026-10-30', '15:00:00', 30.00),
(11, 11, '2026-10-31', '10:00:00', 25.00);

SELECT * FROM Appointments;