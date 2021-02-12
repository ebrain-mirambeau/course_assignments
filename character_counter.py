# -*- coding: utf-8 -*-
"""
Created on Sun Jan 31 22:12:09 2021

@author: Ebrain
"""

#The following function counts the number of given characters in a string
def search(ch, string):
    counter = 0
    for character in string:
        if character == ch:
            counter += 1
    return counter

def main():
    character = input("Enter a character: ")
    string = input("Enter a string: ")
    
    print(search(character, string))
    
main()