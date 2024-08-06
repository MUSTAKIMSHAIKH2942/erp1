CREATE TABLE dbo.CustomerSampleApproval (
    CustomerSampleApprovalID INT IDENTITY(1,1),
	SampleReqizitionID INT ,
    SRRefID VARCHAR(255) NULL,
    SampleApprovedByCustomer VARCHAR(255) NULL,
    CustomerReportFilePath VARCHAR(255) NULL,
    OnTrackForSaleToCustomer VARCHAR(255) NULL,
    ReasonForNotOnTrack VARCHAR(255) NULL,
    NextStepToTrackForSale VARCHAR(255) NULL,
    ExpectedOrderDate DATE NULL,
    InsertedDate DATETIME NULL DEFAULT GETDATE()
);


-- Drop the stored procedure if it exists
IF OBJECT_ID('InsertCustomerSampleApproval', 'P') IS NOT NULL
    DROP PROCEDURE InsertCustomerSampleApproval;
GO

-- Create the stored procedure
CREATE PROCEDURE InsertCustomerSampleApproval
    @SampleReqizitionID INT,
    @SRRefID VARCHAR(255),
    @SampleApprovedByCustomer VARCHAR(255),
    @CustomerReportFilePath VARCHAR(255),
    @OnTrackForSaleToCustomer VARCHAR(255),
    @ReasonForNotOnTrack VARCHAR(255),
    @NextStepToTrackForSale VARCHAR(255),
    @ExpectedOrderDate DATE
AS
BEGIN
    INSERT INTO dbo.CustomerSampleApproval (
        SampleReqizitionID,
        SRRefID,
        SampleApprovedByCustomer,
        CustomerReportFilePath,
        OnTrackForSaleToCustomer,
        ReasonForNotOnTrack,
        NextStepToTrackForSale,
        ExpectedOrderDate,
        InsertedDate
    ) VALUES (
        @SampleReqizitionID,
        @SRRefID,
        @SampleApprovedByCustomer,
        @CustomerReportFilePath,
        @OnTrackForSaleToCustomer,
        @ReasonForNotOnTrack,
        @NextStepToTrackForSale,
        @ExpectedOrderDate,
        GETDATE() -- Automatically sets the InsertedDate to the current date and time
    );
END;
GO

select * from CustomerSampleApproval