//
//  Palindrome.swift
//  Algos
//
//  Created by Natalia Popova on 5/4/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
class Palindrome {

    // palindrome - a word, phrase, or sequence that reads the same backwards as forwards
    // abcba ; abddba; anna; racecar;

    // write a function that takes a string and returns boolean - whether this string is palindrome

    func isPalindromeFirstDraft(str: String) -> Bool {

        var reversedStr = ""

        for char in str {
            reversedStr.insert(char, at: str.startIndex)
        }
        return reversedStr == str

        // Time: O(n)
        // Memory: O(n)
    }

    func isPalindrome(str: String) -> Bool {
        
        guard str.count > 1 else { return true }
        
        let leftIndex = str.startIndex
        let rightIndex = str.index(before: str.endIndex)
        for index in 0..<str.count / 2 {
            let leftChar = str[str.index(leftIndex, offsetBy: index)]
            let rightChar = str[str.index(rightIndex, offsetBy: -index)]
            if leftChar != rightChar {
                return false
            }
        }
        return true
        
        // Time: O(n)
        // Memory: O(1)
    }
}
