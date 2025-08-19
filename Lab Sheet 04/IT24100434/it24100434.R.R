setwd("C:\\Users\\it23219434\\Downloads\\IT23219434\\IT23219434")
branch_data<-read.table("DATA 4.txt", header=TRUE , sep = " ")
head(branch_data)
fix(data)
attach(data)

boxplot(X2, main = "Box plot for Sales",xlab = "Sales", outline = TRUE, outpch = 8, horizontal = TRUE)


summery(X1)
summery(X2) 
summery(X3)

quantile(X1)
quantile(X2)[2]
quantile(X3)


IQR(X1)
IQR(X2)
IQR(X3)

get.outliers<function(z){
  q1<-quantile(z)[2]
  q3<-quantile(z)[4]
  iqr<-q3 - q1
  
  ub<- q3 + 1.5*iqr
  lb<- q1 - 1.5*iqr
  
  print(paste("Upper Bound =" , ub))
  print(paste("Lower BOund =", lb))
  print(paste("Outliers:" , paste(sort(z[z<lb | z>lb]), collapse = " , ")))
}
get.outliers(X1)
get.outliers(X2)
get.outliers(X3)
