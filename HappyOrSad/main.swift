//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

//Input

//Loop forever until valid input is given.
var validInput = ""
while 1 == 1 {
 
    // Make sure input was given (creat a string from the string?)
    guard let input = readLine() else {
        
        // Tell the user there was a problem
        print("Please enter a string with at least 1 character and no more than 255 characters.")
        // Go to next iteration of the loop
        continue
    }
    
    // Is the string the correct length?
    if input.count < 1 || input.count > 255 {
        
        // Tell the user there was a problem
        print("Please enter a string with at least 1 character and no more than 255 characters.")
        // Go to next iteration of the loop
        continue
        
    }
    
    // If we got this far the input ig=s guaranteed to be valid
    validInput = input
    break // Very important. Stops while loop
    
}


// Get the user input
var rawInput = readLine()



// Print out the input provided
//print("You said:")
//print(rawInput) // optional string
//print(input) // non-optional

// number of happy and sad
var numberHappy = 0
var numberSad = 0

// Process - inspect each character
for individualCharacter in validInput {
 
    // Debug
    //print(individualCharacter)
    
    
    //Categorize the character
    
    switch individualCharacter{
    case "😃", "😊", "🙂", "😄":
        numberHappy += 1
    case "☹️", "🙁", "😕", "😔":
        numberSad += 1
    default:
            break // do nothing
        
    }
}

if numberHappy > numberSad {
    print("happy")
} else if numberSad > numberHappy {
    print("sad")
} else if numberHappy == numberSad && numberSad != 0 {
    print("unsure")
} else if numberSad == 0 && numberHappy == 0 {
}


// Output
// Tell the user "happy", "sad", or "unsure" based on counts above
