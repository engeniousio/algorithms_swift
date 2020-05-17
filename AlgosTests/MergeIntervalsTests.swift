//
//  MergeIntervalsTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 5/14/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class MergeIntervalsTests: XCTestCase {
    
    func testMergeIntervals() {
        var intervals = [[1, 5], [3, 6], [2, 4]]
        let mergeIntervals = MergeIntervals()
    
        let expectedResult = [[1, 6]]
        let actualResult = mergeIntervals.merge(intervals: &intervals)
    
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testMergeIntervalsWithDifferentIntersections() {
        var intervals = [[5, 8], [2, 4], [1, 3], [6, 7]]
        let mergeIntervals = MergeIntervals()
    
        let expectedResult = [[1, 4],[5, 8]]
        let actualResult = mergeIntervals.merge(intervals: &intervals)
    
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testMergeEmptyArray() {
        var intervals: [[Int]] = [[]]
        let mergeIntervals = MergeIntervals()
    
        let expectedResult: [[Int]] = [[]]
        let actualResult = mergeIntervals.merge(intervals: &intervals)
    
        XCTAssertEqual(expectedResult, actualResult)
    }
}
