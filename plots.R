# install.packages("palmerpenguins")
library(palmerpenguins)
library(ggplot2)

penguin_scatter <- function(x_var, y_var){

  ggplot(data = penguins, aes(x = .data[[x_var]],
                              y = .data[[y_var]])) +
    geom_point(aes(color = species),
               size = 3,
               alpha = 0.9)
}  

penguin_boxplot <- function(y_var){
  
  ggplot(data = penguins, 
         aes(x = species, 
             y = .data[[y_var]])) +
  geom_boxplot(aes(fill = species), width = 0.5, show.legend = FALSE) +
  labs(x = "Species", y = y_var)
}

