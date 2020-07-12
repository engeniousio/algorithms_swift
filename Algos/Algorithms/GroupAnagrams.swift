//
//  GroupAnagrams.swift
//  Algos
//
//  Created by Natalia Popova on 6/24/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation

/*
 Given an array of strings, group anagrams together.

 Example:

 Input: ["eat", "tea", "tan", "ate", "nat", "bat"],
 Output:
 [
   ["ate","eat","tea"],
   ["nat","tan"],
   ["bat"]
 ]

 Note:
     All inputs will be in lowercase.
     The order of your output does not matter.
 */

class GroupAnagrams {
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = [String: Int]()
        for word in strs {
            let key = String(word.sorted())
            if dict[key] == nil {
                dict[key] = dict.count
            }
        }
        var result = Array(repeating: [String](), count: dict.count)
        for word in strs {
            result[dict[String(word.sorted())]!].append(word)
        }
        return result
    }

//  Version 2
    
    func groupAnagramsV2(_ strs: [String]) -> [[String]] {
        var dict = [String: [String]]()
        for word in strs {
            let key = String(word.sorted())
            if dict[key] == nil {
                dict[key] = [word]
            } else {
                dict[key]!.append(word)
            }
        }
        return Array(dict.values)
    }
}
