#Welcome to Earth and Environmental Data Analysis!
#================

#Week 1, Class 1
#----------

###Introduction to R, 1


#Section 1 - R is a calculator

5+6

#R can also store things as **variables**

rememberThis=5+6

print(rememberThis)

# and then work with those variables as if they were numbers

newAnswer=rememberThis*3

print(newAnswer)

#So what are those hashtags for?
#comment, comment comment!

#R has a lot of other use, than just a calculator.

#Let's load in some data
testData=read.csv("Week01/chickWeights.csv") #Don't forget to assign it to a variable!

#now let's look at the first few rows
head(testData)

#let's learn a bit about the data we loaded in
class(testData)#what type of data is this? (In R-Speak)

dim(testData)# what are it's dimensions?

#Indexing - how can we extract the values we want?
#R indexes with square brackets "[" 
#in a matrix, it goes, rows,columns
#so the value from row 17 and column 45 is:
testData[3,2]

#what if we want group of data?
testData[2:4,3:5]

#what does that colon do?
5:10

#how about other sequences?
#try the seq function
?seq
seq(1,10,by = 2)


#what if you want a weird selection of data?
#use the c function (combine)
testData[c(2,1,3,4),2]


#what if you want all the columns or rows with a selection?
#leave it blank?
testData[2,]


#data.frames often have names, especially for their columns
#picture an excel worksheet

colnames(testData)
rownames(testData)


#OK, now let's explore this dataset a bit
# how do you find the maximum value in the 7th row?

max(testData[7,])

#the minimum value in the 3rd column?

min(testData[,3])


#how about the median of all the columns?

#the apply function
?apply

medians=apply(testData,2,median)

#which feed type had the largest median?
#the which function
?which

#Booleans
5==5
3<2

# 
largestColumn=which(medians==max(medians))
colnames(testData)[largestColumn]

#plotting
#lets take a look at the distribution of weights for chicks that ate sunflower


hist(testData$sunflower)

#with better labels

hist(testData$sunflower,xlab="Weight (g)",ylab="Number of chicks",main="Weight distribution among chicks that ate sunflower seeds")


# how about a line plot?

plot(testData$casein,type="l")

#and a box plot?

boxplot(testData[,-1],xlab="Feed",ylab="Weight (g)",main="Chick weights")



