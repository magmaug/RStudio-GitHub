#Data Visualization using ggplot2
#ggplot2 is part of the collection of packages within tidyverse.

#Import Farm_system.xlsx and Child_data.xlsx into R.

library(readxl)
library(tidyverse)
Farm <- read_excel("Farm_system.xlsx")
child_data <- read_excel("Child_data.xlsx")

#Plot bacillulus vs acidimicrobium
ggplot(Farm, aes(x=acidimicrobium, y=bacillus)) + 
  geom_point() + 
  labs(title= "Scatter plot", x= "acidimicrobium",y= "bacillus")

#Add a smooth line
ggplot(Farm, aes(x=acidimicrobium, y=bacillus)) + 
  geom_point() + 
  geom_smooth()+
  labs(title= "Scatter plot", x= "acidimicrobium",y= "bacillus")

#Add a smooth straight line
ggplot(Farm, aes(x=acidimicrobium, y=bacillus)) + 
  geom_point() + 
  geom_smooth(method="lm")+
  labs(title= "Scatter plot", x= "acidimicrobium",y= "bacillus")

ggplot(Farm, aes(x=acidimicrobium, y=bacillus, color = System ))+ 
  geom_point() + 
  facet_grid(cols = vars(Species))+
  labs(title= "Scatter plot", x= "acidimicrobium",y= "bacillus")

ggplot(Farm, aes(x=acidimicrobium, y=bacillus, color = System))+ 
  geom_point() + 
  facet_grid(cols = vars(System))+
  labs(title= "Scatter plot", x= "acidimicrobium",y= "bacillus")

#Graph 6 and 7
#Facet column
ggplot(Farm, aes(x=acidimicrobium, y=bacillus, color = System))+ 
  geom_point() + 
  geom_smooth(method="lm")+
  facet_grid(cols = vars(System))+
  labs(title= "Scatter plot", x= "acidimicrobium",y= "bacillus")

#Facet rows
ggplot(Farm, aes(x=acidimicrobium, y=bacillus, color = System))+ 
  geom_point() + 
  geom_smooth(method="lm")+
  facet_grid(rows = vars(System))+
  labs(title= "Scatter plot", x= "acidimicrobium",y= "bacillus")

#Boxplot
ggplot(Farm, aes(x=System, y=bacillus, color = System)) + 
  geom_boxplot() + 
  labs(title= "Box plot of bacillus", x= "System ", y= "bacillus")

#Child data
child_data %>%
  mutate(Change_Month = fct_relevel(Change_Month, "0 to 5", "6 to 11", "12 to 23","24 to 35")) %>%
  ggplot(aes(x=Change_Month, fill = Change_Month)) + 
  geom_bar()+
  labs(title ="Bar graph of ages of children", x="Months", y="Number of children")

#Horizontal plot
child_data %>%
  mutate(Change_Month = fct_relevel(Change_Month, "0 to 5", "6 to 11", "12 to 23","24 to 35")) %>%
  ggplot(aes(x=Change_Month, fill = Change_Month)) + 
  geom_bar()+
  coord_flip()+
  labs(title ="Bar graph of ages of children", x="Months", y="Number of children")

  





