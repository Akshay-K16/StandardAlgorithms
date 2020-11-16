//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Khemaney, Akshay (SPH) on 13/11/2020.
//

import Foundation

class Sorting {
    func bubbleSort(data: [Int]) -> [Int] {
        if data.count <= 1{
            return data
        }
        var newArray = data
        var sorted = false
        while sorted == false {
            sorted = true
            for i in 0..<newArray.count-1 {
                if newArray[i] > newArray[i+1] {
                    sorted = false
                    let temp = newArray[i]
                    newArray[i] = newArray[i+1]
                    newArray[i+1] = temp
                }
            }
        }
    return newArray
    }
    
    func merge(left: [Int], right: [Int]) -> [Int] {
        var mergedArray = [Int]()
        
        var merged = false
        var leftPointer = 0
        var rightPointer = 0
        
        while merged == false {
            if left[leftPointer] < right[rightPointer] {
                mergedArray.append(left[leftPointer])
                leftPointer += 1
            } else {
                mergedArray.append(right[rightPointer])
                rightPointer += 1
            }
            
            if leftPointer <= left.count {
                merged = true
                mergedArray.append(contentsOf: right.suffix(right.count-rightPointer))
            } else if rightPointer <= right.count {
                merged = true
                mergedArray.append(contentsOf: left.suffix(left.count-leftPointer))
            }
        }
        
        return mergedArray
    }
    
    func mergeSort(data: [Int]) -> [Int] {
        if data.count <= 1 {
            return data
        }
        
        let middle = data.count/2
        
        let leftArray = data.prefix(middle)
        let rightArray = data.suffix(data.count-middle)
        
        
        return merge(left: mergeSort(data: Array(leftArray)), right: mergeSort(data: Array(rightArray)))
    }
    
    func quickSort(data: [Int]) -> [Int] {
        if data.count <= 0{
            return data
          }
        var leftArray = [Int]()
        var rightArray = [Int]()
        let pivot = data[0]
        for i in 1..<data.count {
            if data[i] <= pivot{
              leftArray.append(data[i])
            }
            else {
              rightArray.append(data[i])
            }
        }

        var newArray = [Int]()
        newArray.append(contentsOf: quickSort(data: leftArray))
        newArray.append(pivot)
        newArray.append(contentsOf: quickSort(data: rightArray))
        return newArray
    }
    
    func insertionSort(data: [Int]) -> [Int] {
        if data.count <= 1{
            return data
        }
        var list = data
        var temp: Int
        for i in 0...(list.count-1) {
            if i == 0{
              continue
            }
            for j in 0...(i-1) {
              if list[i-j] >= list[i-j-1]{
                break
              }
              else {
                temp = list[i-j]
                list[i-j] = list[i-j-1]
                list[i-j-1] = temp
              }
            }
        }

        return list
    }
}
