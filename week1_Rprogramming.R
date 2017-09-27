> getwd()
[1] "C:/Users/Bushra/Documents"

> getwd()
[1] "C:/Users/Bushra/Desktop/coursera"

> dataset <- read.csv ("hw1_data.csv")

> names(dataset)

> dataset[1:2, ]
Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2

> nrow(dataset)
[1] 153

> mean(dataset[, "Ozone"], na.rm = TRUE)
[1] 42.12931

> x <- subset(dataset, Ozone>31 & Temp>90)
> mean(x[, "Solar.R"], na.rm = TRUE)
[1] 212.8

