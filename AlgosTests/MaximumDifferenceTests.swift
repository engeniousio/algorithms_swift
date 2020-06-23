//
//  MaximumDifferenceTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 5/5/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class MaximumDifferenceTests: XCTestCase {

    func testMaxDifference() {
        let arr: [Int] = [2, 1, 9, -5, 10, 4]
        let expectedResult = 15
        
        let maximumDifference = MaximumDifference()
        let actualResult = maximumDifference.maximumDifference(arr: arr)
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testMaxDifferenceEmptyArray() {
        let arr: [Int] = []
        let expectedResult = -1
        
        let maximumDifference = MaximumDifference()
        let actualResult = maximumDifference.maximumDifference(arr: arr)
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testMaxDifferenceOneElementInArray() {
        let arr: [Int] = [2]
        let expectedResult = 0
        
        let maximumDifference = MaximumDifference()
        let actualResult = maximumDifference.maximumDifference(arr: arr)
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testMaxDifferenceNotUniqueElements() {
        let arr: [Int] = [2, 2, 2, 2, 2, 2]
        let expectedResult = 0
        
        let maximumDifference = MaximumDifference()
        let actualResult = maximumDifference.maximumDifference(arr: arr)
        XCTAssertEqual(expectedResult, actualResult)
    }
}
