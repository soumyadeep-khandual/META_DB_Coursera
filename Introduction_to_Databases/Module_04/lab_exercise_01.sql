CREATE DATABASE chinook_simple;
USE chinook_simple;

CREATE TABLE Employee (
    EmployeeID INT NOT NULL,
    LastName VARCHAR(20),
    FirstName VARCHAR(20),
    Title VARCHAR(30),
    ReportsTo INT,
    BirthDate DATE,
    HireDate DATE,
    Address VARCHAR(70),
    PRIMARY KEY (EmployeeID)
);

CREATE TABLE Artist (
    ArtistID INT NOT NULL,
    Name VARCHAR(120),
    PRIMARY KEY (ArtistID)
);

CREATE TABLE Albums (
    AlbumID INT NOT NULL,
    Title VARCHAR(160),
    ArtistID INT,
    PRIMARY KEY (AlbumID),
    FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID)
);

CREATE TABLE Tracks (
    TrackID INT NOT NULL,
    Name VARCHAR(200),
    AlbumID INT,
    UnitPrice DECIMAL,
    PRIMARY KEY (TrackID),
    FOREIGN KEY (AlbumID) REFERENCES Albums (AlbumID)
);

CREATE TABLE Customers (
    CustomerID INT NOT NULL,
    LastName VARCHAR(20),
    FirstName VARCHAR(20),
    Company VARCHAR(30),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    SupportRepID INT,
    Address VARCHAR(70),
    PRIMARY KEY (CustomerID),
    FOREIGN KEY (SupportRepID) REFERENCES Employee (EmployeeID)
);

CREATE TABLE Invoices (
    InvoiceID INT NOT NULL,
    CustomerID INT,
    InvoiceDate Date,
    BillingAddress VARCHAR(100),
    TrackID INT,
    PRIMARY KEY (InvoiceID),
    FOREIGN KEY (TrackID) REFERENCES Tracks (TrackID)
);