#Requirements and Conceptual Model
Maream Aldoori, Earl Lacerna

B) Who is the end user? -Lana will be the end user because the business will be a one person business.
What will the user need to be able to do? -The end user will need to be able to see which clients have scheduled appointments for their dogs to be walked and what time each appointment is scheduled.
What different categories of data might be important to track? -Customers, dog and appointment information. 

C) For each broad category of data that you come up with, what specific pieces of
information would be useful to track? 

-For client information: customer_id, first and last name, email, city and the date and time their customer id were created. 
-For dog information: Dog_id, dog name, and dog breed. 
-For appoitment information: Appoitnment_id, customer_id, dog_id and date, time of the appointment and service price

For each category, create a list of bullets
with what information that category includes

----------------------------------------
#Logical Model

a) What should be the main entities in your database (which will translate into tables)?
Aim for at least three, but not more than five, to keep things from getting overly
complicate
-We decided to use three main tables for Lana's dog walking business; Client's, Dogs and Appointments.

b) What attributes (column names) belong to each of those entities? It may be helpful
to consider an example of a single record belonging to that entity – what are the
pieces of information that the record should include?
**Clients**
- customer_id (Primary Key)
- first_name
- last_name
- email
- city
- created_at

**Dogs**
- dog_id (Primary Key)
- customer_id (Foreign Key)
- dog_name
- breed

**Appointments**
- appointment_id (Primary Key)
- dog_id (Foreign Key)
- appointment_date
- appointment_time
- service_price

c) What entities will have relationships to each other? That is, what information will
need to be reassembled together when data is retrieved from the database?
-A client can own multiple dogs, but each dog would belong to one client.
-A dog may have multiple appointments, but an appointment would only be connected to one dog.

d) Can you identify any possible many to many relationships?
-For our design we do not need a many to many relationships. But if Lana starts offering group walks with more than one dog in one appointment, we would add another table to connect with group walks.
