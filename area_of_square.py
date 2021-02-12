# -*- coding: utf-8 -*-
"""
Created on Thu Jan 21 21:18:54 2021

@author: Ebrain
The purpose of this function is calculate the area of a square,
given one of its sides.
"""

def calculate_area_of_square(side):
    if side > 0:
        return (side * side)
    else:
        print("Invalid input ")
        return (-1)
        
def main():
    s = 0
    s = int(input("Enter a positive number: "))
    print(calculate_area_of_square(s))
    
main()
        
        
