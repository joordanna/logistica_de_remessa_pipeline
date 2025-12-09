CREATE DATABASE LogisticsDB2;
USE LogisticsDB2;


CREATE TABLE LogisticsTable (
    Origin NVARCHAR(100),
    Destination NVARCHAR(100),
    Pouch_No NVARCHAR(50),
    Date NVARCHAR(50),
    Consignment_No NVARCHAR(50),
    Receive_Date NVARCHAR(50),
    Expiry_Date NVARCHAR(50),
    Total_Pieces INT,
    Actual_Wt FLOAT,
    Volumetric_Wt FLOAT,
    Chargeable_Wt FLOAT,
    Tariff FLOAT,
    VAS_Charges FLOAT,
    Total_Amount FLOAT,
    Mode NVARCHAR(50),
    Mode_of_Payment NVARCHAR(50),
    Nature_of_Consignment NVARCHAR(100),
    Risk_Surcharge NVARCHAR(50),
    Sender_City NVARCHAR(100),
    Sender_State NVARCHAR(100),
    Sender_Pincode INT,
    Recipient_City NVARCHAR(100),
    Receiver_State NVARCHAR(100),
    Receiver_Pincode INT
);
