x <- c(18, 50, 3, 5, NA, 13, 9, 10, 24, -32, 24, 55, 7, 9, 19,
       20, -21, 2, 51, 18, -18, 8, 42, 0, 1, 8, NA, 32, 4, 25,
       NA, 29, 18, 6, 13, 12, 26, 4, 0, 12, 42, 11, 8, 20, -1,
       61, 10, 2, 17, -40, 19, 7, NA, 41, 3, 10, -5, 0, 12, 1)

min (x)
min(x, na.rm = TRUE)
mean (x, na.rm = TRUE)
sd(x, na.rm = TRUE)  
median (x, na.rm = TRUE)
sum(is.na(x))
z = matrix(x,nrow = 6)




name <- c("Tomer", "Kim", "Michal", "Shira", "Idan", "Dor", "Yael", "Aviv")
age <- c(24, 29, 32, 24, 19, 18, 30, 21)
gender <- c("M", "F", "F", "F", "M", "M", "F", "M")
salary <- c(7100, 6500, 8400, 6200, 7500, 8200, 5000, 8200)
df = data.frame(name, age, gender, salary)
df
class(df)
dim(df)
print(names(df))
print(x,6,2)
return(df(6,2))
df[6,2]
$ = c(salary(df))
df$salary
Car = read.csv("C:/Users/Yoni Drori/Desktop/studing for R/car_ads.csv")
head(Car, n = 8)
tail(Car, n = 10)
Car = Car[,-c(7) ]
colnames(Car)
colnames(Car)[1] <- "car_type"
colnames(Car)
head(Car[order(-Car$price),], n = 10)
Car = na.omit(Car)
length(unique(Car$car_type))
Car = Car[Car$price <= 42500 &
                     Car$body == "sedan" &
                     Car$year >= 2000 &
                     Car$engType == "Petrol",]
nrow(Car)
write.csv(Car, file = "C:/Users/Yoni Drori/Desktop/studing for R/car_ads.csv", row.names = FALSE)
hist(Car$price, col = "Gold", main = "Histogram of car prices",
     xlab = "Prices")
plot(density(Car$price), main = "Car Prices Density Plot")
polygon(density(Car$price), col = "snow2", border = "slategray4")
boxplot(Car$kms, col = "lemonchiffon4", outcol="darkblue",
        cex = 0.8, pch = 19, medcol = "darkblue",
        main = "Kilometers Boxplot")
barplot(table(Car$year), main = "Car Grouped By Year",
        xlab = "Year", ylab = "Frequency", col = "lightgreen",
        border = "darkgreen")
pie(table(Car$year), col = rainbow(length(table(Car$year))),
    cex = 0.5, main = "Slices of All Years in The Data")
plot(year ~ price, data = Car, col = "gray54", pch = 20, 
     xlab = "Price", ylab = "Year")
title(main = "Price vs Year", font.main = 4)
abline(lm(year ~ price, data= Car), col= "red", lwd = 2.5)
cor (Car$price, Car$year)
