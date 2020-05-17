//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Natalia Popova on 5/4/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import XCTest
@testable import Algos

class FizzBuzzTests: XCTestCase {

    func testFizzBuzz5() {
        let num: Int = 5
        var expectedResult = [String]()
        
        expectedResult.append("1")
        expectedResult.append("2")
        expectedResult.append("Fizz")
        expectedResult.append("4")
        expectedResult.append("Buzz")
        
        let fizzBuzz = FizzBuzz()
        let actualResult = fizzBuzz.fizzBuzz(num: num)
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testFizzBuzz15() {
        let num: Int = 15
        var expectedResult = [String]()
        
        expectedResult.append("1")
        expectedResult.append("2")
        expectedResult.append("Fizz")
        expectedResult.append("4")
        expectedResult.append("Buzz")
        expectedResult.append("Fizz")
        expectedResult.append("7")
        expectedResult.append("8")
        expectedResult.append("Fizz")
        expectedResult.append("Buzz")
        expectedResult.append("11")
        expectedResult.append("Fizz")
        expectedResult.append("13")
        expectedResult.append("14")
        expectedResult.append("FizzBuzz")
        
        let fizzBuzz = FizzBuzz()
        let actualResult = fizzBuzz.fizzBuzz(num: num)
        XCTAssertEqual(expectedResult, actualResult)
    }
}
