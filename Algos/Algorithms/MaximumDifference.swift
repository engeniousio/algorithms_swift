//
//  MaximumDifference.swift
//  Algos
//
//  Created by Natalia Popova on 5/4/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation

class MaximumDifference {
    
    // Given an array of integers, return the difference between
    // the largest and smallest integers in the array.

    // [2, 1, 9, -5, 10, 4] => 15

    // sorted array: [-5, 1, 2, 4, 9, 10]
    
    func maximumDifferenceFirstDraft(arr: inout [Int]) -> Int {
        arr.sort()
        
        guard arr.count >= 1 else { return -1 }
        
        let minElement = arr[0]
        let lastIndex = arr.count - 1
        let maxElement = arr[lastIndex]
        
        return maxElement - minElement
        
        // O(n * log(n))
    }
    
    func maximumDifference(arr: [Int]) -> Int {

        guard arr.count >= 1 else { return -1 }

        var min = arr[0]
        var max = arr[0]

        for i in 0..<arr.count {
            if arr[i] > max {
                max = arr[i]
            }

            if arr[i] < min {
                min = arr[i]
            }
        }
        return max - min
    }

    // Time: O(n)
    // Memory: O(1)
}
