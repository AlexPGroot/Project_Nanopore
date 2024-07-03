library(tidyverse)
library(here)
data_sam <- read_table(here("data_troubleshooting/out_f5.sam"), col_names = FALSE)

data_sam_plot <- 
  data_sam %>%
  group_by(X1) %>%
  summarise(frequency = n()) %>% ungroup()

data_sam_plot %>%
  ggplot(aes(
    x = X1,
    y = frequency
  )) +
  geom_col() +
  labs(title = "MAPQ SG BAM to SAM",
       x = "MAPQ value",
       y = "alignments (n)")

ggplot2::ggsave(filename = "mapq_plot_SG_bam_sam.jpeg",
       plot = last_plot(),
       path = here("results/sam"),
       device = "jpeg")
