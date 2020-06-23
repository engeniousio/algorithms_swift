//
//  ChangeStringWithOffsetNumber.swift
//  Algos
//
//  Created by Natalia Popova on 5/17/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation

//From an input string and an offset number, create the output string in which each character of the input string is shifted by the offset.
//Example:
//‘abc’ by 3 is ‘def’
//‘1’ by 3 is ‘4’
//‘?’ by 2 is ‘?’
//‘Hello’ by 1 is ‘Ifmmp’
//‘z’ by 1 is ‘a’
//‘9’ by 1 is ‘0’
//‘b’ by -1 is ‘a’
//‘a’ by -1 is ‘z’

class ChangeStringWithOffsetNumber {
        
    var newString = ""
    
    func change(string: String, with offsetNumber: Int) -> String {
        
        guard offsetNumber != 0 else { return string }
        
        let arrChar: [Character] = (97...122).map({Character(UnicodeScalar($0))})
        let arrNumb: [Character] = (48...57).map({Character(UnicodeScalar($0))})
        let arrUpChar: [Character] = (65...90).map({Character(UnicodeScalar($0))})
        
        for char in string {
            if arrChar.contains(char) {
                changeInternal(string: string, with: offsetNumber, array: arrChar, char: char)
            } else if arrNumb.contains(char) {
                changeInternal(string: string, with: offsetNumber, array: arrNumb, char: char)
            } else if arrUpChar.contains(char) {
                changeInternal(string: string, with: offsetNumber, array: arrUpChar, char: char)
            } else {
                newString.append(char)
            }
        }
        return newString
    }
    
    func changeInternal(string: String, with offsetNumber: Int, array: [Character], char: Character) {
        
        var newOffsetNumber = 0
        if abs(offsetNumber) > array.count {
            newOffsetNumber = offsetNumber % array.count
        } else {
            newOffsetNumber = offsetNumber
        }
        guard let index = array.firstIndex(of: char) else { return }
        let newIndex = index + newOffsetNumber
        if offsetNumber > 0 {
            if newIndex < array.count {
                let charToAppend = array[newIndex]
                newString.append(charToAppend)
            } else {
                let charToAppend = array[newIndex - array.count]
                newString.append(charToAppend)
            }
        } else {
            if newIndex < 0 {
                let charToAppend = array[array.count + newIndex]
                newString.append(charToAppend)
            } else {
                let charToAppend = array[newIndex]
                newString.append(charToAppend)
            }
        }
    }
}
