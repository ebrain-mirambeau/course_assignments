# -*- coding: utf-8 -*-
"""
Created on Sun Jan 24 21:19:19 2021

@author: Ebrain
"""

#The following function computes the factorial of a number

def factorial(n):
    product = 1
    if n == 0:
        return 0
    elif n > 0:
        while n > 0:
            product *= n
            n -= 1
        return product
    else:
        return -1

def main():
    output = int(input("Enter a number: "))
    print(factorial(output))

main()

    