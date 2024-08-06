CREATE TABLE DepartmentRequisitionDiv (
    DepartmentRequisitionDivID INT IDENTITY(1,1) ,
	SampleReqizitionID INT ,
    SrRefId VARCHAR(50) NOT NULL,
    Division VARCHAR(50) NULL,
    SampleRequestSent VARCHAR(10) NULL,
    ConcernedPersonName VARCHAR(100) NULL,
    MaterialReadyDays INT NULL,
    Remarks VARCHAR(255) NULL,
    InsertedDate DATETIME DEFAULT GETDATE() NOT NULL,
    
);

CREATE PROCEDURE InsertDepartmentRequisitionDiv
    @SampleReqizitionID INT,
    @SrRefId VARCHAR(50),
    @Division VARCHAR(50),
    @SampleRequestSent VARCHAR(10),
    @ConcernedPersonName VARCHAR(100),
    @MaterialReadyDays INT,
    @Remarks VARCHAR(255)
AS
BEGIN
    INSERT INTO DepartmentRequisitionDiv
    (
        SampleReqizitionID,
        SrRefId,
        Division,
        SampleRequestSent,
        ConcernedPersonName,
        MaterialReadyDays,
        Remarks,
        InsertedDate
    )
    VALUES
    (
        @SampleReqizitionID,
        @SrRefId,
        @Division,
        @SampleRequestSent,
        @ConcernedPersonName,
        @MaterialReadyDays,
        @Remarks,
        GETDATE()
    );
END

select * from DepartmentRequisitionDiv