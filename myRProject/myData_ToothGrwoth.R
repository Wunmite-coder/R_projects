
data("Toothgrowth")
library("palmerpenguins")
data("ToothGrowth")
View(ToothGrowth)

# install dprl

install.packages("dplyr")

# filtered out dosage of 0.5 and name it wunmi_dg

wunmi_dg <- filter(ToothGrowth, dose >= 1.5)
View(wunmi_dg)

# arrange the data based on len column
arrange(wunmi_dg, len)

# Using a Nested function, complete the two tasks above
arrange(filter(ToothGrowth, dose >=1.5), len)

# Use the pipe function to get the same answer for the filtered question
myFilteredData <- ToothGrowth %>%
  filter(dose == 0.5) %>%
  arrange(len)
View(myFilteredData)


# include group_by and summarize to the above code 
myFilteredData2 <- ToothGrowth %>%
  filter(dose == 0.5) %>%
  group_by(supp) %>%
  summarize(mean_len = mean(len, na.rm = T), .groups = "drop" )


View(myFilteredData2)




  
