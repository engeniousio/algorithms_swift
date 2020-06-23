//
//  SortArrayOfZeroOnesTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 5/5/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class SortArrayOfZeroOnesTests: XCTestCase {
    
    func testSortArray() {

        var arr = [0, 1, 1, 0, 0, 1, 1, 1, 0]
        let sortArrayOfZeroOnes = SortArrayOfZeroOnes()
        
        sortArrayOfZeroOnes.sortArray(arr: &arr)
        let expectedValue = [0, 0, 0, 0, 1, 1, 1, 1, 1]
        
        XCTAssertEqual(arr, expectedValue)
    }

    func testSortEmptyArray() {

        var arr: [Int] = []
        let sortArrayOfZeroOnes = SortArrayOfZeroOnes()
        
        sortArrayOfZeroOnes.sortArray(arr: &arr)
        let expectedValue: [Int] = []
        
        XCTAssertEqual(arr, expectedValue)
    }

    func testSortOneElementArray() {
        
        var arr = [1]
        let sortArrayOfZeroOnes = SortArrayOfZeroOnes()
        
        sortArrayOfZeroOnes.sortArray(arr: &arr)
        let expectedValue = [1]
        
        XCTAssertEqual(arr, expectedValue)
    }
}
