# SQL-Project-Customer-Transactions-Analysis

**Project Overview**
This project analyzes customer transactions using SQL, focusing on demographic, transactional, and operational insights. The analysis integrates customer details, purchase records, payment methods, selling channels, and temporal data to provide a comprehensive overview of purchasing behavior.

**1. Datasets Overview**

The project uses six key datasets, each serving a specific purpose in the analysis:

**1.1 CustomerDetails.csv**
*Description:* Contains essential customer demographic details.Columns:

CustomerID: Unique identifier for each customer.

CustomerName: Full name of the customer.

Birthdate: Date of birth of the customer.

MaritalStatus: Marital status (e.g., Single, Married).

Gender: Gender of the customer.

Postcode: Postal code of the customer's location.

City: City of the customer's residence.

Purpose: Used for demographic analysis and linking customer data with transactions.

**1.2 CustomerDetails.csv**
Description: Provides additional customer details, including income and naming conventions.Columns:

CustomerCode: Alternate unique identifier for customers.

FirstName: First name of the customer.

LastName: Last name of the customer.

Income: Income bracket of the customer.

Name: Full name concatenation (if available).

Purpose: Supplementary demographic information, particularly income data.

**1.3 CustomerTransactions**
Description: Records transaction-level data for each customer.Columns:

DateKey: Key linking to the date table.

InvoiceNumber: Unique invoice number for each transaction.

CustomerID: Unique identifier for the customer.

TotalRetailCost: Total cost of retail items purchased.

TotalRetailPrice: Total retail price for purchased items.

PaymentTypeID: Identifier for payment method used.

SellingChannelCode: Code for the selling platform/channel.

CommissionRate: Commission applied on the transaction.

Purpose: Core dataset for sales and financial analysis.

**1.4 GenerateDateTime**
Description: Provides a calendar-based reference table for date and time-related insights.Columns:

DateKey: Unique identifier for each date.

FullDate: Complete date string.

DateName: Name representation of the date.

DayOfWeek: Numerical representation of the weekday.

DayNameOfWeek: Name of the weekday (e.g., Monday).

DayOfMonth: Day of the month (e.g., 1-31).

DayOfYear: Day count within the year (e.g., 1-365).

WeekdayWeekend: Classification as Weekday or Weekend.

WeekOfYear: Week number of the year.

MonthName: Name of the month (e.g., January).

MonthOfYear: Month count (e.g., 1-12).

IsLastDayOfMonth: Boolean flag for the last day of the month.

CalendarQuarter: Quarter of the calendar year.

CalendarYear: Year value.

CalendarYearMonth: Combination of Year and Month.

CalendarYearQtr: Combination of Year and Quarter.

FiscalMonthOfYear: Fiscal month value.

FiscalQuarter: Fiscal quarter value.

FiscalYear: Fiscal year value.

FiscalYearMonth: Combination of Fiscal Year and Month.

FiscalYearQtr: Combination of Fiscal Year and Quarter.

Purpose: Used for temporal analysis and trend identification.

**1.5 PaymentData**
Description: Contains details about payment methods.Columns:

RetailPaymentTypeID: Identifier for the payment type.

Name: Name of the payment method (e.g., Credit Card, Cash).

Purpose: Payment insights and correlation with transaction metrics.

**1.6 SellingChannels**
Description: Provides data about various sales platforms/channels.Columns:

SellingChannelID: Unique identifier for each channel.

Code: Channel-specific code.

Name: Name of the sales platform (e.g., Amazon, Shopify).

CommissionRate: Commission percentage applicable to the channel.

Purpose: Analysis of sales performance across different channels.

# 2. Database DesignThe database was structured with a CustomerTransactions Fact Table, supported by lookup/reference tables derived from the datasets above. The fact table integrates:

Customer Details

Transaction Records

Date & Time Reference

Payment Methods

Selling Channels

Fact Table Design: CustomerTransactions

Primary Key: InvoiceNumber

Foreign Keys: CustomerID, DateKey, PaymentTypeID, SellingChannelCode

# 3. Tools Used

Database Management System (DBMS): SQL Server Management Studio (SSMS)

Data Manipulation Language (DML): SQL for querying, grouping, filtering, and aggregating data.

Data Visualization (Planned): Interactive charts via Python libraries or BI tools like Power BI.

# 4. Objective

Create a robust CustomerTransactions Fact Table.

Ensure Data Integrity by removing duplicates (InvoiceNumber as the primary key).

Perform detailed analysis across demographic, income, location, channel, and payment dimensions.

Generate actionable insights for strategic decision-making.

