//
//  SearchingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Khemaney, Akshay (SPH) on 17/11/2020.
//

import XCTest

class SearchingTest: XCTestCase {

    func testLinearSearchWithVariousIntegerArraysAndIntegers() {
        // Arrange
        let searching = Searching()
        let testData = [(data: [6, 3, 9, 1, 2], toFind: 1, expected: true),
                        (data: [1, 100, 4, 3, 15], toFind: 256, expected: false),
                        (data: [2, 8, 1, 12, 9], toFind: 12, expected: true),
                        (data: [], toFind: 7, expected: false)]
        // Act
        for test in testData {
            let result = searching.linearSearch(data: test.data, toFind: test.toFind)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testBinarySearchWithVariousIntegerArraysAndIntegers() {
        // Arrange
        let searching = Searching()
        let testData = [(data: [1, 2, 3, 12, 47], toFind: 12, expected: true),
                        (data: [1, 51, 100, 273, 666], toFind: 256, expected: false),
                        (data: [1, 2, 8, 12, 21], toFind: 12, expected: true),
                        (data: [], toFind: 7, expected: false)]
        // Act
        for test in testData {
            let result = searching.binarySearch(data: test.data, toFind: test.toFind)
            XCTAssertEqual(result, test.expected)
        }
    }
    
}
