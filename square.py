# -*- coding: utf-8 -*-
"""
Created on Fri Jan 29 00:51:31 2021

@author: Ebrain
"""

#The following function will print the visual representation of a square using asterisks

def square():
    side = int(input("Enter the length of a side of a square: "))
    for i in range(0, side):
        print()
        for j in range(0, side):
            print("* ", end="")
        

def main():
    square()
    
main()