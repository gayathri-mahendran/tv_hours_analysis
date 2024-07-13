library(tidyverse)
library(here)

tv_hours_tab <- gss_cat %>% 
  filter(age < 30) %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours = mean(tvhours,na.rm = T))

write_csv(x = tv_hours_tab,
          file = here("tv_hours_by_marital.csv"))
