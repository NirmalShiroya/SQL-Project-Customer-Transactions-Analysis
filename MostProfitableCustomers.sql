------- Monthly Analysis ----------------
-- Monthly Analysis
SELECT
    FORMAT(GDT.FullDate, 'yyyy-MM') AS Month,
    CD1.CustomerID,
    COUNT(*) AS TransactionCount,
    SUM(TotalRetailPrice) AS TotalSales
FROM
    CustomerTransactions CT
JOIN
    GenerateDateTime GDT ON CT.DateKey = GDT.DateKey
JOIN
    CustomerDetail_1 CD1 ON CT.CustomerID = CD1.CustomerID
GROUP BY
    FORMAT(GDT.FullDate, 'yyyy-MM'), CD1.CustomerID
ORDER BY
    TotalSales DESC;

--------- Quartly Analysis ---------------
-- Quarterly Analysis
SELECT
    CONCAT(YEAR(GDT.FullDate), ' Q', DATEPART(QUARTER, GDT.FullDate)) AS Quarter,
    CD1.CustomerID,
    COUNT(*) AS TransactionCount,
    SUM(TotalRetailPrice) AS TotalSales
FROM
    CustomerTransactions CT
JOIN
    GenerateDateTime GDT ON CT.DateKey = GDT.DateKey
JOIN
    CustomerDetail_1 CD1 ON CT.CustomerID = CD1.CustomerID
GROUP BY
    CONCAT(YEAR(GDT.FullDate), ' Q', DATEPART(QUARTER, GDT.FullDate)), CD1.CustomerID
ORDER BY
    TotalSales DESC;

------------ Yearly Analysis ------------
-- Yearly Analysis
SELECT
    YEAR(GDT.FullDate) AS Year,
    CD1.CustomerID,
    COUNT(*) AS TransactionCount,
    SUM(TotalRetailPrice) AS TotalSales
FROM
    CustomerTransactions CT
JOIN
    GenerateDateTime GDT ON CT.DateKey = GDT.DateKey
JOIN
    CustomerDetail_1 CD1 ON CT.CustomerID = CD1.CustomerID
GROUP BY
    YEAR(GDT.FullDate), CD1.CustomerID
ORDER BY
    TotalSales DESC;



