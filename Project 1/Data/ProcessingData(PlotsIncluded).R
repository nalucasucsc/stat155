library(tidyverse)

# College graduates
college <- read_csv("Project 1/Data/members_coll_plus.csv", skip = 3, 
                    col_types = list(col_double())) 
names(college) <- c("year", "sample_size","employment","members","covered",
                    "perc_mem","per_coverage")
college$perc_mem <- as.numeric(substr(college$perc_mem, 1, 10))
college$per_coverage <- as.numeric(substr(college$per_coverage, 1, 10))
college <- college[-52,]
college$education <- rep("college", 51)

# Less than college
less_college <- read_csv("Project 1/Data/members_less_th_coll (1).csv", skip = 3,
                    col_types = list(col_double()))
names(less_college) <- c("year", "sample_size","employment","members","covered",
                         "perc_mem","per_coverage")
less_college$perc_mem <- as.numeric(substr(less_college$perc_mem, 1, 10))
less_college$per_coverage <- as.numeric(substr(less_college$per_coverage, 1, 10))
less_college <- less_college[-52,]
less_college$education <- rep("less_college", 51)

# Female
female <- read_csv("Project 1/Data/members_fem (2).csv", skip = 3,
                    col_types = list(col_double()))
names(female) <- c("year", "sample_size","employment","members","covered",
                         "perc_mem","per_coverage")
female$perc_mem <- as.numeric(substr(female$perc_mem, 1, 3))
female$per_coverage <- as.numeric(substr(female$per_coverage, 1, 3))
female <- female[-52,]
female$sex <- rep("female", 51)


# Male
male <- read_csv("Project 1/Data/members_male (2).csv", skip = 3,
                    col_types = list(col_double())) 
names(male) <- c("year", "sample_size","employment","members","covered",
                "perc_mem","per_coverage")
male$perc_mem <- as.numeric(substr(male$perc_mem, 1, 3))
male$per_coverage <- as.numeric(substr(male$per_coverage, 1, 3))
male <- male[-52,]
male$sex <- rep("male", 51)


# Public sector
public <- read_csv("Project 1/Data/Public.csv", skip = 2,
                    col_types = list(col_double())) 
names(public) <- c("year", "sample_size","employment","members","covered",
                   "perc_mem","per_coverage")
public$perc_mem <- as.numeric(substr(public$perc_mem, 1, 3))
public$per_coverage <- as.numeric(substr(public$per_coverage, 1, 3))
public <- public[-52,c(1:7)]
public$industry <- rep("public", 51)

# Private sector
private <- read_csv("Project 1/Data/members_priv.csv", skip = 3,
                    col_types = list(col_double())) 
names(private) <-c("year", "sample_size","employment","members","covered",
                   "perc_mem","per_coverage")
private$perc_mem <- as.numeric(substr(private$perc_mem, 1, 10))
private$per_coverage <- as.numeric(substr(private$per_coverage, 1, 10))
private <- private[-52,]
private$industry <- rep("private", 51)

# Manufacturing
manufacturing <- read_csv("Project 1/Data/members_manuf.csv", skip = 3,
                    col_types = list(col_double())) 
names(manufacturing) <- c("year", "sample_size","employment","members","covered",
                          "perc_mem","per_coverage")
manufacturing$perc_mem <- as.numeric(substr(manufacturing$perc_mem, 1, 10))
manufacturing$per_coverage <- as.numeric(substr(manufacturing$per_coverage, 1, 10))
manufacturing <- manufacturing[-52,]
manufacturing$industry <- rep("manu", 51)

# Wholesale/Retail
wholesale <- read_csv("Project 1/Data/members_whole_ret.csv", skip = 3,
                    col_types = list(col_double())) 
names(wholesale) <- c("year", "sample_size","employment","members","covered",
                      "perc_mem","per_coverage")
wholesale$perc_mem <- as.numeric(substr(wholesale$perc_mem, 1, 10))
wholesale$per_coverage <- as.numeric(substr(wholesale$per_coverage, 1, 10))
wholesale <- wholesale[-52,]
wholesale$industry <- rep("wholesale", 51)

# Public administration
public_admin <- read_csv("Project 1/Data/members_public_admin.csv", skip = 3,
                    col_types = list(col_double()))
names(public_admin) <- c("year", "sample_size","employment","members","covered",
                         "perc_mem","per_coverage")
public_admin$perc_mem <- as.numeric(substr(public_admin$perc_mem, 1, 10))
public_admin$per_coverage <- as.numeric(substr(public_admin$per_coverage, 1, 10))
public_admin <- public_admin[-52,]
public_admin$industry <- rep("public_admin", 51)



### Table for model with education

education_data <- tibble(rbind(college, less_college))
mod1<-lm(perc_mem~education, data=education_data)
summary(mod1)

### Table for model with gender

sex_data <- tibble(rbind(male, female))
mod2<-lm(perc_mem~sex, data=sex_data)
summary(mod2)

### Table for model with industry

industry_data <- tibble(rbind(private, public, manufacturing,
                              wholesale, public_admin))
mod3<-lm(perc_mem~industry, data=industry_data)
summary(mod3)

library(ggplot2)
library(dplyr)
library(Hmisc)  # for mean_cl_boot

# Table 1: Boxplot by Education
plot1 <- ggplot(education_data, aes(x = education, y = perc_mem, fill = education)) +
  geom_boxplot(alpha = 0.5) +
  stat_summary(fun = mean, geom = "point", shape = 20, size = 4, color = "black") +
  labs(title = "Union Membership % by Education",
       x = "Education Level", y = "Union Membership %") +
  theme_minimal()

ggsave("table1_education.png", plot = plot1, width = 6, height = 4, dpi = 300)
print(plot1)
# Table 2: Boxplot by Sex
plot2 <- ggplot(sex_data, aes(x = sex, y = perc_mem, fill = sex)) +
  geom_boxplot(alpha = 0.5) +
  stat_summary(fun = mean, geom = "point", shape = 20, size = 4, color = "black") +
  labs(title = "Union Membership % by Gender",
       x = "Sex", y = "Union Membership %") +
  theme_minimal()

ggsave("table2_sex.png", plot = plot2, width = 6, height = 4, dpi = 300)
print(plot2)
# Table 3: Boxplot by Industry 
plot3 <- ggplot(industry_data, aes(x = industry, y = perc_mem, fill = industry)) +
  geom_boxplot(alpha = 0.5) +
  stat_summary(fun = mean, geom = "point", shape = 20, size = 4, color = "black") +
  labs(title = "Union Membership % by Industry",
       x = "Industry", y = "Union Membership %") +
  theme_minimal()

ggsave("table3_industry.png", plot = plot3, width = 7, height = 4, dpi = 300)
print(plot3)
# Table 4: Logistic Regression (Simulated Binary Predictor) 
set.seed(42)
x <- rbinom(100, 1, 0.5)
prob <- 1 / (1 + exp(-(-1 + 2 * x)))
y <- rbinom(100, 1, prob)
df1 <- data.frame(x = x, y = y)
model1 <- glm(y ~ x, data = df1, family = binomial)
df1$predicted <- predict(model1, type = "response")

plot4 <- ggplot(df1, aes(x = factor(x), y = predicted)) +
  stat_summary(fun = mean, geom = "point", size = 5) +
  stat_summary(fun.data = mean_cl_boot, geom = "errorbar", width = 0.2) +
  labs(x = "Binary Predictor (e.g., Gender)", y = "Predicted Probability (y = 1)",
       title = "Logistic Regression: Binary Predictor") +
  theme_minimal()
print(plot4)
ggsave("table4_logistic_binary.png", plot = plot4, width = 6, height = 4, dpi = 300)

# Table 5: Logistic Regression by Education 
set.seed(123)
n <- 100
education <- rbinom(n, 1, 0.5)
prob_union <- 1 / (1 + exp(-( -1 + 2 * education )))  
union_member <- rbinom(n, 1, prob_union)
df2 <- data.frame(union_member, education)
model2 <- glm(union_member ~ education, data = df2, family = binomial)
df2$predicted_prob <- predict(model2, type = "response")

plot5 <- ggplot(df2, aes(x = factor(education), y = predicted_prob)) +
  stat_summary(fun = mean, geom = "point", size = 5, color = "blue") +
  stat_summary(fun.data = mean_cl_boot, geom = "errorbar", width = 0.1, color = "darkblue") +
  labs(
    x = "Education (0 = <College, 1 = College)",
    y = "Predicted Probability of Union Membership",
    title = "Logistic Regression: Probability by Education"
  ) +
  theme_minimal()

ggsave("table5_logistic_education.png", plot = plot5, width = 6, height = 4, dpi = 300)
print(plot5)