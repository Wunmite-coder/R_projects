
penguins %>% 
  group_by(island) %>%
  drop_na() %>%
  summarize(mean(bill_length_mm))
  


#max of bill length
penguins %>% 
  group_by(island) %>%
  drop_na() %>%
  summarize(max_bill_lenght = max(bill_length_mm))



penguins %>% 
  group_by(island, species) %>%
  drop_na() %>%
  summarize(mean_bl = mean(bill_length_mm), max_bl = max(bill_length_mm))

penguins %>%
  filter(species == "Adelie")

# "Lesson 3: Cleaning data"

library(skimr)

install.packages("janitor")
library(janitor)


#load bookings csv as bookings_df

mybookings <- read_csv("hotel_bookings.csv")


# find the structure of the data

structure(mybookings)

# find the head

head(mybookings)

# Glimpse

glimpse(mybookings)

# Column names

colnames(mybookings)


skim_without_charts(mybookings)


# Cleaning my data

trimmed_df <- mybookings %>%
  select(hotel_type = hotel, is_canceled, lead_time)

arrival_day <- mybookings %>%
  select(arrival_date_month, arrival_date_year) %>%
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")


# use mutate function to add adults, children, and babies
my_df <- mybookings %>%
  mutate(guests = adults + children + babies)
head(my_df)


# include total number of cancelled bookings column 
agg_df <- mybookings %>%
  summarize(cancelled_bookings = sum(is_canceled)
            , avg_leadtime = mean(lead_time))
  