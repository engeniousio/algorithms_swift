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
        let num = 1234321
        let integerPalindrome = IntegerPalindrome()
        let actualResult = integerPalindrome.isPalindrome(num)
    
        XCTAssertTrue(actualResult)
    }
    
    func testIntegerNotPalindrome() {
        let num = 1934321
        let integerPalindrome = IntegerPalindrome()
        let actualResult = integerPalindrome.isPalindrome(num)
    
        XCTAssertFalse(actualResult)
    }
    
    func testNegativeIntegerNotPalindrome() {
        let num = -1234321
        let integerPalindrome = IntegerPalindrome()
        let actualResult = integerPalindrome.isPalindrome(num)
    
        XCTAssertFalse(actualResult)
    }
}
