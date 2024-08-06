CREATE TABLE SamplePreparation (
    SampleID INT IDENTITY(1,1), -- Auto-incremented primary key
	SampleReqizitionID INT ,
    SR_Ref_ID VARCHAR(50) NOT NULL, -- Reference ID
    Division VARCHAR(50) NOT NULL, -- Division
    PreparedAsPerRequirement VARCHAR(255) NOT NULL, -- Requirement details
    SampleQualityChecked VARCHAR(255) NOT NULL, -- Quality check details
    PackedSampleSentToQC VARCHAR(255) NOT NULL, -- Packed sample status
    InsertedDate DATETIME DEFAULT GETDATE() -- Date of insertion with default value
);

CREATE PROCEDURE InsertSamplePreparation
    @SampleReqizitionID INT,
    @SR_Ref_ID VARCHAR(50),
    @Division VARCHAR(50),
    @PreparedAsPerRequirement VARCHAR(255),
    @SampleQualityChecked VARCHAR(255),
    @PackedSampleSentToQC VARCHAR(255)
AS
BEGIN
    INSERT INTO SamplePreparation (
        SampleReqizitionID,
        SR_Ref_ID,
        Division,
        PreparedAsPerRequirement,
        SampleQualityChecked,
        PackedSampleSentToQC
    )
    VALUES (
        @SampleReqizitionID,
        @SR_Ref_ID,
        @Division,
        @PreparedAsPerRequirement,
        @SampleQualityChecked,
        @PackedSampleSentToQC
    );
END

select * from SamplePreparation