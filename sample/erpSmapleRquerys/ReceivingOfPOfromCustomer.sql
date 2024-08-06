CREATE TABLE ReceivingOfPOfromCustomer (
    ReceivingOfPOfromCustomerID INT IDENTITY(1,1),
   	SampleReqizitionID INT ,
    SRRefID VARCHAR(50) NOT NULL,
    PONo VARCHAR(50) NOT NULL,
    Product VARCHAR(255) NOT NULL,
    QtyInKg DECIMAL(18, 2) NOT NULL,
    POAmount DECIMAL(18, 2) NOT NULL,
    ExpectedDeliveryDate DATETIME NOT NULL,
    Remarks VARCHAR(255),
	InsertedDate DATETIME DEFAULT GETDATE()
);

x
CREATE PROCEDURE InsertReceivingOfPOfromCustomer
    @SampleReqizitionID INT,
    @SRRefID VARCHAR(50),
    @PONo VARCHAR(50),
    @Product VARCHAR(255),
    @QtyInKg DECIMAL(18, 2),
    @POAmount DECIMAL(18, 2),
    @ExpectedDeliveryDate DATETIME,
    @Remarks VARCHAR(255) = NULL
AS
BEGIN
    -- Insert data into the ReceivingOfPOfromCustomer table
    INSERT INTO ReceivingOfPOfromCustomer (
        SampleReqizitionID,
        SRRefID,
        PONo,
        Product,
        QtyInKg,
        POAmount,
        ExpectedDeliveryDate,
        Remarks
    )
    VALUES (
        @SampleReqizitionID,
        @SRRefID,
        @PONo,
        @Product,
        @QtyInKg,
        @POAmount,
        @ExpectedDeliveryDate,
        @Remarks
    );
END;

select * from ReceivingOfPOfromCustomer
