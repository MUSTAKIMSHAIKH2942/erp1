IF OBJECT_ID('dbo.CourierDetails', 'U') IS NOT NULL
    DROP TABLE dbo.CourierDetails;

CREATE TABLE dbo.CourierDetails
(
    CourierDetailsId INT IDENTITY(1,1) ,
    SampleReqizitionID INT NULL,
    SRRefID VARCHAR(255) NULL,
    CourierServiceName VARCHAR(255) NULL,
    CourierTrackingNo VARCHAR(255) NULL,
    CourierDate DATE NULL,
    CourierCharges DECIMAL(18, 2) NULL,
    EstimatedDateOfDelivery DATE NULL,
    UploadOfCOA VARCHAR(255) NULL,
    InsertedDate DATETIME DEFAULT GETDATE() NULL
);



IF OBJECT_ID('dbo.InsertIntoCourierDetails', 'P') IS NOT NULL
    DROP PROCEDURE dbo.InsertIntoCourierDetails;

	CREATE PROCEDURE dbo.InsertIntoCourierDetails
    @SampleReqizitionID INT  NULL,             -- New parameter for the additional column
    @SRRefID VARCHAR(255) NULL,
    @CourierServiceName VARCHAR(255) NULL,
    @CourierTrackingNo VARCHAR(255) NULL,
    @CourierDate DATE NULL,
    @CourierCharges DECIMAL(18, 2) NULL,
    @EstimatedDateOfDelivery DATE NULL,
    @UploadOfCOA VARCHAR(255) NULL
AS
BEGIN
    INSERT INTO dbo.CourierDetails
        (SampleReqizitionID, SRRefID, CourierServiceName, CourierTrackingNo, CourierDate, CourierCharges, EstimatedDateOfDelivery, UploadOfCOA)
    VALUES
        (@SampleReqizitionID, @SRRefID, @CourierServiceName, @CourierTrackingNo, @CourierDate, @CourierCharges, @EstimatedDateOfDelivery, @UploadOfCOA);
END;

use erp
select * from CourierDetails