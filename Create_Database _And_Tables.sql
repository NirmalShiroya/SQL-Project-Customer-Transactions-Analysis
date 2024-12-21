-- Create Database SalesDatabase

 Create Database BlueSky

-- Create CustomerDetail-1 Dimension Table

CREATE TABLE dbo.CustomerDetail_1 (
    CustomerID VARCHAR(50) PRIMARY KEY,
    CustomerName VARCHAR(100),
    Birthdate DATE,
    MaritalStatus VARCHAR(20),
    Gender VARCHAR(10),
    Postcode VARCHAR(20),
    City VARCHAR(50)
);

-- Create CustomerDetail-2 Dimension Table

CREATE TABLE CustomerDetail_2 (
    CustomerID VARCHAR(50),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Income DECIMAL(18, 2)
);



-- Create SellingChannels Dimension Table with a unique constraint

CREATE TABLE SellingChannels (
    SellingChannelID INT IDENTITY(1,1),
    Code VARCHAR(100),
    Name VARCHAR(50),
    CommissionRate DECIMAL(5, 2),
    CONSTRAINT PK_SellingChannels PRIMARY KEY (Code),
    CONSTRAINT UQ_SellingChannels_CommissionRate UNIQUE (CommissionRate)
);


-- Create GenerateDateTime Dimension Table

CREATE TABLE GenerateDateTime (
    DateKey INT PRIMARY KEY,
    FullDate DATE,
    DateName DATE,
    DayOfWeek INT,
    DayNameOfWeek VARCHAR(20),
    DayOfMonth INT,
    DayOfYear INT,
    WeekdayWeekend VARCHAR(10),
    WeekOfYear INT,
    MonthName VARCHAR(20),
    MonthOfYear INT,
    IsLastDayOfMonth VARCHAR(20),
    CalendarQuarter INT,
    CalendarYear INT,
    CalendarYearMonth VARCHAR(20),
    CalendarYearQtr VARCHAR(20),
    FiscalMonthOfYear INT,
    FiscalQuarter INT,
    FiscalYear INT,
    FiscalYearMonth VARCHAR(20),
    FiscalYearQtr VARCHAR(20)
);

-- Create PaymentData Dimension Table

CREATE TABLE PaymentData (
    RetailPaymentTypeID INT PRIMARY KEY,
    Name VARCHAR(50)
);






