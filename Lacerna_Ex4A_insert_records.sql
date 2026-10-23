Use lana_dog_walking;

-- Exercise 4A: Insert 10 Clients
USE lana_dog_walking;

ALTER TABLE Clients
ADD COLUMN last_name VARCHAR(50);

DESCRIBE clients;

INSERT INTO Clients
(first_name, last_name, email, city, created_at)
VALUES
('Taylor', 'Swift', 'taylor.swift@example.com', 'San Francisco', '2026-09-01 09:15:00'),
('Bruno', 'Mars', 'bruno.mars@example.com', 'Oakland', '2026-09-03 10:30:00'),
('Ariana', 'Grande', 'ariana.grande@example.com', 'Berkeley', '2026-09-05 14:20:00'),
('Leonardo', 'DiCaprio', 'leonardo.dicaprio@example.com', 'San Mateo', '2026-09-08 11:45:00'),
('Selena', 'Gomez', 'selena.gomez@example.com', 'Daly City', '2026-09-10 08:30:00'),
('Ryan', 'Reynolds', 'ryan.reynolds@example.com', 'San Francisco', '2026-09-12 13:10:00'),
('Billie', 'Eilish', 'billie.eilish@example.com', 'Pacifica', '2026-09-15 15:00:00'),
('Zendaya', 'Coleman', 'zendaya.coleman@example.com', 'Oakland', '2026-09-18 12:25:00'),
('Chris', 'Hemsworth', 'chris.hemsworth@example.com', 'Burlingame', '2026-09-20 09:40:00'),
('Sabrina', 'Carpenter', 'sabrina.carpenter@example.com', 'San Bruno', '2026-09-22 16:15:00');

-- Exercise 4A: Insert 10 Dogs

INSERT INTO Dogs (customer_id, dog_name, breed)
SELECT customer_id, 'Benjamin', 'Golden Retriever'
FROM Clients WHERE email = 'taylor.swift@example.com'
UNION ALL
SELECT customer_id, 'Mochi', 'French Bulldog'
FROM Clients WHERE email = 'bruno.mars@example.com'
UNION ALL
SELECT customer_id, 'Luna', 'Pomeranian'
FROM Clients WHERE email = 'ariana.grande@example.com'
UNION ALL
SELECT customer_id, 'Max', 'German Shepherd'
FROM Clients WHERE email = 'leonardo.dicaprio@example.com'
UNION ALL
SELECT customer_id, 'Bella', 'Cavalier King Charles Spaniel'
FROM Clients WHERE email = 'selena.gomez@example.com'
UNION ALL
SELECT customer_id, 'Cooper', 'Labrador Retriever'
FROM Clients WHERE email = 'ryan.reynolds@example.com'
UNION ALL
SELECT customer_id, 'Shadow', 'Siberian Husky'
FROM Clients WHERE email = 'billie.eilish@example.com'
UNION ALL
SELECT customer_id, 'Milo', 'Shiba Inu'
FROM Clients WHERE email = 'zendaya.coleman@example.com'
UNION ALL
SELECT customer_id, 'Thor', 'Australian Shepherd'
FROM Clients WHERE email = 'chris.hemsworth@example.com'
UNION ALL
SELECT customer_id, 'Daisy', 'Cocker Spaniel'
FROM Clients WHERE email = 'sabrina.carpenter@example.com';

-- Exercise 4A: Insert 10 Appointments

INSERT INTO Appointments
(dog_id, appointment_date, appointment_time, service_price)
SELECT d.dog_id, v.appointment_date, v.appointment_time, v.service_price
FROM (
    SELECT 'taylor.swift@example.com' AS email, 'Benjamin' AS dog_name, '2026-10-26' AS appointment_date, '09:00:00' AS appointment_time, 25.00 AS service_price
    UNION ALL SELECT 'bruno.mars@example.com', 'Mochi', '2026-10-26', '10:30:00', 30.00
    UNION ALL SELECT 'ariana.grande@example.com', 'Luna', '2026-10-26', '13:00:00', 25.00
    UNION ALL SELECT 'leonardo.dicaprio@example.com', 'Max', '2026-10-27', '09:00:00', 35.00
    UNION ALL SELECT 'selena.gomez@example.com', 'Bella', '2026-10-27', '11:00:00', 25.00
    UNION ALL SELECT 'ryan.reynolds@example.com', 'Cooper', '2026-10-27', '14:00:00', 30.00
    UNION ALL SELECT 'billie.eilish@example.com', 'Shadow', '2026-10-28', '09:30:00', 35.00
    UNION ALL SELECT 'zendaya.coleman@example.com', 'Milo', '2026-10-28', '11:30:00', 25.00
    UNION ALL SELECT 'chris.hemsworth@example.com', 'Thor', '2026-10-28', '14:00:00', 30.00
    UNION ALL SELECT 'sabrina.carpenter@example.com', 'Daisy', '2026-10-29', '10:00:00', 25.00
) AS v
JOIN Clients c ON c.email = v.email
JOIN Dogs d ON d.customer_id = c.customer_id
           AND d.dog_name = v.dog_name;
           

