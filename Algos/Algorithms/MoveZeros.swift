//
//  MoveZeros.swift
//  Algos
//
//  Created by Natalia Popova on 5/19/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation

class MoveZeros {

    // [0, 1, 0, 3, 12]
    // [1, 1, 0, 3, 12]
    // [1, 3, 0, 3, 12]
    // [1, 3, 12, 3, 12]

    // [1, 3, 12, 0, 0]
    func moveZeros(nums: inout [Int]) {

        var writePointer = 0

        for readPointer in 0..<nums.count where nums[readPointer] != 0 {
            nums[writePointer] = nums[readPointer]
            writePointer += 1
        }

        for index in writePointer..<nums.count {
            nums[index] = 0
        }

        // Time: O(n)
        // Memory: O(1)
    }
}

// 15  => 3 * 5
// 17 => prime
