par(mfrow=c(4,2))
# 散佈圖
plot(Orange$age, Orange$circumference, main="Age vs. Circumference of Orange Trees", xlab = "Age", ylab = "Circumference")

# 折線圖
plot(Orange$age, Orange$circumference, main="Age vs. Circumference of Orange Trees", xlab = "Age", ylab = "Circumference", type = "l")

# 長條圖
#par(mfrow=c(1,2))
hist(Orange$age, main="Distribution of Orange Tree Age", xlab = "Age")
hist(Orange$circumference, main="Distribution of Orange Tree Circumference", xlab = "Circumferenece")

# 盒鬚圖
#par(mfrow=c(1,2))
boxplot(Orange$age~Orange$Tree, main = "Age by Different Trees", xlab = "No. of Tree", ylab = "Age")
boxplot(Orange$circumference~Orange$Tree, main = "Circumference by Different Trees", xlab = "No. of Tree", ylab = "Circumference")

# 長條圖
tress_01 <- Orange[Orange$Tree == 1, ]
tress_02 <- Orange[Orange$Tree == 2, ]
tress_03 <- Orange[Orange$Tree == 3, ]
tress_04 <- Orange[Orange$Tree == 4, ]
tress_05 <- Orange[Orange$Tree == 5, ]
mean_age <- c(mean(tress_01$age),mean(tress_02$age), mean(tress_03$age), mean(tress_04$age), mean(tress_05$age))
mean_cir <- c(mean(tress_01$circumference), mean(tress_02$circumference), mean(tress_03$circumference), mean(tress_04$circumference), mean(tress_05$circumference))
no_tree <- seq(1:5)
for_barplt <- data.frame(no_tree, mean_age, mean_cir)
barplot(mean_age, names = for_barplt$no_tree, xlab = "No. of Tree" ,ylab = "Mean of Age" )
barplot(mean_cir, names = for_barplt$no_tree, xlab = "No. of Tree" ,ylab = "Mean of Circumference" )

