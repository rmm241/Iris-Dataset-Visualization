# Frequency analysis using Histogram 

#Sepal Length
hist_sl <- ggplot(data = iris_ds, aes(x = SepalLengthCm)) +
                  geom_histogram(binwidth = 0.2, color = "black", aes(fill = Species)) +
                  xlab("Sepal Length (cm)") +
                  ylab("Frequency") +
                  ggtitle("Sepal Length") +  
                  theme(legend.position="none") +
                  geom_vline(data = iris_ds, aes(xintercept = mean(SepalLengthCm)), linetype = "dashed", color = "grey")

#Sepal Width
hist_sw <- ggplot(data = iris_ds, aes(x = SepalWidthCm)) +
                  geom_histogram(binwidth = 0.2, color = "black", aes(fill = Species)) +
                  xlab("Sepal Width (cm)") +
                  ylab("Frequency") +
                  ggtitle("Sepal Width") +  
                  theme(legend.position="none") +
                  geom_vline(data = iris_ds, aes(xintercept = mean(SepalWidthCm)), linetype = "dashed", color = "grey")

#Petal Length
hist_pl <- ggplot(data = iris_ds, aes(x = PetalLengthCm)) +
                  geom_histogram(binwidth = 0.2, color = "black", aes(fill = Species)) +
                  xlab("Petal Length (cm)") +
                  ylab("Frequency") +
                  ggtitle("Petal Length") +  
                  theme(legend.position="none") +
                  geom_vline(data = iris_ds, aes(xintercept = mean(PetalLengthCm)), linetype = "dashed", color = "grey")

#Petal Width
hist_pw <- ggplot(data = iris_ds, aes(x = PetalWidthCm)) +
                  geom_histogram(binwidth = 0.2, color = "black", aes(fill = Species)) +
                  xlab("Petal Width (cm)") +
                  ylab("Frequency") +
                  ggtitle("Petal Width") +  
                  theme(legend.position = "right") +
                  geom_vline(data = iris_ds, aes(xintercept = mean(PetalWidthCm)), linetype = "dashed", color = "grey")

                                  
#Plotting all histograms
grid.arrange(hist_sl + ggtitle(""),
             hist_sw + ggtitle(""), 
             hist_pl + ggtitle(""), 
             hist_pw + ggtitle(""))

