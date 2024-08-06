CREATE TABLE IfDelay (
    IfDelayId INT IDENTITY(1,1), -- Primary key with auto-increment
	SampleReqizitionID INT ,
    SRID VARCHAR(50) NOT NULL,         -- Corresponds to _SRID property
    ReasonForDelay VARCHAR(255) NULL,  -- Corresponds to _ReasonForDelay property
    NextEstimateDateOfDispatch DATETIME NULL, -- Corresponds to _NextEstimateDateOfDispatch property
    RemarksIfAny VARCHAR(255) NULL,    -- Corresponds to _RemarksIfAny property
    InsertedDate DATETIME DEFAULT GETDATE() NOT NULL -- Default value set to current date and time
);

CREATE PROCEDURE InsertIntoIfDelay
    @SampleReqizitionID INT,
    @SRID VARCHAR(50),
    @ReasonForDelay VARCHAR(255),
    @NextEstimateDateOfDispatch DATETIME,
    @RemarksIfAny VARCHAR(255)
AS
BEGIN
    INSERT INTO IfDelay (SampleReqizitionID, SRID, ReasonForDelay, NextEstimateDateOfDispatch, RemarksIfAny)
    VALUES (@SampleReqizitionID, @SRID, @ReasonForDelay, @NextEstimateDateOfDispatch, @RemarksIfAny);
END

select * from IfDelay