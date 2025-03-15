Create view vw_ChurnData As (
			Select * From [dbo].[prod_Churn] where customer_status in ('churned','stayed') )


Create view vw_JoinedData as (
			Select * From [dbo].[prod_Churn] where Customer_status  = 'Joined'
)


Select * From [dbo].[vw_ChurnData]

Select * FROM [dbo].[vw_JoinedData]