# 📘 DAX Formulas – KPI Dashboard (Financial Sample 2014)
_Last updated: November 2025_

In this document, all DAX formula that had been used in this Mini Project will be listed:
**KPI Dashboard – Revenue vs Target**.

---

## 🧩 1. Sales & Profit Measures

### **Total Revenue**
```DAX
Total Revenue = SUM('Financials'[Sales])

### **Total Profit**
```DAX
Total Profit = SUM('Financials'[Profit])

### **Profit Margin %**
```DAX
Profit Margin % =
DIVIDE([Total Profit], [Total Sales])

## 🧩 2. Target Measure

### **Total Target**
```DAX
Total Target = SUM('Targets'[Target Sales])

### **Total Target**
```DAX
Sales Achievement % =
DIVIDE([Total Sales], [Total Target])

## 🧩 3. Variance Measure

### **Sales Variance**
```DAX
Sales Variance = [Total Sales] - [Total Target]

### **Sales Variance %**
```DAX
Revenue Variance % =
DIVIDE([Sales Variance], [Total Target])

## 🧩 4. Month-to-Month (MoM) Measure
(Only function if visual is filter by month/date)

### **Revenue Prev Month**
```DAX
Revenue Prev Month = 
CALCULATE(
    [Total Sales],
    PREVIOUSMONTH('Date Table'[Date]))

### **MoM Growth %**
```DAX
MoM Growth % = 
VAR PrevMonth = [Revenue Prev Month]
VAR CurrMonth = [Total Sales]
RETURN
DIVIDE(CurrMonth - PrevMonth, PrevMonth)
