#Box Plot
par(mfrow = c(2,2))
boxplot (iris$Sepal.Length~iris$Species,col=c("#fa8a8a","#529afa","#11cd62"), ylab="SepalLength", xlab="Species", main="SepalLength")
boxplot (iris$Sepal.Width~iris$Species,col=c("#fa8a8a","#529afa","#11cd62"), ylab="Sepal.Width" , xlab="Species", main="SepalWidth" )
boxplot (iris$Petal.Length~iris$Species,col=c("#fa8a8a","#529afa","#11cd62"), ylab="Petal.Length", xlab="Species", main="PetalLength")
boxplot (iris$Petal.Width~iris$Species,col=c("#fa8a8a","#529afa","#11cd62"), ylab="Petal.Width" , xlab="Species", main="PetalWidth" )

#Scatter Plot
#install.packages(c("dplyr", "ggplot2"))
library (ggplot2)
library (dplyr) 
ggplot(data = iris,aes(x=Sepal.Length, y=Sepal.Width))+ geom_point(aes(color=Species,shape=Species))
ggplot(data = iris,aes(x=Petal.Length, y= Petal.Width))+ geom_point(aes(color=Species,shape=Species))
