//
//  SumElementsInArray.swift
//  Algos
//
//  Created by Natalia Popova on 5/4/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation

// 1. Input: What is the input parameter?
// 2. Output: What is the datatype of your answer that your function has to return?
// 3. What data structures and methods associated with it will be used
// 4. Where are you going to store temp data ( if needed )
// 5. Describe the model of your algorithm before implementing solution in code
// 6. Write unit tests for your solution -- think about edge cases
// 7. Runtime Complexity?
// 8. Memory Complexity?


public class SumElementsInArray {
    // You are given an array of integers. Please return sum of all elements

    // [5, 1, 10, 24, -4, 10, 5, 3, 6, 7, 0, 20, 30]  ----> n elements
    func sumElements(arr: [Int]) -> Int {
        var sum = 0
        for element in arr {
            sum += element
        }
        return sum
    }
    
    func sumElementsAdvanced(in arr: [Int]) -> Int {
        return arr.reduce(0, { x, y in x + y })
    }

    // O(1)
    func firstElement(arr: [Int]) -> Int {
        guard arr.count != 0 else { return -1 }

        return arr[0]
    }
}

// How much time does the execution take?
    // 1. Hardware?
    // 2. Other processes in background
    // 3. Programming languages
// Number of operation


// Runtime complexity:  n + 2 => ~n  => O(n) -> linear time

// Memory complexity: O(1) -- constant
