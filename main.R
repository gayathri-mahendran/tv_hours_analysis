library(tidyverse)
library(here)

tv_hours_table <- gss_cat %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours = mean(tvhours,na.rm = T))

write_csv(x = tv_hours_table,
          file = here("tv_hours_by_marital.csv"))
