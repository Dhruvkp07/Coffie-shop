Coffee Shop Data Analysis Project

Overview
This project demonstrates a complete workflow for handling a coffee shop transactions dataset:

Data cleaning in Python

Data visualization using Seaborn and Matplotlib

Database design and creation using MySQL

Project Structure
COFFIESHOP_DATACLEAN.ipynb: Jupyter notebook for cleaning and preprocessing raw dataset.

COFFIESHOP_visualization.ipynb: Notebook for data exploration and visualization with Seaborn and Matplotlib.

coffe.csv: Cleaned dataset used for analysis and database import.

coffieshop_schema.sql: SQL script to create the database schema and insert sample data.

Workflow Summary
1. Data Cleaning
The data cleaning notebook handles:

Removing duplicates and missing values

Converting data types

Standardizing column names

Preparing the dataset for visualization and database storage

2. Data Visualization
The visualization notebook includes:

Exploratory analysis using pandas

Visualizations of sales patterns by time, coffee type, and payment mode using Seaborn and Matplotlib.

3. Database Creation
The SQL schema script:

Defines normalized tables for coffees, payment types, and transactions

Inserts sample data for demonstration

Supports future queries and relational analysis

How to Use
Review the cleaning and visualization notebooks for complete ETL and EDA steps.

Use coffieshop_schema.sql to set up the database in MySQL Workbench (or any compatible client).

Use coffe.csv to import cleaned data if desired for further experiments.


