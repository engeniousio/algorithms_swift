//
//  FizzBuzz.swift
//  Algos
//
//  Created by Natalia Popova on 5/4/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation

class FizzBuzz {
    
    //Write a program that outputs the string representation of numbers from 1 to n.
    //But for multiples of three it should output “Fizz” instead of the number and for the
    // multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.
    
    func fizzBuzz(num: Int) -> [String] {
        var resultList = [String]()
        
        for number in 1...num {
            if number % 15 == 0 {
                resultList.append("FizzBuzz")
            } else if number % 3 == 0 {
                resultList.append("Fizz")
            } else if number % 5 == 0 {
                resultList.append("Buzz")
            } else {
                resultList.append(String(number))
            }
        }
        return resultList
    }
    
}
