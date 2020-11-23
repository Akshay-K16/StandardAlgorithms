//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Khemaney, Akshay (SPH) on 13/11/2020.
//

import XCTest

class SortingTest: XCTestCase {
    
    func testBubbleSortWithVariousIntegerArraysReturnsEachOneSorted() {
        // Arrange
        let sorting = Sorting()
        let testData = [(data: [6, 3, 9, 1, 2], expected: [1, 2, 3, 6, 9]),
                        (data: [1, 100, 4, 3, 15], expected: [1, 3, 4, 15, 100]),
                        (data: [2, 8, 1, 12, 9], expected: [1, 2, 8, 9, 12]),
                        (data: [], expected: [])]
        // Act
        for test in testData {
            let result = sorting.bubbleSort(data: test.data)
            // Assert
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testPerformanceOfBubbleSortWithIntegerArrayOfLength5() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 0..<5{
            data.append(Int.random(in: 0...1000000))
        }
        
        measure {
            let _ = sorting.bubbleSort(data: data)
        }
    }
    
    func testPerformanceOfBubbleSortWithIntegerArrayOfLength50() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 0..<50{
            data.append(Int.random(in: 0...1000000))
        }
        
        measure {
            let _ = sorting.bubbleSort(data: data)
        }
    }
    
    func testPerformanceOfBubbleSortWithIntegerArrayOfLength500() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 0..<500{
            data.append(Int.random(in: 0...1000000))
        }
        
        measure {
            let _ = sorting.bubbleSort(data: data)
        }
    }


    
    func testMergeSortWithVariousIntegerArraysReturnsEachOneSorted() {
        // Arrange
        let sorting = Sorting()
        let testData = [(data: [6, 3, 9, 1, 2], expected: [1, 2, 3, 6, 9]),
                        (data: [1, 100, 4, 3, 15], expected: [1, 3, 4, 15, 100]),
                        (data: [2, 8, 1, 12, 9], expected: [1, 2, 8, 9, 12]),
                        (data: [], expected: [])]

        // Act
        for test in testData {
            let result = sorting.mergeSort(data: test.data)
            // Assert
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testPerformanceOfMergeSortWithIntegerArrayOfLength5() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 0..<5{
            data.append(Int.random(in: 0...1000000))
        }
        
        measure {
            let _ = sorting.mergeSort(data: data)
        }
    }
    
    func testPerformanceOfMergeSortWithIntegerArrayOfLength50() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 0..<50{
            data.append(Int.random(in: 0...1000000))
        }
        
        measure {
            let _ = sorting.mergeSort(data: data)
        }
    }
    
    func testPerformanceOfMergeSortWithIntegerArrayOfLength500() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 0..<500{
            data.append(Int.random(in: 0...1000000))
        }
        
        measure {
            let _ = sorting.mergeSort(data: data)
        }
    }
    
    func testQuickSortWithVariousIntegerArraysReturnsEachOneSorted() {
        // Arrange
        let sorting = Sorting()
        let testData = [(data: [6, 3, 9, 1, 2], expected: [1, 2, 3, 6, 9]),
                        (data: [1, 100, 4, 3, 15], expected: [1, 3, 4, 15, 100]),
                        (data: [2, 8, 1, 12, 9], expected: [1, 2, 8, 9, 12]),
                        (data: [], expected: [])]
        // Act
        for test in testData {
            let result = sorting.quickSort(data: test.data)
            // Assert
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testPerformanceOfQuickSortWithIntegerArrayOfLength5() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 0..<5{
            data.append(Int.random(in: 0...1000000))
        }
        
        measure {
            let _ = sorting.quickSort(data: data)
        }
    }
    
    func testPerformanceOfQuickSortWithIntegerArrayOfLength50() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 0..<50{
            data.append(Int.random(in: 0...1000000))
        }
        
        measure {
            let _ = sorting.quickSort(data: data)
        }
    }
    
    func testPerformanceOfQuickSortWithIntegerArrayOfLength500() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 0..<500{
            data.append(Int.random(in: 0...1000000))
        }
        
        measure {
            let _ = sorting.quickSort(data: data)
        }
    }
    
    func testInsertionSortWithVariousIntegerArraysReturnsEachOneSorted() {
        // Arrange
        let sorting = Sorting()
        let testData = [(data: [6, 3, 9, 1, 2], expected: [1, 2, 3, 6, 9]),
                        (data: [1, 100, 4, 3, 15], expected: [1, 3, 4, 15, 100]),
                        (data: [2, 8, 1, 12, 9], expected: [1, 2, 8, 9, 12]),
                        (data: [], expected: [])]
        // Act
        for test in testData {
            let result = sorting.insertionSort(data: test.data)
            // Assert
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testPerformanceOfInsertionSortWithIntegerArrayOfLength5() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 0..<5{
            data.append(Int.random(in: 0...1000000))
        }
        
        measure {
            let _ = sorting.insertionSort(data: data)
        }
    }
    
    func testPerformanceOfInsertionSortWithIntegerArrayOfLength50() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 0..<50{
            data.append(Int.random(in: 0...1000000))
        }
        
        measure {
            let _ = sorting.insertionSort(data: data)
        }
    }
    
    func testPerformanceOfInsertionSortWithIntegerArrayOfLength500() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 0..<500{
            data.append(Int.random(in: 0...1000000))
        }
        
        measure {
            let _ = sorting.insertionSort(data: data)
        }
    }
}
