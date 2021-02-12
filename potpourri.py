# -*- coding: utf-8 -*-
"""
Created on Thu Feb  4 23:37:40 2021

@author: Ebrain
"""

#The following function takes a word and shifts each character by 3 units
def function(word):
    wordList = []
    
    for character in word:
        wordList.append(chr(ord(character)+3))
    wordList.sort()
    
    return wordList

def main():
    w = input("Please enter a word: ")
    output = function(w)
    
    print(output)
    
main()