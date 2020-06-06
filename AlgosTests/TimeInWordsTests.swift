//
//  TimeInWordsTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 6/6/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class TimeInWordsTests: XCTestCase {
    
    func testTwelveOClock() {
        let hour = 12
        let minute = 0
        let timeInWords = TimeInWords()
        
        let expectedResult = "twelve o'clock"
        let actualResult = timeInWords.timeInWords(hour, minute)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testFivePastOne() {
        let hour = 1
        let minute = 5
        let timeInWords = TimeInWords()
        
        let expectedResult = "five past one"
        let actualResult = timeInWords.timeInWords(hour, minute)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testQuarterPastTwo() {
        let hour = 2
        let minute = 15
        let timeInWords = TimeInWords()
        
        let expectedResult = "quarter past two"
        let actualResult = timeInWords.timeInWords(hour, minute)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testHalfPastThree() {
        let hour = 3
        let minute = 30
        let timeInWords = TimeInWords()
        
        let expectedResult = "half past three"
        let actualResult = timeInWords.timeInWords(hour, minute)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testTwentyToFive() {
        let hour = 4
        let minute = 40
        let timeInWords = TimeInWords()
        
        let expectedResult = "twenty to five"
        let actualResult = timeInWords.timeInWords(hour, minute)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testTwentyFivePastOne() {
        let hour = 1
        let minute = 25
        let timeInWords = TimeInWords()
        
        let expectedResult = "twenty five past one"
        let actualResult = timeInWords.timeInWords(hour, minute)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testTenToTwo() {
        let hour = 1
        let minute = 50
        let timeInWords = TimeInWords()
        
        let expectedResult = "ten to two"
        let actualResult = timeInWords.timeInWords(hour, minute)
        
        XCTAssertEqual(expectedResult, actualResult)
    }

    func testQuarterToThree() {
        let hour = 2
        let minute = 45
        let timeInWords = TimeInWords()
        
        let expectedResult = "quarter to three"
        let actualResult = timeInWords.timeInWords(hour, minute)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testSeventeenPastFour() {
        let hour = 4
        let minute = 17
        let timeInWords = TimeInWords()
        
        let expectedResult = "seventeen past four"
        let actualResult = timeInWords.timeInWords(hour, minute)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testTwentyPastTwo() {
        let hour = 2
        let minute = 20
        let timeInWords = TimeInWords()
        
        let expectedResult = "twenty past two"
        let actualResult = timeInWords.timeInWords(hour, minute)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testTwentyNineToTwo() {
        let hour = 1
        let minute = 31
        let timeInWords = TimeInWords()
        
        let expectedResult = "twenty nine to two"
        let actualResult = timeInWords.timeInWords(hour, minute)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testEighteenToOne() {
        let hour = 12
        let minute = 42
        let timeInWords = TimeInWords()
        
        let expectedResult = "eighteen to one"
        let actualResult = timeInWords.timeInWords(hour, minute)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testTwoToFour() {
        let hour = 3
        let minute = 58
        let timeInWords = TimeInWords()
        
        let expectedResult = "two to four"
        let actualResult = timeInWords.timeInWords(hour, minute)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testNegativeHour() {
        let hour = -4
        let minute = 40
        let timeInWords = TimeInWords()
        
        let expectedResult = "Invalid input"
        let actualResult = timeInWords.timeInWords(hour, minute)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testNegativeMinute() {
        let hour = 4
        let minute = -40
        let timeInWords = TimeInWords()
        
        let expectedResult = "Invalid input"
        let actualResult = timeInWords.timeInWords(hour, minute)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testZeroHour() {
        let hour = 0
        let minute = 40
        let timeInWords = TimeInWords()
        
        let expectedResult = "Invalid input"
        let actualResult = timeInWords.timeInWords(hour, minute)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
}
