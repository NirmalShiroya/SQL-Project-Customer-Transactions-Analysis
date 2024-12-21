

------ Selling Channel Preferences -------
SELECT
    SC.Name AS SellingChannel,
    COUNT(*) AS TransactionCount,
    SUM(TotalRetailPrice) AS TotalSales
FROM
    CustomerTransactions CT
JOIN
    SellingChannels SC ON CT.SellingChannelCode = SC.Code
GROUP BY
    SC.Name;



------ Payment Methods ---------

SELECT
    PD.Name AS PaymentMethod,
    COUNT(*) AS TransactionCount,
    SUM(TotalRetailPrice) AS TotalSales
FROM
    CustomerTransactions CT
JOIN
    PaymentData PD ON CT.PaymentTypeID = PD.RetailPaymentTypeID
GROUP BY
    PD.Name;

------

