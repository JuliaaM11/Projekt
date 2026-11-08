dane %>%
  filter(Series.or.Movie == "Movie") %>%
  mutate(Rok = as.numeric(format(as.Date(Release.Date, format = "%m/%d/%Y"), "%Y"))) %>%
  mutate(Dekada = Rok %/% 10 * 10) %>%
  filter(!is.na(Dekada)) %>%
  group_by(Dekada) %>%
  summarize(Srednia = mean(IMDb.Score, na.rm = TRUE))
