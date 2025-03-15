SELECT TOP (1000) [Customer_ID]
      ,[Gender]
      ,[Age]
      ,[Married]
      ,[State]
      ,[Number_of_Referrals]
      ,[Tenure_in_Months]
      ,[Value_Deal]
      ,[Phone_Service]
      ,[Multiple_Lines]
      ,[Internet_Service]
      ,[Internet_Type]
      ,[Online_Security]
      ,[Online_Backup]
      ,[Device_Protection_Plan]
      ,[Premium_Support]
      ,[Streaming_TV]
      ,[Streaming_Movies]
      ,[Streaming_Music]
      ,[Unlimited_Data]
      ,[Contract]
      ,[Paperless_Billing]
      ,[Payment_Method]
      ,[Monthly_Charge]
      ,[Total_Charges]
      ,[Total_Refunds]
      ,[Total_Extra_Data_Charges]
      ,[Total_Long_Distance_Charges]
      ,[Total_Revenue]
      ,[Customer_Status]
      ,[Churn_Category]
      ,[Churn_Reason]
  FROM [DB_churn].[dbo].[stg_churn]


  Select distinct gender From [dbo].[stg_churn]

  --To Check percentage of Data
  Select Gender, Count(Gender) AS TotalCount,
  Count(Gender) * 100.0 / (Select Count(*) from stg_churn) as percentage_Gender
  From stg_churn
  Group by Gender


  Select contract From stg_churn

  Select contract ,Count(contract) as TotalCount ,
  Count(contract) * 100.0 /(Select count(*) From stg_churn) as percentage_contract
  From stg_churn
  Group by contract


  Select 
		customer_status , COUNT(Customer_status) as total_cusasstomer_status,
		Sum(Total_Revenue) As Total_rev,
		Sum(Total_Revenue) / (Select Sum(Total_Revenue) From stg_churn) * 100 as Rev_percentage
  From stg_churn
  Group by Customer_status 


  Select state, count(state) as Totalcount,
  count(State) * 1.0 / (Select count(*) From stg_churn) as Pertange_stage
  From stg_churn
  Group by State


  Select DISTINCT Internet_Type From stg_churn