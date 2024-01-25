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


