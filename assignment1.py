# -*- coding: utf-8 -*-
"""
Created on Mon Jan 11 09:54:47 2021

@author: Ebrain
Purpose: Calculating tuition amounts over four years
"""

firstYear = 0
secondYear = 0
thirdYear = 0
fourthYear = 0
totalTuitionAmount = 0

#User will enter first year tuition amount
firstYear = int(input("Please enter first year tuition amount "))

#User will enter the annual increase of the tuition in a fraction format
tuitionIncrease = float(input("Please enter tuition increase in fraction format "))

#Year 1 tuition is output
print("First year tuition is " + str(firstYear))

#Second year tuition is calculated and output
secondYear = (firstYear * tuitionIncrease) + firstYear
print("Second year tuition is " + str(secondYear))

#Third year tuition is calculated and output
thirdYear = (secondYear * tuitionIncrease) + secondYear
print("Third year tuition is " + str(thirdYear))

#Fourth year tuition is calculated and output
fourthYear = (thirdYear * tuitionIncrease) + thirdYear
print("Fourth year tuition is " + str(fourthYear))

#Total tuition for all four years is output
totalTuitionAmount = firstYear + secondYear + thirdYear + fourthYear
print("Total tuition amount is " + str(totalTuitionAmount))