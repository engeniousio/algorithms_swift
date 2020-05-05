//
//  SumElementsInArrayTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 5/5/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class SumElementsInArrayTests {
    
    func testSumElements() {
        
        let array = [1, 5, -5, 10, 4]
        let sumElementsInArray = SumElementsInArray()
        
        let expectedResult = 15;
        let actualResult = sumElementsInArray.sumElements(arr: array)
        
        XCTAssertEqual(expectedResult, actualResult)
    }

    func testSumEmptyElements() {
        
        let array: [Int] = []
        let sumElementsInArray = SumElementsInArray()

        let expectedResult = 0
        let actualResult = sumElementsInArray.sumElements(arr: array)
        XCTAssertEqual(expectedResult, actualResult)
    }

    func testSumOneElement() {
        
        let array = [5]
        let sumElementsInArray = SumElementsInArray()
        
        let expectedResult = 5
        let actualResult = sumElementsInArray.sumElements(arr: array)
        XCTAssertEqual(expectedResult, actualResult)
    }
}
