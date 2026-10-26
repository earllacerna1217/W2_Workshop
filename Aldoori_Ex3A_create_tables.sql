DROP SCHEMA IF exists lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Clients (
customer_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
city VARCHAR(50),
created_at DATETIME
);

CREATE TABLE Dogs (
dog_id INT PRIMARY KEY,
Customer_id INT,
dog_name VARCHAR(50),
breed Varchar(50),
foreign key (customer_id)
	REFERENCES Clients(customer_id)
);

CREATE TABLE Appointments (
appointment_id INT PRIMARY KEY,
dog_id INT,
appointment_date DATE,
appointment_time TIME,
service_price DECIMAL(10,2),
FOREIGN KEY (dog_id)
	REFERENCES Dogs(dog_id)
);