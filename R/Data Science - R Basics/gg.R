library(dplyr)
library(dslabs)
library(ggplot2)
data("murders")

# murders %>% ggplot() 
p <- ggplot(data = murders)
plot(p + geom_point(aes(x = population/10^6, 
                        y = total)))

plot(ggplot(data = murders,
            mapping = aes(x = population/10^6,
                          y = total))
    + geom_point(size = 2)
    + geom_line(colour = "red")
    + scale_x_log10()
    + scale_y_log10()
    + xlab("Populations in millions (log scale)")
    + ylab("Total number of murders (log scale)")
    + ggtitle("US Gun Murders in 2010")
)
