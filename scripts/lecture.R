fish_data = read.csv("data/Gaeta_etal_CLC_data.csv")


library(dplyr)





#using the fish data and then piping a new colunm for fish bigger than 300
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))
