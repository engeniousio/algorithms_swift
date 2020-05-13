//
//  PalindromeTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 5/5/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class PalindromeTests: XCTestCase {
    
    func testPalindrome() {
        let str = "racecar"
        let palindrome = Palindrome()

        let expectedResult = true
        let actualResult = palindrome.isPalindrome(str: str)

        XCTAssertEqual(expectedResult, actualResult)
    }

    func testFalsePalindrome() {
        let str = "abcdbcaa"
        let palindrome = Palindrome()

        let expectedResult = false
        let actualResult = palindrome.isPalindrome(str: str)

        XCTAssertEqual(expectedResult, actualResult)
    }


    func testEmptyPalindrome() {
        let str = ""
        let palindrome = Palindrome()

        let expectedResult = true
        let actualResult = palindrome.isPalindrome(str: str)

        XCTAssertEqual(expectedResult, actualResult)
    }

    func testOneLetterPalindrome() {
        let str = "s"
        let palindrome = Palindrome()

        let expectedResult = true
        let actualResult = palindrome.isPalindrome(str: str)

        XCTAssertEqual(expectedResult, actualResult)
    }

    func testEvenPalindrome() {
        let str = "abba"
        let palindrome = Palindrome()

        let expectedResult = true
        let actualResult = palindrome.isPalindrome(str: str)

        XCTAssertEqual(expectedResult, actualResult)
    }
}
