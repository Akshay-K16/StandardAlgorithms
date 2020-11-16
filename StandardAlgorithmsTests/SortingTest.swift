//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Khemaney, Akshay (SPH) on 13/11/2020.
//

import XCTest

class SortingTest: XCTestCase {
    
//    func testBubbleSortWithIntegerArrayReturnsSortedArray() {
//        // Arrange
//        let sorting = Sorting()
//        let expected = [1, 3, 5, 8]
//        // Act
//        let result = sorting.bubbleSort(data: [5, 3, 1, 8])
//        // Assert
//        XCTAssertEqual(result, expected)
//    }
    
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
            XCTAssertEqual(result, test.expected)
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
            XCTAssertEqual(result, test.expected)
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
            XCTAssertEqual(result, test.expected)
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
            XCTAssertEqual(result, test.expected)
        }
    }

}
