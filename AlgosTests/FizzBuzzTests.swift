//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Natalia Popova on 5/4/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import XCTest
@testable import Algos

class FizzBuzzTests: XCTestCase {

	var instance: FizzBuzz!
	
	override func setUp() {
		instance = FizzBuzz()
	}
	
	func test_FizzBuzz_fizzBuzz_whenInputRandom_shouldReturnFizz() {
		//given
		//interact
		let result = instance.fizzBuzz(n: [1,2,3,4,5,6,7,8,9].randomElement()!)
		//output
		XCTAssertFalse(result.isEmpty)
	}
	
	
	func test_FizzBuzz_fizzBuzz_whenInputMultiple3_shouldReturnFizz() {
		//given
		//interact
		let result = instance.fizzBuzz(n: 3)
		//output
		XCTAssertEqual(result, ["1", "2", "Fizz"])
	}
	
	func test_FizzBuzz_fizzBuzz_whenInputMultiple5_shouldReturnBuzz() {
		//given
		//interact
		let result = instance.fizzBuzz(n: 5)
		//output
		XCTAssertEqual(result, ["1", "2", "Fizz", "4", "Buzz"])
	}
	
	func test_FizzBuzz_fizzBuzz_whenInputMultiple3and5_shouldReturnFizzBuzz() {
		//given
		//interact
		let result = instance.fizzBuzz(n: 15)
		//output
		
		XCTAssertEqual(result, [
			"1", "2", "Fizz", "4", "Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14", "FizzBuzz"
		])
	}
}
