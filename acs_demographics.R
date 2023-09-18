
designation = "tract"
print(paste("Geography is set to", designation[[1]]))
string_of_tables <- seq(1, length(datatables$name))
for(i in 1:length(string_of_tables)){
    print(paste("Progress is being made on table number", i))
}
# get_acs(geography = designation[[1]], 
#         variables = c(medincome = "B19013_001"), 
#         state = "WI", 
#         year = 2021)

# Total Population
# Table ID:B01003
# source: string in datatables (prep.R)
total_population <- get_acs(geography = designation[[1]], 
        variables = c(totalpop = "B01003_001"), 
        state = "WI", 
        year = 2021)

# Median Household Income
# Table ID:B01003
# source: vars 
median_household_income <- get_acs(geography = designation[[1]], 
                                   variables = c(medincome = "B19013_001"), 
                                   state = "WI", 
                                   county = "Rock County", 
                                   year = 2021)

# Disability Under Age 65
# Table ID: C18101 & B18101 
# source: https://censusreporter.org/tables/C18101/ & https://censusreporter.org/tables/B18101/
disability_under65 <- get_acs(geography = designation[[1]], 
                                   variables = c(variable = "B18101_001E"), 
                                   state = "WI", 
                                   year = 2021)

# Gender/Sex Female (%)
# Table ID: B98012
# source: https://censusreporter.org/tables/C18101/ & https://censusreporter.org/tables/B18101/
percent_female <- get_acs(geography = designation[[1]], 
                              variables = c(variable = "B98012_001"), 
                              state = "WI", 
                              year = 2021)

# Veteran Status (%)
# Table ID: B99211
# source: https://censusreporter.org/tables/C18101/ & https://censusreporter.org/tables/B18101/
veteran_status <- get_acs(geography = designation[[1]], 
                          variables = c(variable = "B99211_001"), 
                          state = "WI", 
                          year = 2021)
# Review 
for(i in 1:length(string_of_tables)){
    print(paste("Reviewing table number", i))
}
