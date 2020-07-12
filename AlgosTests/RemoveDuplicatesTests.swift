//
//  RemoveDuplicatesTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 6/25/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class RemoveDuplicatesTests: XCTestCase {
    
    func testRemoveDuplicatesInPlaceFromArray() {
        
        var arrayWithDuplicates = [1, 2, 3, 1, 1, 1, 5, 7, 1, 8, 2]
        let removeDuplicates = RemoveDuplicates()
        let expectedResult = [1, 2, 3, 5, 7, 8]
        let actualResult = removeDuplicates.removeDuplicatesInPlace(array: &arrayWithDuplicates)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testRemoveDuplicatesInPlaceFromEmptyArray() {
        
        var emptyArray = [Int]()
        let removeDuplicates = RemoveDuplicates()
        let expectedResult: [Int] = []
        let actualResult = removeDuplicates.removeDuplicatesInPlace(array: &emptyArray)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testRemoveDuplicatesInPlaceFromArrayWithOnlyElement() {
        
        var array = [1]
        let removeDuplicates = RemoveDuplicates()
        let expectedResult = [1]
        let actualResult = removeDuplicates.removeDuplicatesInPlace(array: &array)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testRemoveDuplicatesInPlaceFromHugeArray() {
        
        var hugeArray = (Array(repeating: 0, count: 3000) + Array(repeating: 5, count: 3000) + Array(repeating: 8, count: 3000)).shuffled()
        let removeDuplicates = RemoveDuplicates()
        let expectedResult = [0, 5, 8]
        let actualResult = removeDuplicates.removeDuplicatesInPlace(array: &hugeArray)

        XCTAssertEqual(expectedResult, actualResult)
    }

    func testRemoveDuplicatesUsingReduceFromArray() {
        
        var arrayWithDuplicates = [1, 2, 3, 1, 1, 1, 5, 7, 1, 8, 2]
        let removeDuplicates = RemoveDuplicates()
        let expectedResult = [1, 2, 3, 5, 7, 8]
        let actualResult = removeDuplicates.removeDuplicatesUsingReduce(array: &arrayWithDuplicates)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testRemoveDuplicatesUsingReduceFromEmptyArray() {
        
        var emptyArray = [Int]()
        let removeDuplicates = RemoveDuplicates()
        let expectedResult: [Int] = []
        let actualResult = removeDuplicates.removeDuplicatesUsingReduce(array: &emptyArray)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testRemoveDuplicatesUsingReduceFromArrayWithOnlyElement() {
        
        var array = [1]
        let removeDuplicates = RemoveDuplicates()
        let expectedResult = [1]
        let actualResult = removeDuplicates.removeDuplicatesUsingReduce(array: &array)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testRemoveDuplicatesUsingReduceFromHugeArray() {
        
        var hugeArray = (Array(repeating: 0, count: 3000) + Array(repeating: 5, count: 3000) + Array(repeating: 8, count: 3000)).shuffled()
        let removeDuplicates = RemoveDuplicates()
        let expectedResult = [0, 5, 8]
        let actualResult = removeDuplicates.removeDuplicatesUsingReduce(array: &hugeArray).sorted()

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testRemoveDuplicatesUsingSetFromArray() {
        
        var arrayWithDuplicates = [1, 2, 3, 1, 1, 1, 5, 7, 1, 8, 2]
        let removeDuplicates = RemoveDuplicates()
        let expectedResult = [1, 2, 3, 5, 7, 8]
        let actualResult = removeDuplicates.removeDuplicatesUsingSet(array: &arrayWithDuplicates).sorted()

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testRemoveDuplicatesUsingSetFromEmptyArray() {
        
        var emptyArray = [Int]()
        let removeDuplicates = RemoveDuplicates()
        let expectedResult: [Int] = []
        let actualResult = removeDuplicates.removeDuplicatesUsingSet(array: &emptyArray)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testRemoveDuplicatesUsingSetFromArrayWithOnlyElement() {
        
        var array = [1]
        let removeDuplicates = RemoveDuplicates()
        let expectedResult = [1]
        let actualResult = removeDuplicates.removeDuplicatesUsingSet(array: &array)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testRemoveDuplicatesUsingSetFromHugeArray() {
        
        var hugeArray = (Array(repeating: 0, count: 3000) + Array(repeating: 5, count: 3000) + Array(repeating: 8, count: 3000)).shuffled()
        let removeDuplicates = RemoveDuplicates()
        let expectedResult = [0, 5, 8]
        let actualResult = removeDuplicates.removeDuplicatesUsingSet(array: &hugeArray).sorted()

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testRemoveDuplicatesUsingDictFromArray() {
        
        var arrayWithDuplicates = [1, 2, 3, 1, 1, 1, 5, 7, 1, 8, 2]
        let removeDuplicates = RemoveDuplicates()
        let expectedResult = [1, 2, 3, 5, 7, 8]
        let actualResult = removeDuplicates.removeDuplicatesUsingDict(array: &arrayWithDuplicates).sorted()

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testRemoveDuplicatesUsingDictFromEmptyArray() {
        
        var emptyArray = [Int]()
        let removeDuplicates = RemoveDuplicates()
        let expectedResult: [Int] = []
        let actualResult = removeDuplicates.removeDuplicatesUsingDict(array: &emptyArray)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testRemoveDuplicatesUsingDictFromArrayWithOnlyElement() {
        
        var array = [1]
        let removeDuplicates = RemoveDuplicates()
        let expectedResult = [1]
        let actualResult = removeDuplicates.removeDuplicatesUsingDict(array: &array)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testRemoveDuplicatesUsingDictFromHugeArray() {
        
        var hugeArray = (Array(repeating: 0, count: 3000) + Array(repeating: 5, count: 3000) + Array(repeating: 8, count: 3000)).shuffled()
        let removeDuplicates = RemoveDuplicates()
        let expectedResult = [0, 5, 8]
        let actualResult = removeDuplicates.removeDuplicatesUsingDict(array: &hugeArray).sorted()

        XCTAssertEqual(expectedResult, actualResult)
    }
    
/** With generics */
    
    func testRemoveDuplicatesInPlaceFromHugeArrayGenerics() {
//swiftlint:disable:next line_length
        var hugeArray = (Array(repeating: "Pizza", count: 3000) + Array(repeating: "Steak", count: 3000) + Array(repeating: "Ice Cream", count: 3000) + Array(repeating: "Pizza", count: 3000)).shuffled()
        let removeDuplicates = RemoveDuplicates()
        let expectedResult = ["Ice Cream", "Pizza", "Steak"]
        let actualResult = removeDuplicates.removeDuplicatesInPlaceV2(array: &hugeArray)

        XCTAssertEqual(expectedResult, actualResult)
    }
}
