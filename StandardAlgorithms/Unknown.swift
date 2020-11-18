//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Khemaney, Akshay (SPH) on 18/11/2020.
//

import Foundation

class Unknown {
    
    func problem1(data: [Int]) -> Int {
        if data.count == 0 {
            return 0
        }
        return data[0] + data[data.count-1]
    }
    
    func problem2(data: [Int]) -> [Int] {
        
        var mode = [Int]()
        var highestCount = 0
        
        for i in 0..<data.count {
            var count = 0
            var rep = true
            while rep {
                if i+count >= data.count {
                    break
                }
                if data[i] == data[i+count] {
                    count += 1
                } else {
                    rep = false
                    if count > highestCount {
                        highestCount = count
                        mode.removeAll()
                        mode.append(data[i])
                    } else if count == highestCount {
                        mode.append(data[i])
                    }
                }
            }
        }
        return mode
    }
}
