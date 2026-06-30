---Question 1
---Which customers account for the highest number of fraudulent transactions?

select top 10
Customer_name,
count(Fraud_flag) as No_of_fraudulent_transac

from dbo.fraud_transaction

where Fraud_flag = '1'

group by Customer_name

order by No_of_fraudulent_transac desc


---Question 2
---Which customers generate the highest fraud losses?

select top 10
Customer_name,
sum(Transaction_Amount) as Total_transaction_Amt

from dbo.fraud_transaction

where Fraud_flag = '1'

group by Customer_name

order by Total_transaction_Amt desc


---Question 3
---Which occupations are most frequently associated with fraudulent transactions?

select top 10
Job_Type,
count(Fraud_flag) as No_of_fraudulent_trans

from dbo.fraud_transaction

where Fraud_flag = '1'

group by Job_Type

order by No_of_fraudulent_trans desc


---Question 4 
---Are certain customer demographics more affected by fraud than others?

select 
Gender,
count(Fraud_flag) as fraud_count

from dbo.fraud_transaction

where Fraud_flag = '1'

group by Gender

order by fraud_count desc

---Question 5 
---Which age groups are most affected by fraudulent transactions?

select
count(Fraud_flag) as No_of_fraudulent_transaction,
case 
	when datediff(year, DOB, Trans_date) between 14 and 17 then 'Teen'
	when datediff(year, DOB, Trans_date) between 18 and 25 then 'Young Adults'
	when datediff(year, DOB, Trans_date) between 26 and 35 then 'Adults'
	when datediff(year, DOB, Trans_date) between 36 and 50 then 'Middle Aged'
	when datediff(year, DOB, Trans_date) between 51 and 65 then 'Seniors'
	when datediff(year, DOB, Trans_date) >= 66 then 'Elderly'
	else 'DOB'
end as Age_groups
	

from dbo.fraud_transaction

where Fraud_flag = '1'

group by case 
	when datediff(year, DOB, Trans_date) between 14 and 17 then 'Teen'
	when datediff(year, DOB, Trans_date) between 18 and 25 then 'Young Adults'
	when datediff(year, DOB, Trans_date) between 26 and 35 then 'Adults'
	when datediff(year, DOB, Trans_date) between 36 and 50 then 'Middle Aged'
	when datediff(year, DOB, Trans_date) between 51 and 65 then 'Seniors'
	when datediff(year, DOB, Trans_date) >= 66 then 'Elderly'
	else 'DOB'
end

order by No_of_fraudulent_transaction Desc