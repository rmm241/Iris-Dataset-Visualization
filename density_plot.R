# Density Distribution of each attribute broken down by class values

# Petal Length
dhist_pl <- ggplot(iris_ds, aes(x=PetalLengthCm, colour=Species, fill=Species)) +
                  geom_density(alpha=.3) +
                  geom_vline(aes(xintercept=mean(PetalLengthCm),  colour=Species),linetype="dashed",color="grey", size=1)+
                  xlab("Petal Length (cm)") +  
                  ylab("Density")+
                  theme(legend.position="none")

# Petal Width
dhist_pw <- ggplot(iris_ds, aes(x=PetalWidthCm, colour=Species, fill=Species)) +
                  geom_density(alpha=.3) +
                  geom_vline(aes(xintercept=mean(PetalWidthCm),  colour=Species),linetype="dashed",color="grey", size=1)+
                  xlab("Petal Width (cm)") +  
                  ylab("Density")


# Sepal Width
dhist_sw <- ggplot(iris_ds, aes(x=SepalWidthCm, colour=Species, fill=Species)) +
                  geom_density(alpha=.3) +
                  geom_vline(aes(xintercept=mean(SepalWidthCm),  colour=Species), linetype="dashed",color="grey", size=1)+
                  xlab("Sepal Width (cm)") +  
                  ylab("Density")+
                  theme(legend.position="none")


# Sepal_Length
dhist_sl <- ggplot(iris_ds, aes(x=SepalLengthCm, colour=Species, fill=Species)) +
                  geom_density(alpha=.3) +
                  geom_vline(aes(xintercept=mean(SepalLengthCm),  colour=Species),linetype="dashed", color="grey", size=1)+
                  xlab("Sepal Length (cm)") +  
                  ylab("Density")+
                  theme(legend.position="none")


# Plot all density visualizations
grid.arrange(dhist_sl + ggtitle(""),
             dhist_sw  + ggtitle(""),
             dhist_pl + ggtitle(""),
             dhist_pw  + ggtitle(""))
             