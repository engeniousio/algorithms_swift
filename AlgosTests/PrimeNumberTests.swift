//
//  PrimeNumberTests.swift
//  AlgosTests
//
//  Created by Natalia Popova on 6/6/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation
import XCTest
@testable import Algos

class PrimeNumberTest: XCTestCase {

    func testPrime() {
        let primeNumber = PrimeNumber()
        let num = 17
        
        XCTAssertTrue(primeNumber.isPrime(num))
    }

    func testPrimeOne() {
        let primeNumber = PrimeNumber()
        let num = 1
        
        XCTAssertFalse(primeNumber.isPrime(num))
    }

    func testPrimeFalse() {
        let primeNumber = PrimeNumber()
        let num = 36
        XCTAssertFalse(primeNumber.isPrime(num))
    }

    func testPrimeTwo() {
        let primeNumber = PrimeNumber()
        let num = 2
        XCTAssertTrue(primeNumber.isPrime(num))
    }

    func testPrimeThree() {
        let primeNumber = PrimeNumber()
        let num = 3
        XCTAssertTrue(primeNumber.isPrime(num))
    }
}
