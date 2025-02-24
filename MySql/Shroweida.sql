
-- First Create Data Base
create database ShroweidaDB
use ShroweidaDB

create database Sharwida2 
use Sharwida2

-- CREATE First Table Planes with primary key id and check for somethings i dont konw what should i explain i think it's clear
create table Planes (
    PlaneID int primary key,
    Company nvarchar(max) not null,
    PassengersCapacity int not null,
    NextTripDate datetime not null,
    TripDestination nvarchar(max) not null,
    FuelCapacity decimal(10,2) not null check (FuelCapacity >= 30)
);

create table Flights (
    ID int primary key,
    From_Location nvarchar(max) not null,
    Destination_Location nvarchar(max) not null,
    Take_Off_Time datetime not null,
    Arrival_Time datetime not null,
    Plane_ID int not null unique references Planes(PlaneID),
    Runway_ID int not null references Runway(ID)
);

create table Users (
    UserID int primary key,
    Name nvarchar(max) not null,
    Gender char(1) not null check (Gender in ('M','F')),
    Age int not null check (Age >= 0),
    Address nvarchar(max),
    Role nvarchar(50) check (Role in ('Passenger','Pilot','FlightAttendant','AirportEmployee'))
);


create table PassengerDetails (
    UserID int primary key references Users(UserID),
    Plane_ID int not null references Planes(PlaneID),
    Flight_ID int not null references Flights(ID)  --> foreign key
);

create table EmployeeDetails (
    UserID int primary key references Users(UserID),
    Salary decimal(10,2)
);

-- cuz i'm genius and forgot to add it
ALTER TABLE EmployeeDetails
    ADD Plane_ID INT;

ALTER TABLE EmployeeDetails
    ADD CONSTRAINT FK_EmployeeDetails_Plane
        FOREIGN KEY (Plane_ID) REFERENCES Planes(PlaneID);



create table Runway (
    ID int primary key,
    Plane_ID int not null unique references Planes(PlaneID),
    Flight_Time datetime,
    Status varchar(10) not null check (Status in ('open','close'))
);


create table AirlineCompanies (
    ID int primary key,
    Name nvarchar(max) not null,
    Headquarters nvarchar(max),
    Fleet_Size int default 0
);


-- insert some data

-- Insert into Planes
INSERT INTO planes (planeid, company, passengerscapacity, nexttripdate, tripdestination, fuelcapacity) VALUES
       (101, 'Airline A', 180, '2025-02-20 08:00:00', 'Tanta', 50),
       (102, 'Airline B', 250, '2025-02-21 14:30:00', 'Berlin, Germany', 70),
       (103, 'Airline C', 300, '2025-02-22 10:00:00', 'Tokyo, Japan', 90);

-- Insert into Users
INSERT INTO users (userid, name, gender, age, address, role) VALUES
      (201, 'Mohamed Elsayed', 'M', 32, '123 Main St, USA', 'Pilot'),
      (202, 'Badr Mohamed', 'F', 28, '456 Park Ave, UK', 'FlightAttendant'),
      (203, 'Tahany Emad', 'M', 40, '789 Elm St, Germany', 'AirportEmployee'),
      (204, 'Emily White', 'F', 25, '101 Sunset Blvd, France', 'Passenger'),
      (205, 'Michael Johnson', 'M', 35, '222 Maple St, UAE', 'Passenger');

-- Insert into Runway
INSERT INTO runway (id, plane_id, flight_time, status) VALUES
     (301, 101, '2025-02-20 08:15:00', 'open'),
     (302, 102, '2025-02-21 14:45:00', 'open'),
     (303, 103, '2025-02-22 10:20:00', 'close');

-- Insert into Flights
INSERT INTO flights (id, from_location, destination_location, take_off_time, arrival_time, plane_id, runway_id) VALUES
    (401, 'Shroweida', 'Tanta', '2025-02-19 12:00:00', '2025-02-19 16:30:00', 101, 301),
    (402, 'London, UK', 'Berlin, Germany', '2025-02-21 14:30:00', '2025-02-21 18:00:00', 102, 302),
    (403, 'Dubai, UAE', 'Tokyo, Japan', '2025-02-22 10:00:00', '2025-02-22 22:00:00', 103, 303);

-- Insert into PassengerDetails
INSERT INTO passengerdetails (userid, plane_id, flight_id) VALUES
    (204, 101, 401),
    (205, 102, 402);

-- Insert into EmployeeDetails
INSERT INTO employeedetails (userid, salary) VALUES
     (201, 75000,1244),
     (202, 45000,102),
     (203, 50000,103);

-- Insert into AirlineCompanies
INSERT INTO airlinecompanies (id, name, headquarters, fleet_size) VALUES
     (501, 'Airline A', 'New York, USA', 120),
     (502, 'Airline B', 'London, UK', 95),
     (503, 'Airline C', 'Dubai, UAE', 80);


-- Query Problem

-- 1
  select * from flights
  where from_location = 'Shroweida'
  and take_off_time between getdate() and dateadd(day, 7, getdate());


    INSERT INTO planes (planeid, company, passengerscapacity, nexttripdate, tripdestination, fuelcapacity) VALUES
    (1244, 'Airline D', 200, '2025-02-25 08:00:00', 'Mashtool, Egypt', 50)
-- 2
    select u.Name Name,ED.*
    from Users u
    join EmployeeDetails ED on u.UserID = ED.UserID
    where ED.Plane_ID = 1244
    union
    select u.name Name,PD.*
    from Users u
    join PassengerDetails PD on u.UserID = PD.UserID
    where PD.Plane_ID = 1244;

-- 3
select * from Runway
where Status = 'Open'

-- 4
select Company,PassengersCapacity
from Planes
where TripDestination = 'Tanta'
