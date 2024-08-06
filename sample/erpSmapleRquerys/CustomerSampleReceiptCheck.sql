CREATE TABLE CustomerSampleReceiptCheck (
    CustomerSampleReceiptCheckID INT IDENTITY(1,1) ,
	SampleReqizitionID INT ,
    SRRefID VARCHAR(50) NOT NULL,
    MaterialReceivedInGoodCondition VARCHAR(10) NULL,
    SupportingDocumentationReceived VARCHAR(10) NULL,
    ExpectedTestingDate DATE NULL,
    OtherRemarks VARCHAR(255) NULL,
    InsertedDate DATETIME DEFAULT GETDATE() NOT NULL
);

CREATE PROCEDURE InsertCustomerSampleReceiptCheck
    @SampleReqizitionID INT,
    @SRRefID VARCHAR(50),
    @MaterialReceivedInGoodCondition VARCHAR(10) = NULL,
    @SupportingDocumentationReceived VARCHAR(10) = NULL,
    @ExpectedTestingDate DATE = NULL,
    @OtherRemarks VARCHAR(255) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO CustomerSampleReceiptCheck
        (SampleReqizitionID, SRRefID, MaterialReceivedInGoodCondition, SupportingDocumentationReceived, ExpectedTestingDate, OtherRemarks)
    VALUES
        (@SampleReqizitionID, @SRRefID, @MaterialReceivedInGoodCondition, @SupportingDocumentationReceived, @ExpectedTestingDate, @OtherRemarks);
END

select * from CustomerSampleReceiptCheck