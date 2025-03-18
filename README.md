# ETL Process with Microsoft SQL Server and Power BI

## Project Overview

This project implements an ETL (Extract, Transform, Load) process using Microsoft SQL Server to manage and prepare data for analysis and visualization in Power BI. The primary goal of this project is to ensure data quality and facilitate effective data exploration, modeling, and visualization.

## Table of Contents

- [Technologies Used](#technologies-used)
- [ETL Process](#etl-process)
- [Data Exploration](#data-exploration)
- [Data Cleaning](#data-cleaning)
- [Creating Views for Power BI](#creating-views-for-power-bi)
- [Data Visualization and Modeling](#data-visualization-and-modeling)
- [Getting Started](#getting-started)
- [About Me](#about-me)
- [Contributing](#contributing)
- [License](#license)

## Technologies Used

- Microsoft SQL Server
- Power BI
- SQL (Structured Query Language)


## ETL Process

The ETL process consists of the following steps:

1. **Data Extraction**: Data is extracted from various sources and loaded into staging tables in SQL Server.
2. **Data Transformation**: The data is transformed through various operations to ensure it is clean and ready for analysis.
3. **Data Loading**: The cleaned and transformed data is loaded into production tables for reporting and analysis.

## Data Exploration

During the ETL process, data exploration is performed to understand the dataset better. This includes:

- **Check Distinct Values**: Analyzing the distinct values in key columns to understand the data distribution.
- **Check Nulls**: Identifying columns with null values to assess data quality.

## Data Cleaning

- **Remove Nulls**: Null values are handled by either removing them or replacing them with appropriate default values.
- **Insert New Data**: After cleaning, the new data is inserted into the production tables to ensure that the dataset is up-to-date and accurate.

## Creating Views for Power BI

To facilitate data visualization in Power BI, views are created in SQL Server. These views simplify complex queries and provide a clean interface for Power BI to access the data.

## Data Visualization and Modeling

Using Power BI, data is visualized to provide insights and support decision-making. The following steps are involved:

- **Data Modeling**: Relationships between different tables are established to create a coherent data model.
- **Data Visualization**: Various charts and dashboards are created to represent the data visually, making it easier to interpret and analyze.

- # Churn Analysis Dashboard



The Churn Analysis Dashboard provides insights into customer retention and churn rates. This dashboard is designed to help businesses understand the factors contributing to customer churn and to identify opportunities for improving customer retention strategies.

## Features

- **Churn Rate Visualization**: Displays the overall churn rate over time.
- **Customer Segmentation**: Analyzes churn by different customer segments (e.g., age, location, subscription type).
- **Predictive Analytics**: Utilizes machine learning models to predict potential churn based on historical data.
- **Key Metrics**: Provides key performance indicators (KPIs) related to customer retention, such as average tenure, customer lifetime value (CLV), and more.
- 

#python implemention (Random Forest module)

## Overview

This project implements a predictive model using the Random Forest algorithm to analyze data and generate predictions. The model is built using Python's powerful libraries: pandas for data manipulation, numpy for numerical operations, and scikit-learn for machine learning.

## Technologies Used

- Python 3.x
- pandas
- numpy


## Dataset

The dataset used for this project is stored in a Xlsx file. It contains various features that are used to train the Random Forest model. The target variable is what we aim to predict.

## Implementation Steps

1. **Import Libraries**: The necessary libraries are imported for data manipulation and model building.
2. **Load Dataset**: The dataset is loaded into a pandas DataFrame from a CSV file.
3. **Preprocess Data**: This includes handling missing values, encoding categorical variables, and splitting the dataset into features and target variables.
4. **Train Random Forest Model**: A Random Forest classifier or regressor is initialized and trained on the training data.
5. **Make Predictions**: The trained model is used to make predictions on the test set.
6. **Save Predictions**: The predictions are saved to a `prediction.csv` file for further analysis.

## Example Code

Here is a brief example of how to implement the Random Forest model and save predictions to a CSV file:

#python
import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier

# Load dataset
data = pd.read_csv('product.xlsx')

# Preprocess data
X = data.drop('target', axis=1)  # Features
y = data['target']                # Target variable

# Split the dataset into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Initialize and train the Random Forest model
model = RandomForestClassifier(n_estimators=100, random_state=42)
model.fit(X_train, y_train)

# Make predictions
predictions = model.predict(X_test)

# Save predictions to a CSV file
predictions_df = pd.DataFrame(predictions, columns=['Predicted'])
predictions_df.to_csv('prediction.csv', index=False)

print("Predictions saved to prediction.csv")

prediction.csv this file also available in DataSet



## Screenshots

Here are some screenshots of the Churn Analysis Dashboard:

*Predictive Churn Model Results*
![image alt](https://github.com/RahulNaik2611/Churn-Analysis-portfolio/blob/1efb2009e086e1762e5d8af9080187ad4eb64a46/power%20bi/Summary_update.png)


![image alt](https://github.com/RahulNaik2611/Churn-Analysis-portfolio/blob/9d4426520ad9b56f5e1c9728ebd92fbabe4a29bc/power%20bi/Churn%20Analysis.png)


- ## License

This project is licensed under the [MIT License](link-to-license).

Thank you for visiting our repository! We hope you find this project valuable and informative.

## 👨‍💻 About Me  

Hello! I’m **B Rahul Naik**, a passionate data enthusiast with a strong interest in technology-driven solutions. I completed my **B.Tech in Mechanical Engineering (2022)**, and since then, I have been actively expanding my expertise in **data analytics, software development, and database management**.  

### 🔹 Technical Skills:  
- **Programming & Backend Development:** Java, Spring Boot, Python  
- **Databases & SQL:** SQL, MongoDB, PostgreSQL, Microsoft SQL Server  
- **Data Analytics & Visualization:** Power BI, Excel  

I enjoy working on **data-driven projects** and leveraging technology to create meaningful insights. Feel free to explore my work and connect with me! 🚀  

