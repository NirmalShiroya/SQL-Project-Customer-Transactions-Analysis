-- Age Group Analysis----
SELECT
    CASE
        WHEN DATEDIFF(YEAR, Birthdate, GETDATE()) BETWEEN 0 AND 18 THEN '0-18'
        WHEN DATEDIFF(YEAR, Birthdate, GETDATE()) BETWEEN 19 AND 35 THEN '19-35'
        WHEN DATEDIFF(YEAR, Birthdate, GETDATE()) BETWEEN 36 AND 50 THEN '36-50'
        ELSE '50+'
    END AS AgeGroup,
    COUNT(*) AS TransactionCount,
    SUM(TotalRetailPrice) AS TotalSales
FROM
    CustomerTransactions CT
JOIN
    CustomerDetail_1 CD1 ON CT.CustomerID = CD1.CustomerID
GROUP BY
    CASE
        WHEN DATEDIFF(YEAR, Birthdate, GETDATE()) BETWEEN 0 AND 18 THEN '0-18'
        WHEN DATEDIFF(YEAR, Birthdate, GETDATE()) BETWEEN 19 AND 35 THEN '19-35'
        WHEN DATEDIFF(YEAR, Birthdate, GETDATE()) BETWEEN 36 AND 50 THEN '36-50'
        ELSE '50+'
    END;
	
	----------- Income Analysis--------------

SELECT
    CASE
        WHEN Income < 30000 THEN 'Low'
        WHEN Income BETWEEN 30000 AND 60000 THEN 'Medium'
        ELSE 'High'
    END AS IncomeGroup,
    COUNT(*) AS TransactionCount,
    SUM(TotalRetailPrice) AS TotalSales
FROM
    CustomerTransactions CT
JOIN
    CustomerDetail_2 CD2 ON CT.CustomerID = CD2.CustomerCode
GROUP BY
    CASE
        WHEN Income < 30000 THEN 'Low'
        WHEN Income BETWEEN 30000 AND 60000 THEN 'Medium'
        ELSE 'High'
    END;



---------- Marital Status ------------

SELECT
    MaritalStatus,
    COUNT(*) AS TransactionCount,
    SUM(TotalRetailPrice) AS TotalSales
FROM
    CustomerTransactions CT
JOIN
    CustomerDetail_1 CD1 ON CT.CustomerID = CD1.CustomerID
GROUP BY
    MaritalStatus;








-------- Postcode/city/country -----------

SELECT
    Postcode,
    City,
    COUNT(*) AS TransactionCount,
    SUM(TotalRetailPrice) AS TotalSales
FROM
    CustomerTransactions CT
JOIN
    CustomerDetail_1 CD1 ON CT.CustomerID = CD1.CustomerID
GROUP BY
    Postcode, City;



WITH LocationSales AS (
    SELECT
        Postcode,
        SUM(TotalRetailPrice) AS TotalSales
    FROM
        CustomerTransactions CT
    JOIN
        CustomerDetail_1 CD1 ON CT.CustomerID = CD1.CustomerID
    GROUP BY
        Postcode
)

SELECT
    Postcode,
    TotalSales
FROM
    LocationSales
WHERE
    TotalSales = (SELECT MAX(TotalSales) FROM LocationSales);


