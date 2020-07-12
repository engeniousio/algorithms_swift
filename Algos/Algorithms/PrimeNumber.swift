//
//  PrimeNumber.swift
//  Algos
//
//  Created by Natalia Popova on 6/6/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation

//        1. Input: What is the input parameter?
//        2. Output: What is the datatype of your answer that your function has to return?
//        3. What data structures and methods associated with it will be used?
//        4. Where are you going to store temporary data (if needed)?
//        5. Describe the model of your algorithm before implementing solution in code
//        6. Write unit tests for your solution -- think about edge cases
//        7. Runtime Complexity?
//        8. Memory Complexity?
class PrimeNumber {

    // 15 => 5 * 3
    // 17 => 1,17 ==> prime

    func isPrime(_ num: Int) -> Bool {
        if num < 2 {
            return false
        }
        var number = 2
        for i in 2..<(number * number) where (number * number) < num {
            if num % i == 0 {
                return false
            }
            number += 1
        }
        return true
    }

    // Time: O(sqrt(n))
    // Memory: O(1)
}
