# Idetifying outliers through Boxplots

# Sepal Length
bp_sl <- ggplot(iris_ds, aes(Species, SepalLengthCm, fill=Species)) + 
                geom_boxplot()+
                scale_y_continuous("Sepal Length (cm)", breaks= seq(0,30, by=.5))+
                theme(legend.position="none")


# Sepal Width
bp_sw <-  ggplot(iris_ds, aes(Species, SepalWidthCm, fill=Species)) + 
                geom_boxplot()+
                scale_y_continuous("Sepal Width (cm)", breaks= seq(0,30, by=.5))+
                theme(legend.position="none")

# Petal Length
bp_pl <- ggplot(iris_ds, aes(Species, PetalLengthCm, fill=Species)) + 
                geom_boxplot()+
                scale_y_continuous("Petal Length (cm)", breaks= seq(0,30, by=.5))+
                theme(legend.position="none")


# Petal Width
bp_pw <-  ggplot(iris_ds, aes(Species, PetalWidthCm, fill=Species)) + 
                geom_boxplot()+
                scale_y_continuous("Petal Width (cm)", breaks= seq(0,30, by=.5))+
                labs(title = "Iris Box Plot", x = "Species")


# Plot all visualizations
grid.arrange(bp_sl  + ggtitle(""),
             bp_sw  + ggtitle(""),
             bp_pl + ggtitle(""),
             bp_pw + ggtitle(""))