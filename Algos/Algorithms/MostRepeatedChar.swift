//
//  MostRepeatedChar.swift
//  Algos
//
//  Created by Natalia Popova on 5/16/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

//        1. Input: What is the input parameter?
//        2. Output: What is the datatype of your answer that your function has to return?
//        3. What data structures and methods associated with it will be used?
//        4. Where are you going to store temporary data (if needed)?
//        5. Describe the model of your algorithm before implementing solution in code
//        6. Write unit tests for your solution -- think about edge cases
//        7. Runtime Complexity?
//        8. Memory Complexity?

import Foundation

// please find the most repeated character in string
class MostRepeatedChar {
    
    // init dictionary : [Character: Int]  -- character and corresponding number of occurrences
    // iterate through every char
    // look up if you have the char in your hashmap storage
    // if you don't have this char: insert to a hashmap with value: 1
    // if you do have this char: increment value

    func mostRepeatedChar(str: String) -> Character {
        guard !str.isEmpty else { return "0" }
        
        var result: [Character: Int] = [:]
        for char in str {
            if result[char] == nil {
                result[char] = 1
            } else {
                result[char]! += 1
            }
        }
        
        let maxValue = result.values.max()
        var winner = Character("*")
        for (key, value) in result where value == maxValue {
            winner = key
        }
        return winner
    }
}
