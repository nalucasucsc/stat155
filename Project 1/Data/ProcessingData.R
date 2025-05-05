library(tidyverse)

# College graduates
college <- read_csv("members_coll_plus.csv", skip = 3, 
                    col_types = list(col_double())) 
names(college) <- c("year", "sample_size","employment","members","covered",
                    "perc_mem","per_coverage")
college$perc_mem <- as.numeric(substr(college$perc_mem, 1, 10))
college$per_coverage <- as.numeric(substr(college$per_coverage, 1, 10))
college <- college[-52,]
college$education <- rep("college", 51)

# Less than college
less_college <- read_csv("members_less_th_coll (1).csv", skip = 3,
                    col_types = list(col_double()))
names(less_college) <- c("year", "sample_size","employment","members","covered",
                         "perc_mem","per_coverage")
less_college$perc_mem <- as.numeric(substr(less_college$perc_mem, 1, 10))
less_college$per_coverage <- as.numeric(substr(less_college$per_coverage, 1, 10))
less_college <- less_college[-52,]
less_college$education <- rep("less_college", 51)

# Female
female <- read_csv("members_fem (2).csv", skip = 3,
                    col_types = list(col_double()))
names(female) <- c("year", "sample_size","employment","members","covered",
                         "perc_mem","per_coverage")
female$perc_mem <- as.numeric(substr(female$perc_mem, 1, 3))
female$per_coverage <- as.numeric(substr(female$per_coverage, 1, 3))
female <- female[-52,]
female$sex <- rep("female", 51)


# Male
male <- read_csv("members_male (2).csv", skip = 3,
                    col_types = list(col_double())) 
names(male) <- c("year", "sample_size","employment","members","covered",
                "perc_mem","per_coverage")
male$perc_mem <- as.numeric(substr(male$perc_mem, 1, 3))
male$per_coverage <- as.numeric(substr(male$per_coverage, 1, 3))
male <- male[-52,]
male$sex <- rep("male", 51)


# Public sector
public <- read_csv("Public.csv", skip = 2,
                    col_types = list(col_double())) 
names(public) <- c("year", "sample_size","employment","members","covered",
                   "perc_mem","per_coverage")
public$perc_mem <- as.numeric(substr(public$perc_mem, 1, 3))
public$per_coverage <- as.numeric(substr(public$per_coverage, 1, 3))
public <- public[-52,c(1:7)]
public$industry <- rep("public", 51)

# Private sector
private <- read_csv("members_priv.csv", skip = 3,
                    col_types = list(col_double())) 
names(private) <-c("year", "sample_size","employment","members","covered",
                   "perc_mem","per_coverage")
private$perc_mem <- as.numeric(substr(private$perc_mem, 1, 10))
private$per_coverage <- as.numeric(substr(private$per_coverage, 1, 10))
private <- private[-52,]
private$industry <- rep("private", 51)

# Manufacturing
manufacturing <- read_csv("members_manuf.csv", skip = 3,
                    col_types = list(col_double())) 
names(manufacturing) <- c("year", "sample_size","employment","members","covered",
                          "perc_mem","per_coverage")
manufacturing$perc_mem <- as.numeric(substr(manufacturing$perc_mem, 1, 10))
manufacturing$per_coverage <- as.numeric(substr(manufacturing$per_coverage, 1, 10))
manufacturing <- manufacturing[-52,]
manufacturing$industry <- rep("manu", 51)

# Wholesale/Retail
wholesale <- read_csv("members_whole_ret.csv", skip = 3,
                    col_types = list(col_double())) 
names(wholesale) <- c("year", "sample_size","employment","members","covered",
                      "perc_mem","per_coverage")
wholesale$perc_mem <- as.numeric(substr(wholesale$perc_mem, 1, 10))
wholesale$per_coverage <- as.numeric(substr(wholesale$per_coverage, 1, 10))
wholesale <- wholesale[-52,]
wholesale$industry <- rep("wholesale", 51)

# Public administration
public_admin <- read_csv("members_public_admin.csv", skip = 3,
                    col_types = list(col_double()))
names(public_admin) <- c("year", "sample_size","employment","members","covered",
                         "perc_mem","per_coverage")
public_admin$perc_mem <- as.numeric(substr(public_admin$perc_mem, 1, 10))
public_admin$per_coverage <- as.numeric(substr(public_admin$per_coverage, 1, 10))
public_admin <- public_admin[-52,]
public_admin$industry <- rep("public_admin", 51)

### Table for model with education

education_data <- tibble(rbind(college, less_college))
write_csv(education_data, file = "education_data.csv")

### Table for model with gender

sex_data <- tibble(rbind(male, female))
write_csv(sex_data, file = "sex_data.csv")

### Table for model with industry

industry_data <- tibble(rbind(private, public, manufacturing,
                              wholesale, public_admin))
write_csv(industry_data, file = "industry_data.csv")


