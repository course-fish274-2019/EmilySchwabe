library(dplyr)    

 #exerise 1 set up git 
#did it!



      #exercise 2, 3 and 4 (they're a little mixed up)
fish_data = read.csv("data/Gaeta_etal_CLC_data_1.csv")

#using the fish data and then piping a new colunm for fish bigger than 300
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))


fish_data_cat_largescales <- filter(fish_data_cat, scalelength > 1)



    #exercise 5, pushing changes 
#make sure to load the library
#use code from past assignments as templates to make new figures
library(ggplot2)

ggplot(fish_data_cat_largescales, aes(x=length, y= scalelength, color = lakeid)) +
  geom_point(size=1)
  
  
ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram(bins=80)
  
  ggsave("figures/scale_hist_by_length.jpg")
  
  
  
  

