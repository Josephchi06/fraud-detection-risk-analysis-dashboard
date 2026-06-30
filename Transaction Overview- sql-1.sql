---Question 1 
---Which transaction categories record the highest number of fraudulent transactions?

select top 5
Category,
count(Fraud_flag) as  No_fraudlent_transaction

from dbo.fraud_transaction

Where Fraud_flag = '1'

group by Category

order by No_fraudlent_transaction desc

---Insights
----The grocery_pos category recorded the highest number of fraudulent transactions,
--indicating that grocery point-of-sale transactions are a frequent target for fraudulent activities.
--This suggests that transactions within this category may require closer monitoring and enhanced fraud detection measures to help reduce fraud exposure.


---Quetion 2
---Which transaction categories generate the highest fraud losses?

select top 5
Category,
round(sum(Transaction_Amount),2) as Total_fraud_amt

from dbo.fraud_transaction

where Fraud_flag = '1'

group by Category

order by Total_fraud_amt desc


---Question 3
---What transaction amount ranges are most frequently associated with fraudulent transactions?

WITH Fraud_Segmentation AS
(
    SELECT
        CASE
            WHEN Transaction_Amount >= 1
                 AND Transaction_Amount < 100 THEN '$1 - $99'

            WHEN Transaction_Amount >= 100
                 AND Transaction_Amount < 500 THEN '$100 - $499'

            WHEN Transaction_Amount >= 500
                 AND Transaction_Amount < 1000 THEN '$500 - $999'

            WHEN Transaction_Amount >= 1000
                 AND Transaction_Amount <= 1500 THEN '$1,000 - $1,500'

            ELSE 'Unknown'
        END AS Fraudulent_Amount_Segment
    FROM dbo.fraud_transaction
    WHERE Fraud_flag = '1'
)

SELECT
    COUNT(*) AS Total_No_fraudulent_transactions,
    Fraudulent_Amount_Segment
FROM Fraud_Segmentation
GROUP BY Fraudulent_Amount_Segment
ORDER BY Total_No_fraudulent_transactions DESC;


---Question 4
---How do fraudulent transaction values compare with legitimate transaction values?

select
case 
	when Fraud_flag = '0' then 'Legitimate'
	when Fraud_flag = '1' then 'Fraudulent'
	else 'Fraud_flag'
end as Transaction_type,
round(avg(Transaction_Amount),2) as Average_transaction_amount

from dbo.fraud_transaction

group by case 
	when Fraud_flag = '0' then 'Legitimate'
	when Fraud_flag = '1' then 'Fraudulent'
	else 'Fraud_flag'
end


---	Question 5
---How has fraud activity changed over time?

select 
datepart(month, Trans_date) as month_num,
datename(month, Trans_date) as Month,
datename(Year, Trans_date) as Year,
count(Fraud_flag) as No_of_fraudulent_transction

from dbo.fraud_transaction

where Fraud_flag = '1'

group by datename(month, Trans_date) ,
datename(Year, Trans_date),datepart(month, Trans_date)

order by Year, month_num