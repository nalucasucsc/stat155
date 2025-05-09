# Project 2
Here contains reproducible Quarto report (eda.qmd), cleaned datasets for education, gender, and industry analyses, R scripts for data cleaning and modeling, and saved visualization outputs used in the exploratory data analysis.
---
# Research Question:
How has union membership differs bewteen gender, sector, industry, and education from 1973 to 2024?
---
# Analysis Objective
# Description: 
The objective of this analysis is to summarize and vizualize union membership trends over time, across sectors (private vs. public), industries (manufatcoring, wholesale and trade retail, public administration), gender (female vs. male), and education (more than college vs. less than college). Time-series plots and group-wise averages will be analyzed to reveal any trends and disparities. 
# Analysis:
I will be quantifying the relationship between union membership and demographics (industry, sector, gender, education, year) using logistic regression. 
# Prediction:
Logistic regression is used to predict the probability of union membership based on education. I plan on extending the model to include gender, industry, and sector. This informs our understanding of which groups are more or less likely to be union members.
# Main variables of interest:
* year: year of observation 
* industry, sector, gender, highest education: main categories for union presence indicators, total employement and total members(in 1,000's)

---
# Data Description:
The data was originally collected by the U.S. Census Bureau and Bureau of Labor Statistics (BLS) through the Current Population Survey (CPS). For high earning individuals, researchers used Pareto distribution estimates. Annually on Unionstats.com, linear regression models are used to demonstrate the wage gaps between union and nonunion workers. You can find the data at https://www.unionstats.com/ under "By Sector and Demographic Group: 1973-2024". The dataset spans from 1973 to 2024.

# Variable Breakdown:
* year: year of observation
* industry, sector, gender, highest education: key categories to explain union presence
* total_employ, total_mem: total employed and union members (in thousands)
* perc_mem: percentage of workers who are union members

# Union presence indicators (percentages):
* year: year of observation
* perc_mem: percentage of workers who are union members
* total_mem: total number of union members (in thousands)
* total_employ: total number of employed individuals (in thousands)
* college: indicator for college-educated individuals
* less_college: indicator for individuals with less than a college degree
* female, male: gender groups
* public, private: sector categories
* manu, wholesale, public_admin: industry categories
