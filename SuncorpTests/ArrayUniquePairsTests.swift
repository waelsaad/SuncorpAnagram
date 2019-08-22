//
//  IntegerDeltaDifferenceTests.swift
//  Suncorp
//
//  Created by Wael Saad - r00tdvd on 11/9/19 Copyright © 2019. All rights reserved.
//

import XCTest
@testable import Suncorp

class ArrayUniquePairsTests: XCTestCase {

    let pairService = ArrayService()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testUniquePairs1() {
        self.measure {
            let result = pairService.uniquePairs(numbers: [1, 4, 5, 7, 8, 9], delta: 3)
            XCTAssert(result == 3)
        }
    }
    
    
    func testUniquePairs2() {
        let result = pairService.uniquePairs(numbers: [1, 5, 2, 2, 2, 5, 5, 4], delta: 3)
        XCTAssert(result == 2)
    }

    func testUniquePairs3() {
        let result = pairService.uniquePairs(numbers: [1, 3, 1, 5, 4], delta: 0)
        XCTAssert(result == 1)
    }
    
    
    func testUniquePairs4() {
        let result = pairService.uniquePairs(numbers: [3, 1, 5, 8], delta: 2)
        XCTAssert(result == 2)
    }
    
    func testUniquePairs5() {
        let result = pairService.uniquePairs(numbers: [1, 2, 3, 4, 5], delta: 1)
        XCTAssert(result == 4)
    }
    
    func testUniquePairs6() {
        let result = pairService.uniquePairs(numbers: [1, 8, 15, 5, 4], delta: 7)
        XCTAssert(result == 2)
    }
    
    
    func testUniquePairs7() {
        let result = pairService.uniquePairs(numbers: [3, 1, 4, 1, 5], delta: 2)
        XCTAssert(result == 2)
    }
}
