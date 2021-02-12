# -*- coding: utf-8 -*-
"""
Created on Sun Jan 17 00:10:37 2021

@author: Ebrain
"""

#function that converts fahrenheit (float) to celsisus (float)
#(x°F − 32) × 5/9
def fahrenheit_to_celsius(x):
    conversion = ((x - 32) * 5)/9
    return conversion

#function that converts miles per hour to miles (float) per second (float)
#1 mph = 0.44704 m/s
def miles_per_hour_to_meters_per_second(x):
    conversion = x * 0.44704
    return conversion

#main function calls either previously define function depending on input
def main():
    print("Enter 1 to convert Fahrenheit temperature to Celsius: /n") 
    print("Enter 2 to convert speed from miles per hour to meters per second: ")
    x = input()
    
    if x == "1":
        f = float(input("Enter a temperature in fahrenheit: " ))
        print(fahrenheit_to_celsius(f))
    elif x == "2":
        mph = float(input("Enter a rate of speed in miles per hour: "))
        print(miles_per_hour_to_meters_per_second(mph))
    else:
        print("Incorrect input")
 
main()