//
//  TwoSum.swift
//  Algos
//
//  Created by Natalia Popova on 5/19/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation

// 1. Input: What is the input parameter?
// 2. Output: What is the datatype of your answer that your function has to return?
// 3. What data structures and methods associated with it will be used?
// 4. Where are you going to store temporary data (if needed)?
// 5. Describe the model of your algorithm before implementing solution in code
// 6. Write unit tests for your solution -- think about edge cases
// 7. Runtime Complexity?
// 8. Memory Complexity?

class TwoSum {

    // Given nums = [2, 7, 11, 15], target = 9,

    func twoSumBruteForce(nums: [Int], target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in 0..<nums.count {
                let num1 = nums[i]
                let num2 = nums[j]
                if i != j && num1 + num2 == target {
                    return [i, j]
                }
            }
        }
        return [0, 0]
        // Time: O(n^2)
        // Memory: O(1)
    }

    func twoSum(nums: [Int], target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (index, element) in nums.enumerated() {
            dict[element] = index
        }

        for i in 0..<nums.count {
            let num1 = nums[i]
            let complement = target - num1
            if dict.keys.contains(complement) && i != dict[complement] {
                let indexOfnum2 = dict[complement]
                return [i, indexOfnum2!]
            }
        }
        return [0, 0]

        // Time: O(n)
        // Memory: O(n)
    }
}
