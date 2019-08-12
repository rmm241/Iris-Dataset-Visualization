# Pairwise correlation numerical values to ascertain relationships in more details.

library(GGally)
corr <- ggpairs(data = iris_ds[1:5], 
                title = "Irirs Correlation Plot",
                upper = list(continuous = wrap("cor", size = 5)),
                lower = list(continuous = "smooth")
                )

print(corr)

# The examination of the plot revelas a strong correlation between the variables Petal Width and the Petal Length (96%) as well as
# The Sepal Length and Petal Length (87%).