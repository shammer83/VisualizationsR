```{r}
install.packages("tidyverse")

library(tidyverse)
library(ggplot2)

?mpg

ggplot(data = mpg)+ geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg)+ geom_point(mapping = aes(x = class, y = drv))

ggplot(data = mpg)+ geom_point(mapping = aes(x = hwy, y = cyl))

ggplot(data = mpg)+ geom_point(mapping = aes(x = displ, y = hwy, color = class))

#Left
ggplot(data = mpg)+ geom_point(mapping = aes(x = displ, y = hwy,  alpha = class))

#Right
ggplot(data = mpg)+geom_point(mapping = aes(x = displ, y = hwy, shape = class))

#Blue Aestetic
ggplot(data = mpg)+geom_point(mapping = aes(x = displ, y = hwy), color = 'blue')

#Excercise 3.3.1
ggplot(data = mpg)+geom_point(mapping = aes(x = displ, y = hwy), color = 'blue')

?geom_point

vignette('ggplot2-specs')

ggplot(data = mpg)+geom_point(mapping = aes(x = displ, y =hwy, colou = displ < 5))

###facets are subplots
ggplot(data = mpg)+geom_point(mapping = aes(x = displ, y = hwy)) + facet_wrap(~ class, nrow = 2)

#To facet your plot on the combination of two variables
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(.~ cyl)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)

# ggplot uses geoms for the shapes,  uses discrete variables to shwo the difference betwee 4whl, front, and rearwheel drive
ggplot(data = mpg)+geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

ggplot(data = mpg)+geom_smooth(mapping = aes( x = displ, y = hwy, group = drv))

ggplot(data = mpg)+geom_smooth(mapping = aes(x = displ, y =hwy, group = drv))

ggplot(data = mpg)+geom_smooth(mapping = aes(x = displ, y = hwy, colour = drv), show.legend = FALSE)


#Adding multiple Geoms to the same plot

ggplot(data = mpg)+geom_point(mapping = aes(x = displ, y = hwy))+geom_smooth(mapping = aes(x = displ, y = hwy))
