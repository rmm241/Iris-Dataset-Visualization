# Visualizing the data using the violin plots. They show the number of points at a particular value by the width of the shapes. 
# They include the marker for the median and a box for the interquartile range.

# Sepal Length
vp_sl <-  ggplot(iris_ds, aes(Species, SepalLengthCm, fill=Species)) + 
                  geom_violin(aes(color = Species), trim = T)+
                  scale_y_continuous("Sepal Length", breaks= seq(0,30, by=.5))+
                  geom_boxplot(width=0.1)+
                  theme(legend.position="none")

# Sepal Width
vp_sw <-  ggplot(iris_ds, aes(Species, SepalWidthCm, fill=Species)) + 
                  geom_violin(aes(color = Species), trim = T)+
                  scale_y_continuous("Sepal Width", breaks= seq(0,30, by=.5))+
                  geom_boxplot(width=0.1)+
                  theme(legend.position="none")


# Petal Length
vp_pl <-  ggplot(iris, aes(Species, PetalLengthCm, fill=Species)) + 
                  geom_violin(aes(color = Species), trim = T)+
                  scale_y_continuous("Petal Length", breaks= seq(0,30, by=.5))+
                  geom_boxplot(width=0.1)+
                  theme(legend.position="none")


# Petal Width
vp_pw <-  ggplot(iris, aes(Species, PetalWidthCm, fill=Species)) + 
                  geom_violin(aes(color = Species), trim = T)+
                  scale_y_continuous("Petal Width", breaks= seq(0,30, by=.5))+
                  geom_boxplot(width=0.1)+
                  labs(title = "Iris Box Plot", x = "Species")


# Plot all visualizations
grid.arrange(vp_sl  + ggtitle(""),
             vp_sw  + ggtitle(""),
             vp_sl + ggtitle(""),
             vp_sw + ggtitle(""))