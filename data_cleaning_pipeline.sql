-- ====================================================================
-- Script: Global Campus Data Warehouse - Staging to Fact/Dim Tables
-- Purpose: Clean raw decentralized campus data and insert into Star Schema
-- ====================================================================

-- 1. Create Dimension Table: Campus
CREATE TABLE Dim_Campus (
    Campus_ID INT PRIMARY KEY,
    Campus_Name VARCHAR(100),
    Region VARCHAR(50)
);

-- 2. Create Fact Table: Enrollments
CREATE TABLE Fact_Enrollments (
    Enrollment_ID INT PRIMARY KEY,
    Campus_ID INT,
    Enrollment_Date DATE,
    New_Students INT,
    Revenue DECIMAL(10,2),
    FOREIGN KEY (Campus_ID) REFERENCES Dim_Campus(Campus_ID)
);

-- 3. Clean and Load Data from Staging (Handling Nulls)
INSERT INTO Fact_Enrollments (Enrollment_ID, Campus_ID, Enrollment_Date, New_Students, Revenue)
SELECT 
    Stage_ID,
    COALESCE(Campus_ID, 999), -- Assign 999 for missing Campus IDs
    CAST(Date_Recorded AS DATE),
    ISNULL(Student_Count, 0), -- Replace null student counts with 0
    Total_Fees
FROM Staging_Campus_Data
WHERE Status = 'Verified';