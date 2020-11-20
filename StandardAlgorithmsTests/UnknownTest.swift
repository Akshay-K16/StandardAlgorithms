//
//  UnknownTest.swift
//  StandardAlgorithmsTests
//
//  Created by Khemaney, Akshay (SPH) on 18/11/2020.
//

import XCTest

class UnknownTest: XCTestCase {

    func testProblem1WithVariousIntegerArrays() {
        // Arrange
        let testing = Unknown()
        let testData = [(data: [6, 3, 9, 1, 2], expected: 8),
                        (data: [1, 100, 4, 3, 15], expected: 16),
                        (data: [2, 8, 1, 12, 9], expected: 11),
                        (data: [5], expected: 10),
                        (data: [], expected: 0)]
        // Act
        for test in testData {
            let result = testing.problem1(data: test.data)
            // Assert
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testProblem2WithVariousIntegerArrays() {
        // Arrange
        let testing = Unknown()
        let testData = [(data: [1, 2, 7, 12, 12, 47, 47], expected: [12, 47]),
                        (data: [1, 51, 100, 100, 666], expected: [100]),
                        (data: [1, 2, 8, 8, 12, 21], expected: [8]),
                        (data: [], expected: [])]
        // Act
        for test in testData {
            let result = testing.problem2(data: test.data)
            // Assert
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testProblem3WithVariousIntegerArrays() {
        // Arrange
        let testing = Unknown()
        let testData = [(data: [1, 2, 7, 12, 12, 47, 47], expected: 2),
                        (data: [51, 100, 100, 666], expected: 100),
                        (data: [2, 8, 8, 12, 21], expected: 8)]

        // Act
        for test in testData {
            let result = testing.problem3(data: test.data)
            // Assert
            XCTAssertEqual(result, test.expected)
        }
    }
    
}
