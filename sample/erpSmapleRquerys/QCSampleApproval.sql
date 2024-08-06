

CREATE TABLE QCSampleApproval (
    QCSampleApprovalID INT IDENTITY(1,1) ,
	SampleReqizitionID INT ,
    SRRefID VARCHAR(50) NOT NULL,
    AvailableQuantity INT NOT NULL,
    BatchNumber VARCHAR(50),
    Remark VARCHAR(255),
    InsertedDate DATETIME DEFAULT GETDATE()
);

CREATE PROCEDURE InsertQCSampleApproval
    @SampleReqizitionID INT,
    @SRRefID VARCHAR(50),
    @AvailableQuantity INT,
    @BatchNumber VARCHAR(50) = NULL,
    @Remark VARCHAR(255) = NULL
AS
BEGIN
    -- Insert data into the QCSampleApproval table
    INSERT INTO QCSampleApproval (
        SampleReqizitionID,
        SRRefID,
        AvailableQuantity,
        BatchNumber,
        Remark,
        InsertedDate
    )
    VALUES (
        @SampleReqizitionID,
        @SRRefID,
        @AvailableQuantity,
        @BatchNumber,
        @Remark,
        GETDATE() -- Default value for InsertedDate
    );
END;

select * from QCSampleApproval