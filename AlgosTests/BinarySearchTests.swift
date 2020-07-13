//
//  BinarySearchTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 7/12/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class BinarySearchTests: XCTestCase {

    func testSearchAnElement() {
        
        let arr: [Int] = [10, -100, 7, 19, 9, 10, 5]
        let target: Int = -100
        
        let binarySearch = BinarySearch()
        
        let expectedResult: Int = 1
        let actualResult: Int = binarySearch.searchAnElement(arr: arr, target: target)
        
        XCTAssertEqual(expectedResult, actualResult)
    }

    func testBinarySearch() {
        
        let arr: [Int] = [-100, 5, 7, 9, 10, 19, 123, 10000]
        let target: Int = 123
        
        let binarySearch = BinarySearch()
        
        let expectedResult: Int = 6
        let actualResult: Int = binarySearch.binarySearch(arr: arr, target: target)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testBinarySearch2() {
        
        let arr: [Int] = [-100, 5, 7, 9, 10, 19, 123, 10000]
        let target: Int = -19
        
        let binarySearch = BinarySearch()
        
        let expectedResult: Int = -1
        let actualResult: Int = binarySearch.binarySearch(arr: arr, target: target)
        
        XCTAssertEqual(expectedResult, actualResult)
    }

    func testBinarySearch3() {
        
        let arr: [Int] = [-100, 5, 7, 9, 10, 19, 123, 10000]
        let target: Int = -100
        
        let binarySearch = BinarySearch()
        
        let expectedResult: Int = 0
        let actualResult: Int = binarySearch.binarySearch(arr: arr, target: target)
        
        XCTAssertEqual(expectedResult, actualResult)
    }

}
