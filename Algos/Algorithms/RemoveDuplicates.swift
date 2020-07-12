//
//  RemoveDuplicates.swift
//  Algos
//
//  Created by Natalia Popova on 6/25/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation

class RemoveDuplicates {
    
    func removeDuplicatesInPlace(array: inout [Int]) -> [Int] {
        array.sort()
        var index = 1
        while index < array.count {
            if array[index] == array[index - 1] {
                array.remove(at: index)
            } else {
                index += 1
            }
        }
        return array
    }

    func removeDuplicatesUsingReduce(array: inout [Int]) -> [Int] {
        return array.reduce([]) { (a: [Int], b: Int) -> [Int] in
            if a.contains(b) {
                return a
            } else {
                return a + [b]
            }
        }
    }

    func removeDuplicatesUsingSet(array: inout [Int]) -> [Int] {
        return Array(Set(array))
    }

    func removeDuplicatesUsingDict(array: inout [Int]) -> [Int] {
        var dict: [Int: Int] = [:]
        for i in array where dict[i] == nil {
            dict[i] = 1
        }
        return Array(dict.keys)
    }

/** Version with Generics */
    
    func removeDuplicatesInPlaceV2<T: Comparable>(array: inout [T]) -> [T] {
        array.sort()
        var index = 0
        while index < array.count {
            if index > 0 && array[index] == array[index - 1] {
                array.remove(at: index)
            } else {
                index += 1
            }
        }
        return array
    }

    func removeDuplicatesUsingReduceV2<T: Equatable>(array: inout [T]) -> [T] {
        return array.reduce([]) { (a: [T], b: T) -> [T] in
            if a.contains(b) {
                return a
            } else {
                return a + [b]
            }
        }
    }

    func removeDuplicatesUsingSetV2<T: Hashable>(array: inout [T]) -> [T] where T: Comparable {
        return Array(Set(array))
    }

    func removeDuplicatesUsingDictV2<T: Hashable>(array: inout [T]) -> [T] where T: Comparable {
        var dict: [T: Int] = [:]
        for i in array where dict[i] == nil {
            dict[i] = 1
        }
        return Array(dict.keys)
    }
}
