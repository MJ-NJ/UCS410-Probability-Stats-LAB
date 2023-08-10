c <- c(5, 10, 15, 20, 25, 30)
maxval <- max(c)
minval <- min(c)

print(paste("Max value is", maxval))
print(paste("Min value is", minval))

# QUESTION-2

fac=as.integer(readline(prompt = "Enter a number: "))
factorial=1
if (fac<0){
    print("Error")
} else if (fac==0){
    print("Factorial of 0 is 1")
} else{
    for (i in 1:fac){
        factorial=factorial*i
    }
    print(paste("Factorial of", fac, "is", factorial))
}

# QUESTION-3

nterm = as.integer(readline(prompt = "How many terms: "))
n1 = 0
n2 = 1
count = 2
if (nterm <= 0){
    print("Enter a positive integer")
} else if (nterm == 1){
    print("Fibonacci sequence upto", nterm, ":")
    print(n1)
} else{
    print("Fibonacci sequence:")
    print(n1)
    print(n2)
    while (count < nterm){
        nth = n1 + n2
        print(nth)
        n1 = n2
        n2 = nth
        count = count + 1
    }
}
#QUESTION-4

add <- function(x, y){
    return(x + y)
}
sub <- function(x, y){
    return(x - y)
}
mul <- function(x, y){
    return(x * y)
}
div <- function(x, y){
    if(y==0){
        print("Error , give a non zero value")
        return(NULL)
    }else{
        return(x / y)
    }
}
num1<-as.numeric(readline(prompt = "Enter first number: "))
num2<-as.numeric(readline(prompt = "Enter second number: "))
operator <- readline("Enter operator: ")
result <- switch(operator,
                 "+" = add(num1, num2),
                 "-" = sub(num1, num2),
                 "*" = mul(num1, num2),
                 "/" = div(num1, num2),
                 print("Invalid operator")
)
if(!is.null(result)){
    print(paste(num1, operator, num2, "=", result))
}

#QUESTION-5
#1.Scatter plot
x <- 1:10
y <- x^2
plot(x, y, type="o", main = "Scatterplot", 
     xlab = "X Axis", ylab = "Y Axis", 
     col = "blue", pch = 20, cex = 2)
#2.Bar plot
x <- c("A", "B", "C", "D")
val <- c(2, 5, 8, 3)
barplot(val, names.arg = x, col = "blue", 
        main = "Barplot", xlab = "X Axis", 
        ylab = "Y Axis")
#3.Pie
x <- c("A", "B", "C", "D")
val <- c(2, 5, 8, 3)
pie(val, labels = x, col = rainbow(length(x)), 
    main = "Pie Chart")
#4.Histogram
data <- c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75)
hist(data,main="Histogram",xlab="Age",ylab="Frequency",col="blue")
#5.Boxplot
g1 <- c(20, 25, 30, 35, 40, 45)
g2 <- c(50, 55, 60, 65, 70)
boxplot(g1, g2, names = c("G1", "G2"), main = "Boxplot of Groups", ylab = "Values")
