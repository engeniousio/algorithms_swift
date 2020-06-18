//
//  BasicStackTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 6/18/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class BasicStackTests: XCTestCase {
    
    func testPushElementToStack() {
        
        var stack = [1, 5, 10, 20, 50, 100]
        let basicStack = BasicStack()
        let expectedResult = [1, 5, 10, 20, 50, 100, 500]
        basicStack.push(element: 500, to: &stack)
        
        XCTAssertEqual(expectedResult, stack)
    }
    
    func testPopIfStackIsNotEmpty() {
       
        var stack = [1, 5, 10, 20, 50, 100, 500]
        let basicStack = BasicStack()
        let expectedResult = 500
        let actualResult = try? basicStack.pop(from: &stack)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testPopWhenStackIsEmpty() {
       
        var stack: [Int] = []
        let basicStack = BasicStack()
        
        XCTAssertThrowsError(try basicStack.pop(from: &stack), "Stack is not Empty") { (error) in
            XCTAssertEqual(error as? BasicStack.Exception, .emptyStack)
        }
    }
    
    func testIsHighest() {
        
        let stack = [1, 5, 10, 20, 50, 100]
        let basicStack = BasicStack()
        let expectedResult = 100
        let actualResult = basicStack.is_highest(stack)
        
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testIsHighestWhenStackIsEmpty() {
        
        let stack: [Int] = []
        let basicStack = BasicStack()
        let actualResult = basicStack.is_highest(stack)
        
        XCTAssertNil(actualResult, "Stack is not empty. Highest element exists")
    }
}
