#Data Visualization using ggplot2
#ggplot2 is part of the collection of packages within tidyverse.

#Import Farm_system.xlsx and Child_data.xlsx into R.

library(readxl)
library(tidyverse)
Farm <- read_excel("Farm_system.xlsx")
child_data <- read_excel("Child_data.xlsx")

#load R dataset iris
data(iris)
iris

#Plot a scatter plot Sepal.Length and Petal.Length
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length)) + 
  geom_point() + 
  labs(title= "Scatter plot", x= "Sepal.Length",y= "Petal.Length")

#Add smooth line
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length)) + 
  geom_point() + 
  geom_smooth()+
  labs(title= "Scatter plot", x= "Sepal.Length",y= "Petal.Length")

#Add straight line
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length)) + 
  geom_point() + 
  geom_smooth(method="lm")+
  labs(title= "Scatter plot", x= "Sepal.Length",y= "Petal.Length")



