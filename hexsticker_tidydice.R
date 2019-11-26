library(tidyverse)
library(hexSticker)

# white dice
p <- force_dice(1:3, round = 1) %>% 
  force_dice(4:6, round = 2) %>% 
  plot_dice()

# create sticker
file_out <- "hex_tidydice.png"
sticker(p,                      # ggplot
        package = "tidydice",    # name of package
        p_size = 29,            # size package name
        p_color = "darkblue",    # color package name
        p_x = 1, p_y = 0.65,     # x/y package name
        s_x = 1, s_y = 1.17,    # x/y subplot
        s_width = 1, s_height = 1,
        h_fill = "white", # "#ECEFF1",
        h_color = "lightblue",
        filename = file_out)