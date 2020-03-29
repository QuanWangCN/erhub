library(ggplot2)
library(gcookbook)
#Weight~Year
ggplot(heightweight, aes(x=ageYear, y=heightIn, size=weightLb, colour=sex)) +
  geom_point(alpha=.5) +
  scale_size_area() +
  scale_colour_brewer(palette="Set1")
