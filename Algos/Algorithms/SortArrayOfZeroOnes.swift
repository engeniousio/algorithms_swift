//
//  SortArrayOfZeroOnes.swift
//  Algos
//
//  Created by Natalia Popova on 5/4/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
// Given an array of integers.
// All elements are either ones or zeros inside the array. Your goal is to order the array in ascending order.

// [1, 0, 0, 0, 1, 1, 0]

// [0, 0, 0, 0, 1, 1, 1]

// 1. Input: What is the input parameter? => int arr[]
// 2. Output: What is the datatype of your answer that your function has to return ? => void
// 3. What data structures and methods associated with it will be used
// 4. Where are you going to store temp data ( if needed )
// 5. Describe model of your algorithm before implementing solution in code
// 6. Write unit tests for your solution -- think about edge cases
// 7. Runtime Complexity?
// 8. Memory Complexity?

class SortArrayOfZeroOnes {

    func sortArray(arr: inout [Int]) {
        var count = 0
        for element in arr {
            count += element
        }

        let endOfZerosIndex = arr.count - count;

        for i in 0..<endOfZerosIndex {
            arr[i] = 0
        }

        for i in endOfZerosIndex..<arr.count {
            arr[i] = 1;
        }
    }
}

// O(n)
