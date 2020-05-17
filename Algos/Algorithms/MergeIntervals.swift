//
//  MergeIntervals.swift
//  Algos
//
//  Created by Natalia Popova on 5/14/20.
//  Copyright © 2020 tatuliana. All rights reserved.
//

import Foundation

class MergeIntervals {
    
    func merge(intervals: inout [[Int]]) -> [[Int]] {
        guard intervals.count > 1 else { return intervals }
        
        intervals.sort(by: { $0[0] < $1[0] })
        var currentInterval = intervals[0]
        var outputArr = [[Int]]()
        outputArr.append(currentInterval)
       
        for interval in intervals {
            let currentBegin = currentInterval[0]
            let currentEnd = currentInterval[1]
            let nextBegin = interval[0]
            let nextEnd = interval[1]
            
            if currentEnd >= nextBegin {
                currentInterval = [currentBegin, max(currentEnd, nextEnd)]
                outputArr[outputArr.count - 1] = currentInterval
            } else {
                currentInterval = interval
                outputArr.append(currentInterval)
            }
        }
        return outputArr
    }
}
