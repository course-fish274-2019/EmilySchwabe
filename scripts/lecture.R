fish_data = read.csv("data/Gaeta_etal_CLC_data._1csv")


library(dplyr)





#using the fish data and then piping a new colunm for fish bigger than 300
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))


#measure the scale length of the fish in Gaeta_etal_CLC_data.csv is not accurate for those smaller than 1 mm. Use dplyr to remove the fish with a scalelength of less than 1 mm from fish_data_cat. The new dataset will have 4,029 rows.



fish_data_cat_largescales <- filter(fish_data_cat, scalelength > 1)
