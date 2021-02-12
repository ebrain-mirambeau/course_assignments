# -*- coding: utf-8 -*-
"""
Created on Thu Feb 11 22:52:27 2021

@author: Ebrain
"""

def main():
    total = int(input("Please enter a number: "))
    try:
        print("There are " + total + " little pigs")
    except TypeError:
        print("Cannot concatenate numbers and strings")
    

main()