# readr 

readr_example()
view(mtcars)
library(readxl)
readxl_example()
view(read_excel(readxl_example("deaths.xlsx")))

read_excel(readxl_example("deaths.xlsx"))

read_excel(readxl_example("type-me.xlsx"))

read_excel(readxl_example("type-me.xlsx"), sheet = "date_coercion")


# IMPORTING AND WORKING WITH DATA

bookings_df <- read_csv("hotel_bookings.csv")

# "C:\Users\wumio\Downloads\hotel_bookings.csv"

# Inspecting the data 
head(bookings_df)
str(bookings_df)

# find the columnns

colnames(bookings_df)


# create new dataframe for just adr and adults

adult_adr <- select(bookings_df, "adr", "adults")

# create a new column on the adult_adr column that divides adr by adults

wunmi_df <- mutate(adult_adr, adult_adr_ratio = adr / adults)

adult_adr <- mutate(adult_adr, adult_adr_ratio = adr / adults)
------------------------------------------------------------------------------
 # Importing data from R documents 
  
inventory_details <- read_csv("Inventory.csv")

mydf <- read_csv("Inventory.csv")
