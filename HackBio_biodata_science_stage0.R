#HackBio Biodatascience Stage0

#Calculate the product of 31 and 78
31 * 78

#Divide 697 by 41
697/41

#Add 314 and 654
314 + 654

#Subtract 23 from 56765
56765 - 23

#Assign 39 to x
x <- 39

#Assign 14 to y
y <- 14

#Make z the value of x - y
z <- x - y

#Calculate the square root of 2345, and perform a log2 transformation on the result
sqrt(2345)
log2(48.4252)

#Create a vector called vec1 containing the numbers 2,5,8,12 and 16
vec1 <- c(2,5,8,12,16)

#Use seq() to make a vector of 100 values starting at 2 and increasing by 3 each time and store it in a new variable
a <- seq(2,100, 3)

#Extract the values at positions 5,10,15 and 20 in the vector of 100 values you made
a[seq(5,20, 5)]

#Extract the values at positions 10 to 30 in the vector of 100 values you made
a[seq(10,30)]

#Enter the following into a vector with the name mouse_colour. Remember to surround each piece of text with quotes: purple, red, yellow, brown
mouse_colour <- c('purple', 'red', 'yellow', 'brown')

#Enter the following into a vector with the name mouse_weight: 23, 21, 18, 16
mouse_weight <- c(23, 21, 18, 16)

#Join the 2 vectors together using the data.frame function to make a data frame named mouse_info with 2 columns and 4 rows. Call the first column ‘color’ and the second one ‘weight’
length(mouse_colour)
length(mouse_weight)
data.frame(color = mouse_colour, weight = mouse_weight)

#Read the file ‘small_file.txt’ [https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/small_file.txt] into a new data structure using read.table() OR read.delim(). Remember to assign a name to the data that you read in using the assignment operator
b <- read.table(file='https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/small_file.txt')

#View the data set to check that it has imported correctly
print(b)

#Read the file ‘Child_Variants.csv’ [https://github.com/HackBio-Internship/public_datasets/blob/main/R/Child_Variants.csv?raw=true] into a new data. This is a comma-separated file so you should use read.csv(). Again, remember to assign a name to the data when you import it
c <- read.csv(file = 'https://github.com/HackBio-Internship/public_datasets/blob/main/R/Child_Variants.csv?raw=true')

#Use head and View to look at the data set to check that it has imported correctly.
c <- read.csv(file = 'https://github.com/HackBio-Internship/public_datasets/blob/main/R/Child_Variants.csv?raw=true', header=TRUE)
print(c)

#Calculate the mean of the column named MutantReadPercent. Think about how you are going to access a single column first (probably by using the $ notation or [] notation), then once you can access the data pass it to the mean function
mean(c$MutantReadPercent)

#Create a filtered version of the child variants dataset that only includes rows where the MutantReadPercent is >=70 using subset() function or the [] notation
d <- subset(c, MutantReadPercent>=70, select = c(MutantReadPercent))
print(d)


#Visualization
#Search google for the “`Iris flower dataset`”. You are searching for the dataset because we want you to learn on how to search for datasets yourself.
iris
View(iris)

#Plot a graph of sepal length against sepal width
plot(x = iris$Sepal.Width, y = iris$Sepal.Length, col = 'black', pch = 21, bg = 'seagreen', main = 'Sepal length Vs Sepal width', xlab = 'Sepal Width', ylab = 'Sepal Length')
plot(iris$Sepal.Width, iris$Sepal.Length, xlim = c(0, 7), ylim = c(0, 9), col = factor(iris$Species), pch = 19, main = 'Sepal length Vs Sepal width', xlab = 'Sepal Width', ylab = 'Sepal Length')
legend('topright', legend = levels(iris$Species), col = 1:3, pch = 19, cex < 1)

#Plot a graph of petal length against petal width
plot(x = iris$Petal.Width, y = iris$Petal.Length, col = 'black', pch = 21, bg = 'seagreen', main = 'Petal length Vs Petal width', xlab = 'Petal Width', ylab = 'Petal Length')
plot(iris$Petal.Width, iris$Petal.Length, xlim = c(0, 4), ylim = c(0, 9), col = factor(iris$Species), pch = 19, main = 'Petal length Vs Petal width', xlab = 'Petal Width', ylab = 'Petal Length')
legend('topright', legend = levels(iris$Species), col = 1:3, pch = 19, cex < 1)

#In base R you can create a pairwise correlation plot with the pairs function. Note that this is the same as plotting a numeric data frame with plot.
# Numeric variables
df <- iris[1:4]
pairs(df)

# Equivalent to:
pairs(~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = df)

# Equivalent to:
with(df, pairs(~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width))

# Equivalent to:
plot(df)

#There are several arguments that can be used to customize the resulting output. The following block of code highlights and describes some of the most relevant arguments. Type ?pairs for the full list.
pairs(df,       # Data
      pch = 19, # Pch symbol
      col = 4,  # Color
      main = "Iris flower species correlation",    # Title
      gap = 0,           # Subplots distance
      row1attop = FALSE, # Diagonal direction
      labels = colnames(df), # Labels
      cex.labels = 0.8,  # Size of diagonal texts
      font.labels = 1)   # Font style of diagonal texts
      
#The color scheme can be customized so each group of your data set can be colorized on a different color. For that purpose you can index your grouping variable to a color palette.
# Groups
species <- iris[, 5]

# Number of groups
l <- length(unique(species))
pairs(df, col = factor(iris$Species))

#Note that some pch symbols allow you to set a background and a border color as in the following example.
pairs(df, pch = 19, main = "Iris flower species correlation plot", col = factor(iris$Species))

#Answers to questions asked
#Answer 1: Versicolor has the shortest sepal width but not the longest sepal length, since Virginica does.
#Answer 2: Setosa has the shortest sepal length and the longest width.
#Answer 3: Setosa has the shortest petal length and petal width.
#Answer 4: Virginica has the longest petal length and petal width.
#Answer 5: From the scatter plot, we see a good correlation between the following: Sepal length and Petal length, Sepal length and Petal width, Petal length and Petal width
