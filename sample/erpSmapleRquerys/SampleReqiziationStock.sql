CREATE TABLE SampleReqiziationStock (
    SampleReqiziationStockID INT IDENTITY(1,1),
    SampleReqizitionID  int, -- Auto-incremented primary key
    SR_Ref_ID VARCHAR(50) NOT NULL, -- Reference ID
    IsAvailableInStores VARCHAR(50)  NULL, -- Availability in stores
    IsSampleAvailableInPlant VARCHAR(50)  NULL ,-- Sample availability in the plant
    InsertedDate DATETIME DEFAULT GETDATE() -- Date of insertion with default value

);


CREATE PROCEDURE InsertSampleReqiziationStock
    @SampleReqizitionID INT,
    @SR_Ref_ID VARCHAR(50),
    @IsAvailableInStores VARCHAR(50) = NULL,
    @IsSampleAvailableInPlant VARCHAR(50) = NULL
AS
BEGIN
    INSERT INTO SampleReqiziationStock
        (SampleReqizitionID, SR_Ref_ID, IsAvailableInStores, IsSampleAvailableInPlant)
    VALUES
        (@SampleReqizitionID, @SR_Ref_ID, @IsAvailableInStores, @IsSampleAvailableInPlant);
END



CREATE PROCEDURE UpdateSampleReqiziationStock
    @SampleReqiziationStockID INT,
    @SampleReqizitionID INT,
    @SR_Ref_ID VARCHAR(50),
    @IsAvailableInStores VARCHAR(50) = NULL,
    @IsSampleAvailableInPlant VARCHAR(50) = NULL
AS
BEGIN
    UPDATE SampleReqiziationStock
    SET 
        SR_Ref_ID = @SR_Ref_ID,
        IsSampleAvailableInPlant = @IsSampleAvailableInPlant
    WHERE
        SR_Ref_ID = @SR_Ref_ID
END

select *  from SampleReqiziationStock