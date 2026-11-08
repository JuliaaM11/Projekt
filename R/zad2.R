library(tidyverse)
download.file("https://raw.githubusercontent.com/kflisikowski/ds/master/netflix-dataset.csv?raw=true",
              destfile = "dane.csv", mode = "wb")

dane <- read.csv("dane.csv", encoding = "UTF-8",
                 header = TRUE, sep = ",")
names(dane)
dane %>%
  filter(str_detect(Genre, "Comedy")) %>%
  filter(str_detect(Languages, "Polish")) %>%
  arrange(desc(IMDb.Score)) %>%
  select(Title, Genre, Languages, IMDb.Score) %>%
  head(3)

