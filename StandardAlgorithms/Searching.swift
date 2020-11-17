//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Khemaney, Akshay (SPH) on 17/11/2020.
//

import Foundation

class Searching {
    func linearSearch(data: [Int], toFind: Int) -> Bool {
        for i in 0..<data.count{
            if data[i] == toFind {
                return true
            }
        }
        
        return false
    }
    
    func binarySearch(data: [Int], toFind: Int) -> Bool {
        let length = data.count
        
        if length <= 1{
            if length != 0{
                if data[0] == toFind {
                    return true
                }
            }
            return false
        }
        
        let midpoint = length/2
        let middle = data[midpoint]
        
        if middle == toFind {
            return true
        } else if middle > toFind {
            return binarySearch(data: Array(data.prefix(midpoint)), toFind: toFind)
        } else {
            return binarySearch(data: Array(data.suffix(midpoint)), toFind: toFind)
        }
        
    }
}
