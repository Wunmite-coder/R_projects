# Diamond datasets



names <- c("Adeola", "Olumide", "Wunmi", "Mummy")
ages <- c(30, 24, 32, 40)
people <- data.frame(names, ages)


# insert head function to display the first 6 rows of the data
head(people)

# find the structure of the dataframe with str function
str(people)

# glimpse function
glimpse(people)

# get the list of column names with colnames function
colnames(people)

# use mutate function to add a new column of 50 years to the existing age column named age_addition
mutate(people, age_addition = ages + 50)

-----------------------------------------------------------------------------------
  
  # vector of 5 different fruits
fruits <- c("Mango","Orange", "Kiwifruit","Apple","Banana" )
rank <- c(3,4,5,2,1)

# convert to a dataframe
fruits_ranks<-data.frame(fruits,rank)

# find the first 6 rows
head(fruits_ranks)

#sort the dataframe by the rank column
arrange(fruits_ranks, rank)


# convert the rank column to a number in percent
mutate(fruits_ranks, Percent_like = (rank / 15) * 100 )
-----------------------------------------------------------------------------
 # Create Tibbles using  as_tibble() function.
  as_tibble(diamonds)