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
    
    func fizzBuzz(n: Int) -> [String] {
        var resultList = [String]()
        
        for i in 1...n {
            if i % 15 == 0 {
                resultList.append("FizzBuzz")
            } else if i % 3 == 0 {
                resultList.append("Fizz")
            } else if i % 5 == 0 {
                resultList.append("Buzz")
            } else {
                resultList.append(String(i))
            }
        }
        return resultList
    }
    
}
