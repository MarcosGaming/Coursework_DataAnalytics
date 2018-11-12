# Useful commands for working with dataframes

# Author : P. Chapman

# Year : 2018

 
# Dataframes are the standard way of looking at data in R. They are like tables/matrices, but have some additional functionality.

# Most of the time, you create them by reading in a csv file. Make sure you have downloaded the following csv file, and have
# pointed R at the correct folder. You can do that by setting the working directory: 
# in R-Studio click Session --> Set Working Directory --> To Source File Directory.

data <- read.csv(file="example.csv")

# Note that the file= part can be omitted, but will not hurt either.

# We can look at the data either by doubling clicking on it in the Environment panel (top right in R-studio), or by typing the
# name of the variable, in this case data, in the console.

# We might want to only show parts of the dataframe. The syntax for doing this is data[X,Y] where, if X is blank, all ROWS are shown,
# and if Y is blank, all COLUMNS are shown. i.e. data[,] will just return data. Below we will see examples of what else can be done.
# To check it works as expected, type the name of the variable into the console, or double click on the name in the Environment panel.

# CALL BY REFERENCE

# 1- Show only the first columns. The syntax is 

data1 <- data[,1]

# 2- Show only the second row. The syntax is

data2 <- data[2,]

# 3- Show whatever is in row 4, column 3. The syntax is

data3 <- data[4,3]

# 4- Show the first six rows. The syntax is

data4 <- data[1:6,]

# 5- Show the middle two columns. The syntax is

data5 <- data[,2:3]

# 6- Show the middle two columns for the first six rows. The syntax is

data6 <- data[1:6,2:3]

# 7- Show everything EXCEPT this fifth row. The syntax is

data7 <- data[-5,]

# 8- Show everything EXCEPT things in the tenth row and third column

data8 <- data[-10,-3]

# 9- Show everything except what is in the rows 4 to 8

data9 <- data[-(4:8),]



# CALL BY VALUE

# 10- Show every entry where type is W. The dollar sign refers to a column name

data10 <- data[data$Type=="W",]

# 11- Show every entry where type is W or D

data11 <- data[data$Type == "W" | data$Type == "D",]

# 12- Show every entry where num1 is greater than 40

data12 <- data[data$num1 > 40,]

# 13- Show every entry where num1 is less than 50 and num2 is greater than 60. 

data13 <- data[data$num1 < 50 & data$num2 > 60,]

# 14- Show every entry where type is NOT S

data14 <- data[data$Type != "S",]



# NESTING

# 15- you can split complicated commands into stages. For example, look at data13 again. We could instead do this by

data15 <- data[data$num2 > 60,]
data16 <- data15[data15$num1 < 50,]

# data16 and data13 are identical

