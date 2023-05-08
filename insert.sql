INSERT INTO "vehicle" ("make", "model", "trim", "year", "color", "msrp", "miles")
VALUES 
    ('Honda', 'Civic', 'EX', 2021, 'White', 25000, 0),
    ('Toyota', 'Camry', 'LE', 2022, 'Black', 30000, 5000),
    ('Ford', 'F-150', 'Lariat', 2020, 'Blue', 45000, 10000);
   
INSERT INTO "sales_rep" ("first_name", "last_name", "email", "phone_number", "comission_rate")
VALUES 
    ('John', 'Doe', 'johndoe@email.com', '555-123-4567', 5),
    ('Jane', 'Smith', 'janesmith@email.com', '555-987-6543', 3),
    ('Bob', 'Johnson', 'bobjohnson@email.com', '555-555-5555', 7);
   
INSERT INTO "service_tech" ("first_name", "last_name", "age", "gender", "tech_level", "hourly_rate")
VALUES 
    ('Mike', 'Jones', 30, 'Male', 'Master Technician', 50),
    ('Sara', 'Lee', 25, 'Female', 'Journeyman Technician', 35),
    ('Tom', 'Smith', 45, 'Male', 'Master Technician', 50);
   
INSERT INTO "customer" ("first_name", "last_name", "age", "gender", "email", "address", "phone_number", "yearly_income", "rep_id")
VALUES 
    ('John', 'Doe', 35, 'Male', 'johndoe@example.com', '123 Main St', '555-1234', 75000, 1),
    ('Jane', 'Doe', 28, 'Female', 'janedoe@example.com', '456 Oak St', '555-5678', 60000, 2),
    ('Bob', 'Smith', 45, 'Male', 'bobsmith@example.com', '789 Maple St', '555-9012', 100000, 3);
    
