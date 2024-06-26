# Simple operation
## This is how R does addition

12 + 10

## This is how R does subtraction

12 - 10

# This is how we store data as variables in R language.
# we will start by storing days of the week

days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday",
          "Sunday")

#let's find different entries in this stored value

days[1]
days[7]
days[5]
days[3]

#let's get a range of entries

days[1:6]
days[2:5]
days[1:4]

#let's get specific days in the range


days[c(1, 3, 5, 7)]

#let's create a subset of our existing range

weekdays <- days[1:5]

weekdays

print(weekdays)



#Functions
## f(argument1,_argument2...)
# F is the name of the function and the contents of the parenthesis
# are the conditions we are asking the function to evaluate

example_function <- function(x, y)

{
  c(x + 2, y + 15)
}

example_function(10, 20)

#There are built-in functions in R and some examples are shown below

log(20)
sin(20)
exp(20)
tan(20)
tan(2)
tan(200)


# Data structures
# Let's start with the array function and compare it with the
# simple list function.

months <- array(c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul",
                  "Aug", "Sep", "Oct", "Nov", "Dec"), dim = c(3, 4))

months

months1 <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul",
             "Aug", "Sep", "Oct", "Nov", "Dec")

months1

# Let's look at Matrix

months2 <- matrix(data = c("Jan", "Feb", "Mar", "Apr", "May", "Jun",
                           "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"),
                  ncol = 4, nrow = 3)

months2

#making a 3d array
array3d <- array(data = c(2, 4, 6, 8, 10, 12, 14, 16, 18, 20,
                          22, 24, 26, 28, 30, 32, 34, 36), dim = c(3, 3, 2))

array3d

print(array3d[2, 1, 2])



# To pull an entire row or column

print(array3d[1, , 2])

print(array3d[, 3, 2])


# Lists and Data Frames

HSAPA1A <- list(gene = "HSAPA1a", amino.acids = 641, nucleotides = 2400)

print(HSAPA1A)

HSAPA1A$amino.acids
HSAPA1A$gene
HSAPA1A$nucleotides

gene <- c("HSAPA4", "HSAPA5", "HSPA8", "HSPA9", "HSPA1A", "HSPA1B")
nucleotides <- c(54537, 6491, 4648, 21646, 2400, 2517)
aminoAcids <- c(840, 654, 493, 679, 641, 641)

HSPs <- data.frame(gene, nucleotides, aminoAcids)

HSPs

# Let's create three lists and combine into a data frame
names <- c("Frank", "Bisoye", "Farouk", "Pascal", "Uche", "Yomi")
biotechnology <- c(86, 70, 89, 91, 97, 72)
pharmacology <- c(80, 94, 67, 93, 98, 76)

Results <- data.frame(names, biotechnology, pharmacology)

print(Results)

# TO get a specific entry from the data frame
# In this example, I searched for what Uche got in pharmacology.
# That is, I searched for the Pharmacology score referencing name "Uche" in the Results Data frame
Results$pharmacology[Results$names == "Uche"]

Results$biotechnology[Results$names == "Bisoye"]


# Object Classes

class(HSPs$nucleotides)
class(HSPs$aminoAcids)
class(HSPs$gene)

x <- as.character(c(1, 4, 6, 8, 2 ,3))

print(x)

print(class(x))

#as.character, as.numeric, as.dataframe etc


names1 <- c("Daniel", "Edison", "Oge", "Isaac", "Precious", "Lucia")
pharmacology1 <- c(67, 81, 74, 70, 69, 81)
biotechnology2 <- c(81, 77, 84, 68, 69, 70)

results2 <-data.frame(names1, pharmacology1, biotechnology2)

results2$pharmacology1[results2$names1 == "Oge"]


# Models and Formulas

dataset <- iris

# this calls the first few data in the dataset. 
#it is useful for data that is very large such as gene length of 20,000 +

head(dataset)

tail(dataset)

# number of rows in our dataset
nrow(dataset)

# number of columns in our dataset

ncol(dataset)

#let's start with a simple linear model

petals.lm <- lm(formula = Petal.Length ~ Petal.Width, data = dataset)

petals.lm

summary(petals.lm)
# Charts and Graphs

names(iris)

hist(iris$Sepal.Length)



# let's increase the number of bins in the histogram

hist(iris$Sepal.Length, breaks = 25)

# let's add some more labels

hist(iris$Sepal.Length, breaks = 25, xlab = "Sepal length", main = "Sepal length frequency")

# let's create a plot
plot(iris$Sepal.Length ~ iris$Sepal.Width, xlab = "Sepal Length", ylab = "Sepal Width")

# let's call on the package lattice
library(lattice)

#let's use the lattice dataplot
dotplot(Sepal.Width ~ Sepal.Length | Species, data = iris)

dotplot(Petal.Length ~ Petal.Width|Species, data = dataset)















