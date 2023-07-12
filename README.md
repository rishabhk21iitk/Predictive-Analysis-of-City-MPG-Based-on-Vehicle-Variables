# Predictive-Analysis-of-City-MPG-Based-on-Vehicle-Variables
Prediction of fuel consumption and residuals using linear regression over different models 
The problem Statement was:
The objective of this exercise is to analyze and predict
“city miles per gallon” based on variables which are known to influence vehicle mileage. Consider
the data in file “CarsFinal.xls” and label the variables as,
x2 = weight, x3 = hrspwr, x4 = engsize, x5 = cylinders, x6 = wheelbase, x7 = sports, x8 = suv,
x9 = wagon, x10 = van, x11 = truck, x12 = awd, x13 = rearwd, x14 = hrspwr∗ cylinders.

Note: Please add an intercept to all the models i.e. x1 will be a column of ones

(a) Give a summary of the data i.e. compute the mean, standard deviation, minimum and
maximum for all the numeric variables in the data.

(b) Regress car mileage (i.e., cityMPG) on intercept, weight, horse power, engine size, cylinders,
wheel base, car type with sedan as the base category, drive type with front wheel drive as
the base category and interaction, hrspwr×cylinders. Report the results i.e., the estimated
coefficients, standard errors and t-statistics. Also, report the R2.

(c) Make a scatter plot with fitted values on the x-axis and residuals on the x axis. What do you
observe? Is there any assumption of classical linear regression that appears to be violated?

(d) In the literature, inverse of car mileage (i.e. gallon per miles) is known as “Fuel Consumption”
and is a more direct measure of fuel efficiency. Take the inverse of cityMPG and label it
“fuelcons”. Regress fuelcons on x1, x2, x3 and x4. Print the estimates, standard errors,
t-stats and model r-square. Are all the coefficients significant? Make a scatter plot of fitted
values and residuals. Has the transformation of the dependent variable alleviated the problem
faced in part(c)?

(e) Regress fuelcons on x1, x2, x3, x4, x5 and x6. Print the estimates, standard errors, t-stats
and model r-square. Are all the coefficients significant? Make a scatter plot of fitted values
and residuals.

(f) Regress fuelcons on x1, x2, x3, x4, x5, x6, x7, x8, x9, x10 and x11. Print the estimates,
standard errors, t-stats and model r-square. Are all the coefficients significant? Interpret the
coefficient for dummy variables. Make a scatter plot of fitted values and residuals.

(g) Regress fuelcons on x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13 and x14. Print
the estimates, standard errors, t-stats and model r-square. What is the marginal effect of
increasing x3 by one unit? Interpret the marginal effect with respect to the context.
