#Earth and Environmental Data Analysis
#================

#Lab 1
#----------

#Before you start. Fill out this form!
#http://goo.gl/forms/At6GoW6CKr


###Introduction to R, 1

#Section 1
#=======
#Playing with subsetting
#---------

#In class we assigned numbers to variables, but you can assign letters, or series of letters as well (we call these "strings")
#e.g., 
a="p"
b="i"
c="g"

#1. try it yourself : spell out an animal that is at least six letters long.


#2. Now, you have a bunch of letters stored in their own variables, what if you want to assign this into a single variable that has it's own word?
#use the function "c" to concatenate this into a word e.g. c(a,b,c), and assign this into a variable called "animal"


#3. OK, now subset animal. Grab the first three letters, then the last three, then letters 4 , 6 and 2, in that order.


#what happens if you enter animal[-1]? Or animal[-4]? Given this, what do negative indices mean?

#4. lastly, write a command that subsets your animal to create a new word (may not be possible with all animals)


#Section 2
#=======
#Now let's do some science
#---------


#Load in your data set
#install.packages("tidyverse")
library("tidyverse")
dat=read_csv("/Users/npm4/Dropbox/Teaching/EEDA/S17/Lab01/MonthlyGlobalTemperature.csv") #Don't forget to assign it to a variable!


#How big is your dataset? How many rows and columns?


#What do the rows and columns represent? (Do they have names?)



#It doesn't really make sense to keep one of these columns in the data table, let's assign that column to it's own variable, named appropriately


#and the rest of the table to a different variable. Also named appropriately.


#OK - now write code to answer these questions:

#1 What was the temperature in September of 1941?


#2a. What's the warmest temperature ever recorded in February?


#2b. In which year was that warm February recorded? (hint:, use "which")


#3. What was the median monthly temperature in 1976?


#4. Given these data, calculate mean monthly temperature (for all months), and then plot them, with appropriate axis labels (ALWAYS!)


#5. Calculate and plot Annual mean temperature from 1850-2015


#6. Plot a histogram of NH summer (average June, July and August) temperatures.


#7a. Plot a box plot of monthly temperature. Which month has the biggest spread in temperature?

#7b. Calculate the standard deviations of all monthly temperatures. Does this result agree with your answer to the previous question?

#7c. Bonus challenge: Explain why (in terms of Earth Science), you got the answer you got in question 7



