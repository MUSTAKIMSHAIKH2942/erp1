CREATE TABLE InformCustomerDispatchDetails (
    InformCustomerDispatchDetailsID INT IDENTITY(1,1) , -- Primary key with auto-increment
	SampleReqizitionID INT ,
    SRRefID VARCHAR(50) NOT NULL, -- Corresponds to _SRRefID property
    InformedByPhoneEmailWhatsapp VARCHAR(255) NULL, -- Corresponds to _InformedByPhoneEmailWhatsapp property
    Remarks VARCHAR(255) NULL, -- Corresponds to _Remarks property
    InsertedDate DATETIME DEFAULT GETDATE() NOT NULL -- Default value set to current date and time
);

CREATE PROCEDURE InsertIntoInformCustomerDispatchDetails
    @SampleReqizitionID INT,
    @SRRefID VARCHAR(50),
    @InformedByPhoneEmailWhatsapp VARCHAR(255),
    @Remarks VARCHAR(255)
AS
BEGIN
    -- Insert data into InformCustomerDispatchDetails table
    INSERT INTO InformCustomerDispatchDetails (
        SampleReqizitionID,
        SRRefID,
        InformedByPhoneEmailWhatsapp,
        Remarks
    )
    VALUES (
        @SampleReqizitionID,
        @SRRefID,
        @InformedByPhoneEmailWhatsapp,
        @Remarks
    );
END

select * from InformCustomerDispatchDetails