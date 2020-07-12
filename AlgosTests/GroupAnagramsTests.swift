//
//  GroupAnagramsTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 6/24/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class GroupAnagramsTests: XCTestCase {
    
    func testEmptyArray() {
        
        let arrayOfStrings: [String] = []
        let groupAnagrams = GroupAnagrams()
        let expectedResult: [[String]] = []
        let actualResult = groupAnagrams.groupAnagrams(arrayOfStrings)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testArrayOfEmptyStrings() {
        
        let arrayOfStrings: [String] = ["", "", ""]
        let groupAnagrams = GroupAnagrams()
        let expectedResult: [[String]] = [["", "", ""]]
        let actualResult = groupAnagrams.groupAnagrams(arrayOfStrings)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testArrayOfAnagrams() {
        
        let arrayOfStrings: [String] = ["star", "rats", "hello", "cars", "scar", "acrs"]
        let groupAnagrams = GroupAnagrams()
        let expectedResult: [[String]] = [["star", "rats"], ["hello"], ["cars", "scar", "acrs"]]
        let actualResult = groupAnagrams.groupAnagrams(arrayOfStrings)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testArrayOfAnagramsWithIdenticalElements() {
        
        let arrayOfStrings: [String] = ["dog", "star", "rats", "hello", "cars", "dog", "scar", "acrs"]
        let groupAnagrams = GroupAnagrams()
        let expectedResult: [[String]] = [["dog", "dog"], ["star", "rats"], ["hello"], ["cars", "scar", "acrs"]]
        let actualResult = groupAnagrams.groupAnagrams(arrayOfStrings)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testEmptyArrayV2() {
        
        let arrayOfStrings: [String] = []
        let groupAnagrams = GroupAnagrams()
        let expectedResult: [[String]] = []
        let actualResult = groupAnagrams.groupAnagrams(arrayOfStrings)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testArrayOfEmptyStringsV2() {
        
        let arrayOfStrings: [String] = ["", "", ""]
        let groupAnagrams = GroupAnagrams()
        let expectedResult: [[String]] = [["", "", ""]]
        let actualResult = groupAnagrams.groupAnagrams(arrayOfStrings)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testArrayOfAnagramsV2() {
        
        let arrayOfStrings: [String] = ["star", "rats", "hello", "cars", "scar", "acrs"]
        let groupAnagrams = GroupAnagrams()
        let expectedResult: [[String]] = [["star", "rats"], ["hello"], ["cars", "scar", "acrs"]]
        let actualResult = groupAnagrams.groupAnagrams(arrayOfStrings)

        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testArrayOfAnagramsWithIdenticalElementsV2() {
        
        let arrayOfStrings: [String] = ["dog", "star", "rats", "hello", "cars", "dog", "scar", "acrs"]
        let groupAnagrams = GroupAnagrams()
        let expectedResult: [[String]] = [["dog", "dog"], ["star", "rats"], ["hello"], ["cars", "scar", "acrs"]]
        let actualResult = groupAnagrams.groupAnagrams(arrayOfStrings)

        XCTAssertEqual(expectedResult, actualResult)
    }
}
