fish_data = read.csv("data/Gaeta_etal_CLC_data_1.csv")


library(dplyr)





#using the fish data and then piping a new colunm for fish bigger than 300
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))




#lecture exercise 
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "large", "small"))




#measure the scale length of the fish in Gaeta_etal_CLC_data.csv is not accurate for those smaller than 1 mm. Use dplyr to remove the fish with a scalelength of less than 1 mm from fish_data_cat. The new dataset will have 4,029 rows.



fish_data_cat_largescales <- filter(fish_data_cat, scalelength > 1)



    #exercise 5, pushing changes 
#make sure to load the library
library(ggplot2)

ggplot(fish_data_cat_largescales, aes(x=length, y= scalelength, color = lakeid)) +
  geom_point(size=1)
  
  
  

