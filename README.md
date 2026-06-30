# Fraud-detection-risk-analysis-dashboard
An end-to-end fraud analytics project using SQL Server and Power BI to analyze fraud patterns, customer risk, financial losses, and demographic trends through interactive dashboards.

---
## Project Overview
This project presents an end-to-end fraud analytics solution developed using SQL Server and Power BI to analyze fraudulent financial transactions and uncover actionable business insights.

The analysis combines SQL-based data exploration with interactive Power BI dashboards to examine fraud trends, transaction patterns, customer behavior, demographic risk factors, and financial losses. The project follows a structured analytics workflow, from querying and validating business questions in SQL Server to designing interactive dashboards that support data-driven decision-making.

The final solution consists of two dashboard pages:

- Fraud Overview & Transaction Analysis
- Customer & Demographic Fraud Analysis

---

##  Business Problem

Financial fraud remains a significant challenge for financial institutions and businesses, leading to substantial financial losses, operational inefficiencies, and reduced customer trust. As transaction volumes continue to grow, detecting fraudulent activities and understanding the patterns behind them becomes increasingly important for effective risk management.

Without proper analysis, organizations may struggle to identify high-risk transaction categories, vulnerable customer groups, recurring fraud patterns, and areas with the greatest financial impact. These limitations can delay fraud detection efforts and reduce the effectiveness of fraud prevention strategies.

This project addresses these challenges by analyzing fraudulent transaction data to uncover meaningful patterns and provide actionable insights that support informed decision-making and proactive fraud risk management.

----

## Project Objectives

The primary objectives of this project are to:

- Analyze fraudulent transaction patterns and identify key fraud trends.
- Measure the financial impact of fraudulent transactions.
- Identify customer segments most affected by fraud.
- Examine demographic factors, including age, gender, and occupation, associated with fraudulent transactions.
- Develop interactive dashboards that enable users to explore fraud trends and customer risk through data visualization.
- Generate actionable insights and recommendations to support fraud detection and risk management.

----

## Dataset Description

The dataset used in this project contains financial transaction records designed for fraud analysis. It includes transaction details, customer information, merchant data, and fraud indicators used to identify fraudulent activities and analyze fraud patterns.

### Dataset Source

The dataset was obtained from Kaggle and is publicly available for learning, analysis, and portfolio projects.

**Source:** https://www.kaggle.com/datasets/kartik2112/fraud-detection 

### Dataset Features

The dataset includes the following key attributes:

- Transaction ID
- Transaction Date
- Transaction Amount
- Transaction Type
- Merchant Name
- Customer Name
- Customer Date of Birth (DOB)
- Gender
- Occupation
- City
- State
- Fraud Flag

The **Fraud Flag** column serves as the target variable, where:

- **1** = Fraudulent Transaction
- **0** = Legitimate Transaction

The dataset was explored and analyzed using SQL Server before being imported into Power BI for data modeling, DAX calculations, and interactive dashboard development.

----

## Tools & Technologies Used

The following tools and technologies were used throughout this project:

| Tool | Purpose |
|------|---------|
| **SQL Server** | Data exploration, cleaning, transformation, and business analysis |
| **Power BI** | Interactive dashboard development and data visualization |
| **DAX (Data Analysis Expressions)** | Creating calculated columns, measures, and KPIs |
| **Power Query** | Data transformation and preparation within Power BI |
| **GitHub** | Project documentation and version control |

----

## Business Questions & SQL Analysis

SQL Server was used to explore the dataset, validate business requirements, and answer key business questions before developing the Power BI dashboards. The analysis focused on identifying fraud patterns, customer behavior, financial losses, and demographic trends.

The business questions answered during the analysis include:

### Fraud Overview & Transaction Analysis

- What is the total value of fraudulent transactions?
- How many fraudulent transactions occurred?
- Which transaction categories recorded the highest fraud losses?
- Which transaction types experienced the highest number of fraudulent transactions?
- How are fraudulent transactions distributed across different transaction amount bands?
- What are the monthly trends in fraudulent transactions?
- Which transaction categories have the highest average fraud amount?

### Customer & Demographic Fraud Analysis

- How many unique customers were affected by fraud?
- Which customers experienced the highest number of fraudulent transactions?
- Which customers recorded the highest fraud losses?
- Which age groups are most affected by fraud?
- How does fraud distribution vary by gender?
- Which occupations record the highest number of fraudulent transactions?

### SQL Files Included

The repository contains the following SQL files:

- **Fraud_Detection_Table.sql** – Database table creation and dataset structure.
- **Transaction_Overview.sql** – SQL queries used for the Fraud Overview & Transaction Analysis dashboard.
- **Customer_Analysis.sql** – SQL queries used for the Customer & Demographic Fraud Analysis dashboard.

  ----

  ## Dashboard Features & Preview

The Power BI solution consists of two interactive dashboard pages designed to provide a comprehensive analysis of fraudulent transactions from both transactional and customer perspectives.

### Dashboard 1: Fraud Overview & Transaction Analysis

This dashboard provides a high-level overview of fraud activity by analyzing transaction trends, financial losses, fraud categories, and transaction behavior.

**Key Features**

- Executive KPI summary
- Fraud loss analysis
- Transaction category analysis
- Transaction amount segmentation
- Monthly fraud trends
- Fraud type distribution
- Interactive filtering using slicers

**Dashboard Preview**

<img width="1216" height="734" alt="Fraud and Transaction Overview" src="https://github.com/user-attachments/assets/f956dcc4-5dfb-4e64-8982-78e87bc0bf7f" />


---

### Dashboard 2: Customer & Demographic Fraud Analysis

This dashboard examines customer and demographic characteristics associated with fraudulent transactions to identify high-risk customer segments and fraud patterns.

**Key Features**

- Customer-focused KPI summary
- Top fraud victims
- Customer fraud loss analysis
- Age group analysis
- Gender distribution
- Occupation analysis
- Interactive filtering using slicers

**Dashboard Preview**

<img width="1295" height="745" alt="Customer Analysis Dashboard" src="https://github.com/user-attachments/assets/ead0e01e-ec0e-45f7-8226-a6b738fd2907" />

----

## Key Insights

The analysis revealed several significant fraud patterns across transactions, customers, and demographic groups:

- Fraudulent transactions resulted in a total financial loss of approximately **$5.1 million**, highlighting the substantial financial impact of fraudulent activities.

- Fraud was concentrated within specific transaction categories, indicating that certain transaction types are more vulnerable to fraudulent activities than others.

- Most fraudulent transactions occurred within lower and medium transaction value ranges, suggesting that fraudsters often avoid unusually high-value transactions to reduce the likelihood of detection.

- Fraud activity showed noticeable fluctuations over time, with certain months recording significantly higher fraudulent transaction volumes than others.

- Out of **989** unique customers, **967** were affected by fraudulent transactions, demonstrating that fraud impacted a large proportion of the customer base.

- A small number of customers experienced repeated fraudulent transactions, with the highest individual customer recording **27** fraudulent transactions.

- Customers aged **51–65** recorded the highest number of fraudulent transactions, making this age group the most affected demographic segment.

- Fraudulent transactions were observed across multiple occupations and both genders, indicating that fraud is widespread rather than concentrated within a single customer group.

----
## Recommendations

Based on the findings from this analysis, the following recommendations are proposed:

- **Strengthen monitoring of high-risk transaction categories** by implementing enhanced fraud detection rules and real-time transaction monitoring for categories with the highest fraud activity.

- **Enhance customer protection measures** for customers experiencing repeated fraudulent transactions through multi-factor authentication, transaction alerts, and periodic account reviews.

- **Implement risk-based fraud detection models** that assign higher risk scores to transactions matching historical fraud patterns, particularly within the most affected customer segments.

- **Increase fraud awareness and customer education** for vulnerable demographic groups by providing guidance on common fraud schemes and safe transaction practices.

- **Continuously monitor transaction trends** to identify seasonal or monthly increases in fraudulent activity, enabling proactive fraud prevention strategies.

- **Regularly review fraud detection policies and controls** using data-driven insights to improve the organization's ability to detect and prevent emerging fraud patterns.

----
## Conclusion

This project demonstrates how SQL Server and Power BI can be combined to transform raw transactional data into meaningful business insights for fraud detection and risk analysis.

By analyzing fraudulent transactions from both transactional and customer perspectives, the project identified key fraud patterns, high-risk customer segments, financial losses, and demographic trends that can support data-driven fraud prevention strategies.

Beyond the analytical findings, this project highlights practical skills in SQL querying, data validation, data modeling, DAX, interactive dashboard development, and business intelligence reporting, demonstrating an end-to-end analytics workflow from data exploration to actionable business insights.
