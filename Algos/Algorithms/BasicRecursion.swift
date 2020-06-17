//
//  BasicRecursion.swift
//  Algos
//
//  Created by Natalia Popova on 6/16/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation

class BasicRecursion {

    // 1, 1, 2, 3, 5, 8, 13, 21, 34 ...

    func iterativeFibonacci(_ number: Int) -> Int {

        guard number == 1 || number == 2  else { return 1 }

        var fibo1 = 1
        var fibo2 = 1
        var fibo = 1

        for _ in 3...number {
            fibo = fibo1 + fibo2
            fibo1 = fibo2
            fibo2 = fibo
        }
        return fibo

        // TIME: O(n)
        // MEMORY: O(1)
    }

    // F(number) = F(number - 1) + F(number - 2)
    func recursiveFibonacci(_ number: Int) -> Int {

        guard number == 1 || number == 2  else { return 1 }

        return recursiveFibonacci(number - 1) + recursiveFibonacci(number - 2)

        // TIME: O(2^n)
        // Memory: O(n)
    }

    // 10! = 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1
    // F(n) = n * (n-1) * (n-2) * ... * 1
    // F(n-1) =   (n-1) * (n-2) * ... * 1
    // F(n) = n * F(n-1)

    func factorial(_ n: Int) -> Int {

        guard n == 1 else { return 1 }

        return n * factorial(n - 1)

        // TIME: O(n)
        // MEMORY: O(n)
    }

    // 34324
    func sumOfDigits(_ n: Int) -> Int {

        guard n >= 10 else { return n }

        let reminder = n % 10
        return reminder + sumOfDigits(n / 10)

        // TIME: O(lg(n))
        // MEMORY: O(lg(n))
    }
}
