data <- read.csv("C:/Users/alexw/Downloads/Guns.csv")
install.packages("ggplot2")
library(ggplot2)
install.packages("lattice")
library(lattice)

head(data)

xyplot(prisoners ~ year, data = data, col="black", main="Yearly Prisoner Count", 
       xlab= "Year", ylab="Prisoners")

ggplot(data, aes(x = year, y = prisoners, fill = state)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title = "Yearly Prisoner Count",
       x = "Year",
       y = "Prisoners",
       fill = "State") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


ggplot(data, aes(x = year, y = prisoners, color = state)) +
  geom_line() +
  theme_minimal() +
  labs(title = "Yearly Prisoner Count",
       x = "Year",
       y = "Prisoners") +
  theme(legend.position = "right")

