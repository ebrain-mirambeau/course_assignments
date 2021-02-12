# -*- coding: utf-8 -*-
"""
Created on Sun Jan 31 07:25:51 2021

@author: Ebrain
"""

#The following function encrypts a string
def cipher(string):
    newString = ""
    for character in string:
        newString += chr(ord(string[0])+ord(character))
    return newString

#The following function decrypts a string
def decipher(string):
    oldString = ""
    firstLetter = int(ord(string[0])/2) #gets first character of old string
    for character in string:
        oldString += chr(ord(character)-firstLetter)
    return oldString
    
def main():
    s = input("Please enter a string: ")
    cipherString = cipher(s)
    decipherString = decipher(cipherString)
    print(cipherString)
    print(decipherString)

main()