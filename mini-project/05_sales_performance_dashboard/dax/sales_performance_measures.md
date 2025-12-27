## Core Measures
Total Sales =
SUM ( Financials[Sales] )

Total Profit =
SUM ( Financials[Profit] )

Total Sales Target =
SUM ( Target[Target] )

## Performance Measures
Sales Variance =
[Total Sales] - [Total Sales Target]

Sales Variance % =
DIVIDE ( [Sales Variance], [Total Sales Target] )

Sales Achievement % =
DIVIDE ( [Total Sales], [Total Sales Target] )

## Profitability
Profit Margin % =
DIVIDE ( [Total Profit], [Total Sales] )
