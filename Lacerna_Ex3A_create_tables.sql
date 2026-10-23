drop schema if EXISTS lana_dog_walking;
create schema lana_dog_walking;
use lana_dog_walking;

-- Creating table "Clients"
CREATE TABLE Clients (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    city VARCHAR(50),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

DESCRIBE clients;

-- Creating table "Dogs"
CREATE TABLE Dogs (
    dog_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    dog_name VARCHAR(50) NOT NULL,
    breed VARCHAR(50),
    CONSTRAINT fk_dogs_client
        FOREIGN KEY (customer_id)
        REFERENCES Clients(customer_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

DESCRIBE dogs;

-- Creating table "Appointment"
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    dog_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    service_price DECIMAL(6,2) NOT NULL,
    CONSTRAINT fk_appointments_dog
        FOREIGN KEY (dog_id)
        REFERENCES Dogs(dog_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

DESCRIBE appointments;
-- Verififying the schema
SHOW TABLES;

-- Verification adding clients
USE lana_dog_walking;

INSERT INTO Clients (first_name, email, city)
VALUES ('Sarah', 'sarah.johnson@example.com', 'San Francisco');
 --
SELECT *
FROM Clients
WHERE email = 'sarah.johnson@example.com';

--  insterting a client and appoitmment
INSERT INTO Dogs (customer_id, dog_name, breed)
VALUES (1, 'Max', 'Golden Retriever');
-- Verifying dog
SELECT *
FROM Dogs
WHERE dog_name = 'Max';

-- Inserting Appointments
INSERT INTO Appointments
(dog_id, appointment_date, appointment_time, service_price)
VALUES
(1, '2026-10-26', '09:00:00', 25.00);

-- Verifying everthing 
SELECT
    c.first_name,
    c.email,
    d.dog_name,
    d.breed,
    a.appointment_date,
    a.appointment_time,
    a.service_price
FROM Clients c
JOIN Dogs d
    ON c.customer_id = d.customer_id
JOIN Appointments a
    ON d.dog_id = a.dog_id
WHERE c.email = 'sarah.johnson@example.com';

-- New client
USE lana_dog_walking;

INSERT INTO Clients (first_name, email)
VALUES ('Lillianna Williamson', 'Liwilliamson@email.com');
INSERT INTO Dogs (customer_id, dog_name, breed)
SELECT customer_id, 'Koda', 'Staffy/Boxer'
FROM Clients
WHERE email = 'Liwilliamson@email.com';

