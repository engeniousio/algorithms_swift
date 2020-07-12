//
//  MoveZerosTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 5/19/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class MoveZerosTests: XCTestCase {
    
    func testMoveZeroes() {
        
        let moveZeros = MoveZeros()
        var array: [Int] = [0, 1, 0, 3, 12]
        let expectedResult: [Int] = [1, 3, 12, 0, 0]
        moveZeros.moveZeros(nums: &array)
        XCTAssertEqual(array, expectedResult)
    }
}
