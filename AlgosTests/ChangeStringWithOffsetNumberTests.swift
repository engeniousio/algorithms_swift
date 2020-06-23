//
//  ChangeStringWithOffsetNumberTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 5/17/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class ChangeStringWithOffsetNumberTests: XCTestCase {

    func testAlphaSequence() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "abc"
        let offsetNumber = 3
        let expectedResult = "def"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testNumericSequence() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "123"
        let offsetNumber = 3
        let expectedResult = "456"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testSpecialChar() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "?"
        let offsetNumber = 2
        let expectedResult = "?"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testSequenceWithUppercaseвChar() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "Hello"
        let offsetNumber = 1
        let expectedResult = "Ifmmp"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testBoundaryForAlphaCharsWithPositiveOffsetNum() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "z"
        let offsetNumber = 1
        let expectedResult = "a"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testBoundaryForUppercasedAlphaCharsWithPositiveOffsetNum() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "Z"
        let offsetNumber = 1
        let expectedResult = "A"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testBoundaryForNumericCharsWithPositiveOffsetNum() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "9"
        let offsetNumber = 1
        let expectedResult = "0"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testAlphaCharWithNegativeOffsetNum() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "b"
        let offsetNumber = -1
        let expectedResult = "a"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testUppercasedAlphaCharWithNegativeOffsetNum() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "B"
        let offsetNumber = -1
        let expectedResult =  "A"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testNumericCharWithNegativeOffsetNum() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "2"
        let offsetNumber = -1
        let expectedResult = "1"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testBoundaryForAlphaCharsWithNegativeOffsetNum() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "a"
        let offsetNumber = -1
        let expectedResult = "z"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testBoundaryForUppercasedAlphaCharsWithNegativeOffsetNum() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "A"
        let offsetNumber = -1
        let expectedResult = "Z"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testBoundaryForNumericCharsWithNegativeOffsetNum() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "0"
        let offsetNumber = -1
        let expectedResult = "9"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testSequenceWithOffsetNumberEqualToZero() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "abc4?A"
        let offsetNumber = 0
        let expectedResult = "abc4?A"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testAlphaCharWithPositiveOffsetNumberOutOfRange() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "a"
        let offsetNumber = 27
        let expectedResult = "b"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testUppercasedAlphaCharWithPositiveOffsetNumberOutOfRange() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "A"
        let offsetNumber = 27
        let expectedResult = "B"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testNumericCharWithPositiveOffsetNumberOutOfRange() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "0"
        let offsetNumber = 11
        let expectedResult = "1"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testAlphaCharWithNegativeOffsetNumberOutOfRange() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "a"
        let offsetNumber = -27
        let expectedResult = "z"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testUppercasedAlphaCharWithNegativeOffsetNumberOutOfRange() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "A"
        let offsetNumber = -27
        let expectedResult = "Z"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testNumericCharWithNegativeOffsetNumberOutOfRange() {
        
        let changeString = ChangeStringWithOffsetNumber()
        let string: String = "0"
        let offsetNumber = -11
        let expectedResult = "9"
        let actualResult = changeString.change(string: string, with: offsetNumber)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
}
