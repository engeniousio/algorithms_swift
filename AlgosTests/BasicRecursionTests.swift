//
//  BasicRecursionTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 6/17/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class BasicRecursionTest: XCTestCase {

    func testIterativeFiboTest() {
        
        let number = 9
        let basicRecursion = BasicRecursion()
        let expectedResult = 34
        let actualResult = basicRecursion.iterativeFibonacci(number)
        
        XCTAssertEqual(expectedResult, actualResult)
    }

    func testRecursionFiboTest() {
        
        let number = 9
        let basicRecursion = BasicRecursion()
        let expectedResult = 34
        let actualResult = basicRecursion.recursiveFibonacci(number)
        
        XCTAssertEqual(expectedResult, actualResult)
    }

    func testRecursionFactorialTest() {
        
        let number = 5
        let basicRecursion = BasicRecursion()
        let expectedResult = 120
        let actualResult = basicRecursion.factorial(number)
        
        XCTAssertEqual(expectedResult, actualResult)
    }

    func testRecursionSumOfDigitsTest() {
        
        let number = 12345
        let basicRecursion = BasicRecursion()
        let expectedResult = 15
        let actualResult = basicRecursion.sumOfDigits(number)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
}
