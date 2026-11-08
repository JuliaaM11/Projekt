dane %>%
  filter(str_detect(Languages, "Polish")) %>%
  pull(Tags) %>%
  paste(collapse = ", ") %>%
  str_extract_all("[A-Za-z]+") %>%
  unlist() %>%
  table() %>%
  as.data.frame() %>%
  arrange(desc(Freq)) %>%
  head(10)
