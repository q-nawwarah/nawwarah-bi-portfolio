# DAX Formulas – KPI Overview Dashboard (Financial Sample 2014)
_Last updated: January 2026_

In this document, all DAX formula that had been used in this Project will be listed:
**KPI Overview Dashboard**.

---

## 1. Sales & Profit Measures

### **Total Sales**
```DAX
Total Sales = SUM('Financials'[Sales])
```
### Total Sales & Profit
```DAX
Total Profit = [Total Sales] - [Total Cost]
```
### **Profit Margin %**
```DAX
Profit Margin % =
DIVIDE([Total Profit], [Total Sales],0)
```
## 2. Target Measure

### **Target Sales**
```DAX
Target Sales = 
CALCULATE(
    SUM(Targets_2014[Target]),
    TREATAS(
        VALUES('Date Table'[Month]),
        Targets_2014[Month]))
```
## 3. Variance Measure

### **Sales Variance**
```DAX
Sales Variance = [Total Sales] - [Total Target]
```
### **Sales Variance %**
```DAX
Revenue Variance % =
DIVIDE([Sales Variance], [Total Target])
````
## 4. Month-to-Month (MoM) Measure
(Only function if visual is filter by month/date)

### **Revenue Prev Month**
```DAX
Revenue Prev Month = 
CALCULATE(
    [Total Sales],
    PREVIOUSMONTH('Date Table'[Date]))
```
### **MoM Growth %**
```DAX
MoM Growth % = 
VAR PrevMonth = [Revenue Prev Month]
VAR CurrMonth = [Total Sales]
RETURN
DIVIDE(CurrMonth - PrevMonth, PrevMonth)
```
