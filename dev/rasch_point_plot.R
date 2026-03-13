library(tidyverse)

here::here()

coords <- read_csv("C:/Users/Richardhar/OneDrive - City & Guilds/Guildiverse/cgrasch/dev/line_coordinates.csv")

ggplot(coords, aes(x = x, y = -y)) + 
  geom_point(size = 0.1) +
  coord_equal() +
  theme_void()
