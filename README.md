# MechaCar Statistical Analysis Project

***Version 1.0.0***

---

#### During this project we were requested to help data analytics team of Autocross' in a special project. This special project has as objective to analyze the data from the production team to help the manufacturers to progress in their production. 

#### On this assignment we will deliver the following tasks:
- Multiple linear regression analysis
- Summary statistics on PSI of suspension coils
- Run t-tests to the manufacturing lots
- Deliver a design of a statistical study

#### This information will have their own results and will be displayed at each category from the bottom of the README.

## Linear Regression to Predict MPG
### Summary for linear regression
#### Analyzing the data from MechaCar csv, we realized we had some independent continuous variables that might affect MPG as a dependent continuous variable, giving that we have all data as a continuous data, the selected study to perform is a linear regression.

#### As you can see on the first image below, I plotted all independent variables (Vehicle Length, Vehicle Weight, Spoiler Angle, Ground Clearance & AWD) against the dependent variable (MGP) and we see that the relationship against dependent variable and the explanatory variables is approximately linear on the second image tells us that is also normal.

<img src="https://github.com/SeRoGaTa/MechaCar_Statistical_Analysis/blob/main/Resources/mpg_regression_plot.png" width="400"> <img src="https://github.com/SeRoGaTa/MechaCar_Statistical_Analysis/blob/main/Resources/Residuals_plot.png" width="400">

#### On the following image, you can see our R-squared is 0.71 which means that the 71% of the MPG can be explained with this model. 
<img src="https://github.com/SeRoGaTa/MechaCar_Statistical_Analysis/blob/main/Resources/Multi_linear_regression.png" width="600">

#### Having as a premises that our null hypothesis is that the independent variables isn't statistically significant to MPG dependent variable.

#### With the information above, we can now answer the following doubts:

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - Tacking the .05 of significance level as a benchmark and with the results seen on the image above, we can deduce that the Vehicle Length, Vehicle Weight, and the Ground Clearance have statistical significance so they will give us a non-random result to the MPG values or dependent variable, with this said, the rest of the independent variables like Spoiler Angle and AWD have random amount of variance to the MPG variable.

- Is the slope of the linear model considered to be zero? Why or why not?
  - Isn't considered zero, we have an overall p-value of 5.35*e^-11 which tell us that we have statistically significance data to reject our null hypothesis.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - Yes, as said above the last image, we have a 71% of chance that this model will effectively predict the MPG.

## Summary Statistics on Suspension Coils
### Summary for Mean, Median, Variance and Standard Deviation dataframes
#### Given the dataset of Suspension Coils, we had to make some statistical analysis to the PSI of the coils with different manufacturing lots, we had to see if the results remain consistent across different manufacturing lots.

#### As you can see in the following images, we first analyze the complete population of data with the statistical values and then we split those statistical values thru the different manufacturing lots to see how this variate between them.

<img src="https://github.com/SeRoGaTa/MechaCar_Statistical_Analysis/blob/main/Resources/Coil_dataframe_summarized.png" width="400">
<img src="https://github.com/SeRoGaTa/MechaCar_Statistical_Analysis/blob/main/Resources/Coil_dataframe_summarized_bymanufacturer.png" width="550">

#### With this information we now can explain the following questions:
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  - When we analyze the complete population, we are within the ranges allowed for the PSI as you can see in the first table with less than 100 of variance in the data. But, once we get into the split of the manufacturing lots, we see that the Lot3 has significantly greater variance than the limits specified by MechaCar, so that lot won't meet the specifications due to its 170 PSI in variance.

## T-Tests on Suspension Coils
### Summary for t-test results
#### As a support of the data shown above, we had to perform some t-test to the suspension coils data to determine if the manufacturing lots are statistically different from the population mean of 1500 PSI.

<img src="https://github.com/SeRoGaTa/MechaCar_Statistical_Analysis/blob/main/Resources/t-test_allpopulation.png" width="400">
<img src="https://github.com/SeRoGaTa/MechaCar_Statistical_Analysis/blob/main/Resources/t-test_bymanufacturinglot.png" width="550">

#### Given the null hypothesis of suspension coils population mean's PSI is 1500 PSI, we can see in the first image above that the p-value is .06 which tell us that the result is not significantly, so we must accept the null hypothesis. As an additional information, we split the data into lots and got the p-values from all the lots, as we can see in the second image from above, just the last lot is smaller than our significance level of .05 or 95% so this one is the only one that will accept the alternative hypothesis which means the mean of that lot isn't equal to 1500 PSI.

## Study Design: MechaCar vs Competition
### Summary for Statistical Study
#### With all the features the cars are getting installed lately, the overall cost, maintenance cost and the repair cost is getting quite significant to have big sell numbers so we will analyze how these metrics affect the selling units.

- What metric or metrics are you going to test?
  -  Our metrics to evaluate are the different type of cost you have when you buy a car like the overall price, maintenance cost and the mean repair cost when an accident happened, and they will be analyzed against the selling units by brand.
- What is the null hypothesis or alternative hypothesis?
  - The null hypothesis I'm proposing for these metrics is Ho: When the mean of the overall price, maintenance and repair costs per brand is higher directly reduces the car sells units.
- What statistical test would you use to test the hypothesis? And why?
  - Given that all our independent variables and the dependent are continuous, our best statistical test is to have multiple linear regression study so we can see if all these dependent variables directly affect the car units sells.
- What data is needed to run the statistical test?
  - The data you will need to perform these tests are the overall prices for each car model by brand which could be obtained from the dealers as well as the maintenance costs for the first 5 and 10 years of the cars by brand and finally the mean cost to repair a 5-year-old and less car could be obtained from the certified shops by brand. Besides the mean cost to repair, all the overall price and maintenance costs will be narrow to the 2021 model cars and the repair costs will be from 5 years and below.

#### This study could help the brand to compare their prices and average costs against their competitors and if those really impact their sells of units, with this we could help increase sells by the modification of these costs.


#### You can locate the complete analysis Rscript on the following link [MechaCar_Statistical_Analysis](https://github.com/SeRoGaTa/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R) and all image used in the following folder [Resources](https://github.com/SeRoGaTa/MechaCar_Statistical_Analysis/tree/main/Resources)

