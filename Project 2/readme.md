# Project 2
---
# Research Question:
How has union membership differs bewteen gender, sector, industry, and education from 1977 to 2024?

---
# Analysis Objective
# Description: 
The objective of this analysis is to summarize and vizualize union membership trends over time, across sectors (private vs. public), industries (manufatcoring, wholesale and trade retail, public administration), gender (female vs. male), and education (more than college vs. less than college). Time-series plots and group-wise averages will be analyzed to reveal any trends and disparities. 
# Analysis:
I will be quantifying the relationship between union membership and demographics (industry, sector, gender, education, year) using linear regression. 
# Prediction:
I will be using logistic regression to find how industry, gender, sector, and highest education effect total employment, and total members. 
# Main variables of interest:
* year: year of observation 
* industry, sector, gender, highest education: main categories for union presence indicators and total employement (in 1,000's)

---
# Data Description:
The data was originally collected by the U.S. Census Bureau and Bureau of Labor Statistics (BLS) through the Current Population Survey (CPS). For high earning individuals, researchers used Pareto distribution estimates. Annually on Unionstats.com, linear regression models are used to demonstrate the wage gaps between union and nonunion workers. You can find the data at https://www.unionstats.com/ under "By Sector and Demographic Group: 1973-2024". The dataset spans from 1973 to 2024, with this analysis focusing on the period from 1977 to 2024.

# Variable Breakdown:
* year: year of observation

# Union presence indicators (percentages):
* perc_mem_college: percent union membership among college graduates
* perc_mem_less_college: percent union membership among individuals with less than a college degree
* perc_mem_female: percent union membership among females
* perc_mem_male: percent union membership among males
* perc_mem_public: percent union membership in the public sector
* perc_mem_private: percent union membership in the private sector
* perc_mem_manu: percent union membership in the manufacturing industry
* perc_mem_whole: percent union membership in the wholesale/retail industry
* perc_mem_public_admin: percent union membership in the public administration industry

# Total employment (in 1,000s):
* total_employ_college: total employment of college graduates (in 1,000s)
* total_employ_less_college: total employment of individuals with less than a college degree (in 1,000s)
* total_employ_female: total employment of females (in 1,000s)
* total_employ_male: total employment of males (in 1,000s)
* total_employ_public: total employment in the public sector (in 1,000s)
* total_employ_private: total employment in the private sector (in 1,000s)
* total_employ_manu: total employment in the manufacturing industry (in 1,000s)
* total_employ_whole: total employment in the wholesale/retail industry (in 1,000s)
* total_employ_public_admin: total employment in the public administration industry (in 1,000s)

# Total union membership (in 1,000s):
* total_mem_college: total union membership among college graduates (in 1,000s)
* total_mem_less_college: total union membership among individuals with less than a college degree (in 1,000s)
* total_mem_female: total union membership among females (in 1,000s)
* total_mem_male: total union membership among males (in 1,000s)
* total_mem_public: total union membership in the public sector (in 1,000s)
* total_mem_private: total union membership in the private sector (in 1,000s)
* total_mem_manu: total union membership in the manufacturing industry (in 1,000s)
* total_mem_whole: total union membership in the wholesale/retail industry (in 1,000s)
* total_mem_public_admin: total union membership in the public administration industry (in 1,000s)
