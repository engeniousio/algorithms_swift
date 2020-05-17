//
//  IntegerPalindrome.swift
//  Algos
//
//  Created by Natalia Popova on 5/15/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation

class IntegerPalindrome {

        // 1331
        // bite out "1" and save it
        // cut off "1"
        // bite off "3" and save "13"
        // cut off "3"
        // bite off "3" and save "133"
        // cut off "3"
        // bite off "1" and save "1331"
        // cut off "1"
        // compare "1331" and "1331"

    func isPalindrome(_ x: Int) -> Bool {
        guard x > 0 else { return false }

        var xOld = x
        var reversedX = 0

        while xOld > 0 {
            let reminder = xOld % 10
            reversedX = reversedX * 10 + reminder
            xOld /= 10
        }
        return x == reversedX
    }
        // time: O(log10(n))
        // memory: O(1)
}


    // 17 % 2 = 1
    // 17 % 10 = 7
    // 28563 % 10 = 3
    // 872364 % 10 = 4

    // 346872 / 10 = 34687
    // 8916273 / 10 = 891627

    // 133  reminder = 1  ==> 133 * 10 + 1 = 1330 + 1 = 1331

    // 5 / 10 = 0


    // log2(4) = 2


     // 100000  / 10 ? 6 times
