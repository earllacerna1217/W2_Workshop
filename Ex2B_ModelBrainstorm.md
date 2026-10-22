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

--------------------------------

4. Reconvene with your small group and take turns reviewing each of your diagrams.
Have one person open Ex2B_Model_Brainstorm.md and take notes on your group’s
conversation as you discuss the questions below.

a) What are the similarities between individual diagrams? What turned out the same?

-Maream's comment about Earl's EDR Diagram:Both of our diagrams have the same three tables: Clients, Dogs, and Appointments. We also used the same primary and foreign keys and showed the same one-to-many relationships between the tables. Overall, we had the same idea of how the database should be organized.

-Earl's comment about Maream's EDR Diagram:

b) Where did each of your diagrams differ? What explanation do you have for those
differences? What might be the pros and cons of each approach?

-Maream's comment about Earl's EDR Diagram:Our diagrams were almost the same, but we explained things a little differently. Earl included descriptions under each relationship, which made his diagram easier to understand. Mine focused more on explaining what PK, FK, and one-to-many mean. I think both approaches are helpful because his makes the relationships easier to follow, while mine explains the database terms in more detail. Overall, there weren’t any major differences in how we organized our tables.

-Earl's comment about Maream's EDR Diagram:
