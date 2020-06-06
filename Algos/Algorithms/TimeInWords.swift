//
//  TimeInWords.swift
//  Algos
//
//  Created by Natalia Popova on 6/6/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation

/**
 We would like you to convert a time (like 5:10) to the time in words (like "ten past five")
 
 To solve this, you will need a method that takes two integer inputs (hour and minute), and returns a string. Some example inputs and outputs of this method are the following:
 
    timeInWords(12, 0)     -->     "twelve o'clock"
    timeInWords(1,   5)     -->     "five past one"
    timeInWords(2, 15)     -->     "quarter past two"
    timeInWords(3, 30)     -->     "half past three"
    timeInWords(4, 40)     -->     "twenty to five"
 
 You may assume the following:
 
    1. 12-hour time format
    2. Your inputs will NOT necessarily be valid (you must handle invalid cases somehow)
    3. You have some method (or a map) that takes an integer and returns the string representation:
        numberToString(1)       -->     "one"
        numberToString(15)     -->     "quarter"
 */

class TimeInWords {
    
    func timeInWords(_ hour: Int, _ minute: Int) -> String {
        guard hour > 0, hour <= 12, minute >= 0, minute < 60 else { return "Invalid input" }
//swiftlint:disable:next line_length
        let numberToString: [Int: String] = [0: "twelve", 1: "one", 2: "two", 3: "three", 4: "four", 5: "five", 6: "six", 7: "seven", 8: "eight", 9: "nine", 10: "ten", 11: "eleven", 12: "twelve", 13: "thirteen", 14: "fourteen", 15: "quarter", 16: "sixteen", 17: "seventeen", 18: "eighteen", 19: "nineteen", 20: "twenty", 30: "half"]
        if minute == 0 {
            return "\(numberToString[hour]!) o'clock"
        } else if (21..<30).contains(minute) {
            let arrOfDigits = minute.digits
            return "\(numberToString[arrOfDigits[0] * 10]!) \(numberToString[arrOfDigits[1]]!) past \(numberToString[hour]!)"
        } else if minute > 30 {
            var newHour = hour + 1
            if newHour > 12 {
                newHour = 1
            }
            let newMinute = 60 - minute
            if newMinute <= 20 {
            return "\(numberToString[newMinute]!) to \(numberToString[newHour]!)"
            } else if newMinute % 10 != 0 {
                let arrOfDigits = newMinute.digits
                return "\(numberToString[arrOfDigits[0] * 10]!) \(numberToString[arrOfDigits[1]]!) to \(numberToString[newHour]!)"
            } else {
                return "\(numberToString[newMinute]!) to \(numberToString[newHour]!)"
            }
        } else {
            return "\(numberToString[minute]!) past \(numberToString[hour]!)"
        }
    }
}

extension BinaryInteger {
    var digits: [Int] {
        return String(describing: self).compactMap { Int(String($0)) }
    }
}
