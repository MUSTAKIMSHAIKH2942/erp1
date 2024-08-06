CREATE TABLE PackingLabellingCOAGatePass (
    PackagingID INT IDENTITY(1,1)  ,
	SampleReqizitionID INT ,
    SRRefID VARCHAR(50) NOT NULL,
    ProperPackagingLabellingDone VARCHAR(50),
    PrepareCOA VARCHAR(50),
    GatePassNo VARCHAR(50),
    GatePassDate DATETIME,
    InsertedDate DATETIME DEFAULT GETDATE()
);

CREATE PROCEDURE InsertPackingLabellingCOAGatePass
    @SampleReqizitionID INT,
    @SRRefID VARCHAR(50),
    @ProperPackagingLabellingDone VARCHAR(50),
    @PrepareCOA VARCHAR(50),
    @GatePassNo VARCHAR(50),
    @GatePassDate DATETIME
AS
BEGIN
    INSERT INTO PackingLabellingCOAGatePass
        (SampleReqizitionID, SRRefID, ProperPackagingLabellingDone, PrepareCOA, GatePassNo, GatePassDate)
    VALUES
        (@SampleReqizitionID, @SRRefID, @ProperPackagingLabellingDone, @PrepareCOA, @GatePassNo, @GatePassDate);
END

select * from PackingLabellingCOAGatePass