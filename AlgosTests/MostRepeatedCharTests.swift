//
//  MostRepeatedCharTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 5/16/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class MostRepeatedCharTests: XCTestCase {
    
    func testMostRepeatedChar() {
        
        let str = "Hello, World!"
        let mostRepeatedChar = MostRepeatedChar()
        
        let expectedResult = Character("l")
        let actualResult = mostRepeatedChar.mostRepeatedChar(str: str)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testMostRepeatedCharEmptyString() {
        
        let str = ""
        let mostRepeatedChar = MostRepeatedChar()
        
        let expectedResult = Character("0")
        let actualResult = mostRepeatedChar.mostRepeatedChar(str: str)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
}
