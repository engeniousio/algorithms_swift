//
//  TwoSumTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 5/19/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class TwoSumTest: XCTestCase {
    
//    let changeString = ChangeStringWithOffsetNumber()
//    let string: String = "abc"
//    let offsetNumber = 3
//    let expectedResult = "def"
//    let actualResult = changeString.change(string: string, with: offsetNumber)
//
//    XCTAssertEqual(expectedResult, actualResult)

    func testTwoSumBruteForce() {
        
        let twoSum = TwoSum()
        let array: [Int] = [2, 7, 11, 15]
        let target = 9
        let expectedResult: [Int] = [0, 1]
        let actualResult: [Int] = twoSum.twoSumBruteForce(nums: array, target: target)
        
        XCTAssertEqual(expectedResult, actualResult)
    }

    func testTwoSumBruteForceSame() {
        
        let twoSum = TwoSum()
        let array: [Int] = [3, 2, 4]
        let target = 6
        let expectedResult: [Int] = [1, 2]
        let actualResult: [Int] = twoSum.twoSumBruteForce(nums: array, target: target)
        
        XCTAssertEqual(expectedResult, actualResult)
    }

    func testTwoSum() {
        
        let twoSum = TwoSum()
        let array: [Int] = [2, 7, 11, 15]
        let target = 9
        let expectedResult: [Int] = [0, 1]
        let actualResult: [Int] = twoSum.twoSum(nums: array, target: target)
        
        XCTAssertEqual(expectedResult, actualResult)
    }

    func testTwoSumSame() {
        
        let twoSum = TwoSum()
        let array: [Int] = [3, 2, 4]
        let target = 6
        let expectedResult: [Int] = [1, 2]
        let actualResult: [Int] = twoSum.twoSum(nums: array, target: target)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
}
