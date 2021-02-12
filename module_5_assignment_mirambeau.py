# -*- coding: utf-8 -*-
"""
Created on Thu Jan 21 09:54:22 2021

@author: Ebrain
"""

counter = 1

def verify_user(userID, password):
    uid = "1234567"
    pwd = "abc123"
    global counter
    
    if counter == 4:
        print("Good bye\n")
    elif userID == uid and password == pwd:
        print("Welcome to O'Reilly Auto Parts Portal\n")
    else:
        print("Incorrect attempt ", counter, "of 3\n")
        counter += 1
    
    
def main():
    print("Enter 1 to login")      
    print("Enter 2 to see About Page")  
    print("Enter 3 to end")
    
    choice = int(input("Make a choice: "))
    
    if (choice == 1):
        userID = input("Enter user ID: ")
        password = input("Enter user password: ")
        verify_user(userID, password)
        main()
    
    elif (choice == 2):
        print("O’Reilly Auto Parts is an American auto parts retailer that") 
        print("provides automotive aftermarket parts, tools, supplies, equipment,")
        print("and accessories in the United States serving both the professional") 
        print("service providers and do-it-yourself customers.\n")
        main()
    
    elif (choice == 3):
        print("Good bye")
    
    else:
        print("Invalid choice")
        main()
        
main()