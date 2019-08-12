# Scatterplots

# Petal Length vs Petal Width

scatter_petal <- ggplot(data = iris_ds, aes(x = PetalLengthCm, y = PetalWidthCm)) +
                  xlab("Petal Length") +
                  ylab("Petal Width") +
                  geom_point(aes(color = Species, shape = Species)) +
                  # adding regression line with 95% confidence band
                  geom_smooth(method = 'lm') +
                  ggtitle("Petal Length vs Width")

# Sepal Length vs Sepal Width

scatter_sepal <- ggplot(data = iris_ds, aes(x = SepalLengthCm, y = SepalWidthCm)) + 
                  xlab("Sepal Length") +
                  ylab("Sepal Width") +
                  geom_point(aes(color = Species, shape = Species)) +
                  # adding regression line with 95% confidence band
                  geom_smooth(method = 'lm') + 
                  ggtitle("Sepal Length vs Width")

grid.arrange(scatter_petal, scatter_sepal)

# Observations from Plots
# 1. The petal length of the setosa is clearly a differenciated cluster so it will be a good predictor for ML. 
# 2. The sepal of the Virginica and Versicolor species are mixed, so this feature might not be a good predictor.