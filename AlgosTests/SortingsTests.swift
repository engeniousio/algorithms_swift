//
//  SortingsTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 6/14/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class SortingsTests: XCTestCase {
    
    func testBubbleSort() {
        
        var arr = [100, -4, 5, 0, 10, 6]
        let expectedResult = [-4, 0, 5, 6, 10, 100]
        let sortings = Sortings()
        sortings.bubbleSort(arr: &arr)
        
        XCTAssertEqual(expectedResult, arr)
    }
    
    func testSelectionSort() {
        
        var arr = [100, -4, 5, 0, 10, 6]
        let expectedResult = [-4, 0, 5, 6, 10, 100]
        let sortings = Sortings()
        sortings.selectionSort(arr: &arr)
        
        XCTAssertEqual(expectedResult, arr)
    }
    
    func testCountingSort() {
        
        let arr = [9, 5, 0, 10, 6, 5, 5]
        let expectedResult = [0, 5, 5, 5, 6, 9, 10]
        let sortings = Sortings()
        let actualResult = sortings.countingSort(arr: arr, maxValue: 10)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
}
