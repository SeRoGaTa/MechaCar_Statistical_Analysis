library(jsonlite)
library(tidyverse)


#------First Deliverable--------
#Importing CSV to the script
mechacar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#Previsualize data
head(mechacar_table) 

#Ploting the independent variables to the dependent
attach(mechacar_table)
plot(mpg, vehicle_weight)
plot(mpg, vehicle_length)
plot(mpg, spoiler_angle)
plot(mpg, ground_clearance)
plot(mpg, AWD)

#Generate multiple linear regression model
mpg_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_table)
mpg_regression 

#Generate summary statistics
summary(mpg_regression)
plot(mpg_regression)

#Testing different regression 
mpg_regression_improoved <- lm(mpg ~ vehicle_length + ground_clearance,data=mechacar_table) #generate multiple linear regression model
mpg_regression_improoved
summary(mpg_regression_improoved) #generate summary statistics
plot(mpg_regression_improoved)

#------Second Deliverable--------

#Importing CSV to the script
suspension_coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #Importing CSV to the script
head(suspension_coil_table)

#Creating a summarized dataframe
total_summary <- suspension_coil_table %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
total_summary

#Grouping by manufacturer and summarizing values by manufacturer
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary

#------Third Deliverable--------

#Creating function of t.test to the complete population
t.test(suspension_coil_table$PSI,mu=1500)

#Creating functions of t.test to the three different manufacturing lots
t.test(subset(suspension_coil_table, Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(suspension_coil_table, Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(suspension_coil_table, Manufacturing_Lot=="Lot3")$PSI,mu=1500)
