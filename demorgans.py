# -*- coding: utf-8 -*-
"""
Created on Thu Jan 14 19:49:58 2021

@author: Ebrain
"""

a = int(input("Enter a number: "))
b = int(input("Enter another number: "))

if not(not a > 0 or not b > 0): #if a and b are positive
    x = 0
elif a > 0: #only a is positive
    x = 1
elif b > 0: #only b is positive
    x = -1
else:
    x = 2 # both a and b are negative numbers
        
print(x)
    