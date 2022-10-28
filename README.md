
# Big Data - City-Cycle Fuel Consumption Analysis (CMP3749M_Assessment_01)


## Overview

Analyse of city-cycle fuel consumption in miles per gallon in terms of a number of attributes using linear regression and statistical analysis techniques.
   
   
## Summary of Implementation
### Data Loading and Pre-Processing

The MATLAB script ‘readandload.m’ is used to read the data from the dataset and load it into memory. The dataset takes the form of a .cvs file format as this supports the use of the ‘fopen’ and ‘fscaf’ built-in functions. As ‘fscaf’ adds the data to a 1x18532 linear character array, it is required to be split into the appropriate rows and columns. A format for how the data is split is specified, which isvafter every comma value as well as every new-line value. This creates a 1x3664 linear cell array
which is still not in the required size.

As the values are being split after each new line, this caused one additional blank value at the end of the array, which needs to be removed. Now the 1x3363 cell array could be reshaped into the correct format of a 9x407 matrix, which finally was transposed into the correct orientation.

The size of the imported and finished dataset is nine rows by four-hundred and seven columns
(407x9). The number of rows and columns is the exact same as that of the original data file.

Once the data had been successfully imported into MATLAB, the data munging process began. There were 8 NaN values in the MPG column and 6 NaN values in the horsepower column; this was found by using the ‘isnan’ function for each location where there was no value, and these got replaced by the value of 0. This allowed the column to be summed without difficulty to calculate the mean of the column to replace these values.

It was decided to replace these values with the mean as this has far more significance than just removing the values. Mean imputation was performed on the appropriate columns to create a full dataset ready for analysis. Once the sum of each column was calculated, the number of values is required to be found, excluding those NaN values. This was achieved by counting the number of NaN’s in the column and taking this away from the total number of rows that are usually found, which is then used as the divisor. If the mean were later required, it would need to be re-calculated based on this new completed dataset.


### Statistical Analysis and Data Visualisation

To calculate the mean for the various required variables, the same technique is used as when mean imputation was performed, the difference being there are no blank values, so there is a set amount (406) of columns to be the divisor. The dataset is split into each individual column and stored as a new variable, which excluded the header as this would incorrectly calculate the mean.

In order to find the median, minimum, and maximum values, the dataset needs to be sorted from the smallest value up to the largest value. This has to be done on each column as if it is sorted by one column; this does not guarantee that a different column will also be sorted correctly. A bubble-sort technique was used to fulfil this. The number of elements in the initial unsorted array are first counted to initialise the for loop. It begins by comparing the values in the first and second locations; if the value in the first position is less than that in the second, those values are swapped using a temp variable, and the loop begins again. This is repeated until the array can be sorted through with all the smaller values being greater than the ones below them.

Once the bubble-sort for all the appropriate variables has been complete, the median, minimum, and maximum are calculated. Both the minimum and maximum values could be found by simply accessing the first and last values in the array. The first being simply ‘.col1(1)’, and the last being found using the length of the vector as this would equal the required value. The median value of each variable is found by firstly acquiring the total number of elements using ‘length’ plus one. Both ‘floor’ and ‘ceil’ functions are used in the calculation for median; using this equation allows the median to be found for both an even and odd amount of dataset values, which allows other datasets to be imported and used without using hard-coded formulae. This works as if there is an even number of total values the half-value would be a non-integer, so using ‘floor’ would round down and ‘ceil’ up. The average is then found of these two middle values once they have been found. In the case of an odd number, this value is an integer; therefore, the two functions will not change this value, and the median is calculated as intended.

The final statistic to be found was the standard deviation of each variable. The standard method of finding this value involves finding the square distance between each number in the dataset from the mean. In code form, this is represented as a for loop, looping through all the values in the variables column and taking away the mean from each. All of these new values are then raised to the element-wise power, meaning each of them is individually multiplied by itself. This newly formed column is then summed in a for loop to acquire the sum of the squared distances. Finally, this single value needs to be divided by the total number of elements from the previous column, achieved by taking ‘length’ of the array and square rooting.

Once all the required statistical values have been found, a table is constructed consisting of all the found values. The ‘table’ function is used to create this and host all the values and a new variable called ‘Variable’ holding the headings of each column. This is stored in memory as a 4x6 table variable, which can be called and displayed within the command window.


### Regression Analysis

The first step, before regression analysis can begin, is to shuffle the data. This is done before splitting that data, as splitting beforehand will introduce bias into the dataset as there will always be the same values in training and testing; hence it will not be random. Beginning with using the built-in ‘randi’ function to generate a random number between zero and the dataset's current max size. This randomly selected array value corresponds with a value in each of the columns, which then gets added into the new shuffled columns for each variable. After it has been added to the new column, it must be removed from the old column; otherwise, there would be a chance for rows to be added multiple times.

Secondly, the data needs to be split. Requirements are that the shuffled data needs to be split into 70% and 30% testing. In order to attain this goal, the total size of the original dataset, excluding the heading, is multiplied by 0.7 as well as 0.3 to get the respective sizes. This is then rounded to a whole number to be used in later functions. In these next functions, a for loop is created that will be looped through the shuffled data 284 times to get training data. This is repeated for the testing data, starting with the training size plus one to ensure the value at position 284 does not get added to both split datasets. Doing so provides 284 values for training and 122 for testing, which are randomly shuffled every time the code is ran.

Linear regression is the process used when a user wishes to predict the value of a variable based (y) based on another known variable (x). The x value in this context is the independent variable. To begin, the mean of new datasets is calculated using the same mean method as previously stated.

Secondly, Sxy and Sxx values are required. In general, the Sxx value is simply the sum of the squares of the difference between the x value and the mean. The Sxy value is found by performing the difference between x and the mean, as well as the difference between y and the mean, and multiplying these values for every value in the dataset.

The next step in linear regression is to work out the equation of y=w0 + w1x. w0 and w1 are the weights that will be used in the formula to predict the desired variable. The W1 equation is found by simply dividing Sxy by Sxx. w0 is found by rearranging the original linear regression equation to make w0 the subject and using the means for both x and y (Figure 20). Once these two values have been found, they are put into the linear regression equation, and from there, any values for x can be substituted in, and this will output the predicted y values for each. For the data being used, this would mean the acceleration values are put in for x and predicted values for MPG would come as a result. If a scatter graph is created showing the original acceleration vs. MPG and the new predicted values for
MPG, it can be seen that the linear regression line is going through the centre of the data set, and each individual data points has a predicted value for MPG.

After the linear regression model is created, it needs to be evaluated. One method to achieve this is to calculate the mean squared error for the model. A comparison is conducted between each original data point and the points plotted on the new line created. The distance between these is found, which is also called a residual. These distances then need to be squared, which was accomplished in code by utilising a for loop and squaring each of these distances. Once each distance was squared, these values are called the sum of squares of error, which can easily be turned into the mean squared error by dividing by the total number of data points, found by using ‘length’ of just the training data.
