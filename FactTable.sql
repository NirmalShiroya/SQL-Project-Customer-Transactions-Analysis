-- Create CustomerTransactions Fact Table
CREATE TABLE CustomerTransactions (
    DateKey INT FOREIGN KEY REFERENCES GenerateDateTime(DateKey),
    InvoiceNumber VARCHAR(50) PRIMARY KEY,
    CustomerID VARCHAR(50) FOREIGN KEY REFERENCES CustomerDetail_1(CustomerID),
    TotalRetailCost DECIMAL(18, 2),
    TotalRetailPrice DECIMAL(18, 2),
    PaymentTypeID INT FOREIGN KEY REFERENCES PaymentData(RetailPaymentTypeID),
    SellingChannelCode VARCHAR(100) FOREIGN KEY REFERENCES SellingChannels(Code),
    CommissionRate DECIMAL(5, 2),
    CONSTRAINT FK_CustomerTransactions_SellingChannels
    FOREIGN KEY (CommissionRate)
    REFERENCES SellingChannels (CommissionRate)
);

-- Create indexes for performance optimization 
CREATE INDEX idx_CustomerTransactions_DateKey ON CustomerTransactions(DateKey);
CREATE INDEX idx_CustomerTransactions_CustomerID ON CustomerTransactions(CustomerID);
CREATE INDEX idx_CustomerTransactions_PaymentTypeID ON CustomerTransactions(PaymentTypeID);
CREATE INDEX idx_CustomerTransactions_SellingChannelID ON CustomerTransactions(SellingChannelCode);
