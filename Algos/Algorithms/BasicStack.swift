//
//  BasicStack.swift
//  Algos
//
//  Created by Natalia Popova on 6/18/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation

/* A stack is a data structure with four main operations

 push(i): Add i to the top of the stack
 pop(): Remove and return the value on the top of the stack, raising an exception if the stack is empty
 is_highest(): highest int in the stack
 is_empty(): Return a boolean that is true if there is nothing on the stack and false otherwise
 
*/

class BasicStack {
    
    enum Exception: Error {
        case emptyStack
    }

    func push(element: Int, to stack: inout [Int]) {
        stack.append(element)
    }

    func pop(from stack: inout [Int]) throws -> Int {
        guard !stack.isEmpty else {
            throw Exception.emptyStack
        }
        return stack.removeLast()
    }

    func is_highest(_ stack: [Int]) -> Int? {
        guard !stack.isEmpty else {
            print("The stack is empty, there is no highest element")
            return nil
        }
        var stackCopy = stack
        let reversed = (0..<stackCopy.count).reversed()
        var array = [Int]()
        for i in reversed {
            array.append(stackCopy[i])
            stackCopy.remove(at: stackCopy.count - 1)
        }
        return array.max()
    }

    func is_empty(_ stack: [Int]) -> Bool {
        return stack.isEmpty
    }
}
