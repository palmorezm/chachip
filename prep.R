
# Get ACS Data
library(tidycensus)
library(tidyverse)
census_api_key("bad484686e8ca6691651fee6b18bc335325005a2")
# age20 <- get_decennial(geography = "state", 
#                        variables = "P13_001N", 
#                        year = 2020,
#                        sumfile = "sf1")
# 
# head(age20)
# ?get_acs()
# data <- get_acs(geography = "state", 
#         variables = "B19013_001",
#         year = 2021)
wi <- get_acs(geography = "county", 
              variables = c(medincome = "B19013_001"), 
              state = "WI", 
              year = 2021)
vars <- load_variables(year = 2021, 
               dataset = "acs5", 
               cache = TRUE)
datatables <- load_variables(year = 2021, 
                       dataset = "acs5", 
                       cache = TRUE)
require(stringr)
str_extract(datatables$concept, "Population") 
# Does not work unless dig through 27k "NA" values to find 1 that could match

# Knowing a little about the table we're looking for
# Using census reporter (for journalists) 
# then the API for quick access with no formal written requests
# this would get us to the table(s) that match then we need to find 
# relevant subheadings and data points 
datatables %>% 
    filter(name == "B98012") # Returns Empty
# Refraphse program to say:
# Extract anything that contains the table 
# from table name of datatables from ACS
# with corresponding subheadings 
# then concatenate the data points
which(datatables$name, "B01003")
longindex <- datatables %>% 
    select(
        case_when(
            grepl("B01003*?", name, ignore.case = T)
            )
        )
datatables[grepl("B01003*?", datatables$name, ignore.case = T),] %>% View()


