# Project 2
---
# Research Question:
How has the union–nonunion wage gap changed across different industries and demographics from 1977 to 2024, and what implications does this have for compensation strategies in human resources management?

---
# Analysis Objective
# Description: 
The objective of this analysis is to summarize and vizualize union-nonunion wage gap trends over time, across sectors (private vs. public), industries (manufatcoring, wholesale and trade retail, public administration), gender (female vs. male), and education (more than college vs. less than college). Time-series plots and group-wise averages will be analyzed to reveal any trends and disparities. 
# Analysis:
I will be quantifying the relationship between wage gap and demographics (industry, sector, gender, education, year) using linear regression. 
# Prediction:
I will be using lasso regression to predict wage gaps between union-nonunion workers in specified demographics and sector-industry combinations, while also identifying the most important variables that will predict union-nonunion wage differences.
# Main variables of interest: 
wage_gap (dependent variable)
year, industry, sector, gender, highest education (independent variables)

---
# Data Description:
The data was originally collected by the U.S. Census Bureau and Bureau of Labor Statistics (BLS) through the Current Population Survey (CPS). For high earning individuals, researchers used Pareto distribution estimates. Annually on Unionstats.com, linear regression models are used to demonstrate the wage gaps between union and nonunion workers. You can find the data at https://www.unionstats.com/ under "By Sector and Demographic Group: 1973-2024". The dataset spans from 1973 to 2024, with this analysis focusing on the period from 1977 to 2024.

# Variable Breakdown:
* year: year of observation
* wage_gap: wage difference between union and nonunion workers
* union_membership, coverage: union presence indicators
* employment: workforce size
* industry, sector, gender, highest education: demographic and categorical variables
