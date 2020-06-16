//
//  Sortings.swift
//  Algos
//
//  Created by Natalia Popova on 6/14/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation

//  1. Input: What is the input parameter?
//  2. Output: What is the datatype of your answer that your function has to return?
//  3. What data structures and methods associated with it will be used?
//  4. Where are you going to store temporary data (if needed)?
//  5. Describe the model of your algorithm before implementing solution in code
//  6. Write unit tests for your solution -- think about edge cases
//  7. Runtime Complexity?
//  8. Memory Complexity?

class Sortings {

    // { 100, -4, 5, 0, 10, 6 }
    // { -4, 100, 5, 0, 10, 6}
    // { -4, 5, 100, 0, 10, 6 }
    // { -4, 5, 0, 100, 10, 6 }
    // { -4, 5, 0, 10, 100, 6 }
    // { -4, 5, 0, 10, 6, 100 }
    // ....

    // => { -4, 0, 5, 6, 10, 100 }

    func bubbleSort(arr: inout [Int]) {
        var swapDetected = true
        while swapDetected {
            swapDetected = false
            for i in 1..<arr.count where arr[i] < arr[i - 1] {
                arr.swapAt(i, i - 1)
                swapDetected = true
            }
        }
        // TIME: O(n^2)
        // MEMORY: O(1)
    }

    // {100, -4, 5, 0, 10, 6 }
    
    func selectionSort(arr: inout [Int]) {
        for left in 0..<arr.count {
            var minI = left
            for i in left..<arr.count where arr[i] < arr[minI] {
                minI = i
            }
            arr.swapAt(left, minI)
        }
        // TIME: O(n^2)
        // MEMORY: O(1)
    }

    // {9, 5, 0, 10, 6, 5, 5}

    // 0  1  2  3  4  5  6  7  8  9  10
    // 1              3  1        1  1

    // 0, 5, 5, 5, 6, 9, 10

    func countingSort(arr: [Int], maxValue: Int) -> [Int] {
        
        var values = Array(repeating: 0, count: maxValue + 1)
        
        for i in 0..<arr.count {
            values[arr[i]] += 1
        }
        
        var sortedArray = Array(repeating: 0, count: arr.count)
        var k = 0
        
        for i in 0..<values.count {
            for _ in 0..<values[i] {
                sortedArray[k] = i
                k += 1
            }
        }
        return sortedArray
        
        // TIME: O(n+k)  -- where k is max element
        // MEMORY: O(k), k is max element
    }
}
