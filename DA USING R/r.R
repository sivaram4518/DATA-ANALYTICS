data <- c(10,20,30,40,50,60,70,20)
print("dataset:")
print(data)
mean_value <- mean(data)
print(paste("mean=",mean_value))
median_value <- median(data)
print(paste("median=",median_value))
mode_function <-function(x){
  uniq_value <- unique(x)
  uniq_value[which.max(tabulate(match(x, uniq_value)))]
}
mode_value <- mode_function(data)
print(paste("mode=",mode_value))
max_value <- max(data)
print(paste("maximum=",max_value))
min_value <- min(data)
print(paste("minimum=",min_value))
variance_value <- var(data)
print(paste("variance=",variance_value))
sd_value <- sd(data)
print(paste("sd:",sd_value))
summary(data)
barplot(data)


