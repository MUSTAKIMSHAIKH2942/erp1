CREATE TABLE TrackDispatchUntildelivery (
    TrackDispatchUntildeliveryID INT IDENTITY(1,1) ,        
    SampleReqizitionID  int, 
    SRRefID VARCHAR(255)  NULL,           -- Reference ID for the material or delivery
    MaterialDeliveryDate DATETIME  NULL,  -- Date when the material was delivered
    MaterialHandoverTo VARCHAR(255)  NULL, -- The entity or person to whom the material was handed over
    UploadPODCopy VARCHAR(255) NULL,         -- Path or URL to the uploaded proof of delivery copy
    InsertedDate DATETIME DEFAULT GETDATE()  -- Date and time when the record was inserted; defaults to current date and time
);


CREATE PROCEDURE InsertTrackDispatchUntildelivery
    @SampleReqizitionID INT,
    @SRRefID VARCHAR(255) = NULL,
    @MaterialDeliveryDate DATETIME = NULL,
    @MaterialHandoverTo VARCHAR(255) = NULL,
    @UploadPODCopy VARCHAR(255) = NULL
AS
BEGIN
    -- Insert data into TrackDispatchUntildelivery table
    INSERT INTO TrackDispatchUntildelivery (
        SampleReqizitionID,
        SRRefID,
        MaterialDeliveryDate,
        MaterialHandoverTo,
        UploadPODCopy
    )
    VALUES (
        @SampleReqizitionID,
        @SRRefID,
        @MaterialDeliveryDate,
        @MaterialHandoverTo,
        @UploadPODCopy
    );
END

select * from TrackDispatchUntildelivery

EXEC InsertTrackDispatchUntildelivery
    @SampleReqizitionID = 1,
    @SRRefID = 'TestRefID',
    @MaterialDeliveryDate = '2024-08-05',
    @MaterialHandoverTo = 'TestHandover',
    @UploadPODCopy = 'http://example.com/podcopy.pdf';



