//
//  IntegerPalindromeTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 5/15/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class IntegerPalindromeTests: XCTestCase {
    
    func testIntegerPalindrome() {
        let x = 1234321
        let integerPalindrome = IntegerPalindrome()
        let actualResult = integerPalindrome.isPalindrome(x)
    
        XCTAssertTrue(actualResult)
    }
    
    func testIntegerNotPalindrome() {
        let x = 1934321
        let integerPalindrome = IntegerPalindrome()
        let actualResult = integerPalindrome.isPalindrome(x)
    
        XCTAssertFalse(actualResult)
    }
    
    func testNegativeIntegerNotPalindrome() {
        let x = -1234321
        let integerPalindrome = IntegerPalindrome()
        let actualResult = integerPalindrome.isPalindrome(x)
    
        XCTAssertFalse(actualResult)
    }
}
