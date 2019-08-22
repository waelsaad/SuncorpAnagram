//
//  AnagramTests.swift
//  Suncorp
//
//  Created by Wael Saad - r00tdvd on 11/9/19 Copyright © 2019. All rights reserved.
//

import XCTest
@testable import Suncorp

class SuncorpTests: XCTestCase {

    let anagram = Anagram()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAnagram1() {
        self.measure {
            let result = anagram.isAnagram(word1: "The Morse Code", word2: "Here come dots")
            XCTAssert(result == true)
        }
    }
    
    func testAnagram2() {
        let result = anagram.isAnagram(word1: "Programming", word2: "mmggrrpoain")
        XCTAssert(result == true)
    }
    
    func testAnagram3() {
        let result = anagram.isAnagram(word1: "TESTING", word2: "SETTING")
        XCTAssert(result == true)
    }
    
    func testAnagram4() {
        let result = anagram.isAnagram(word1: "tea", word2: "eat")
        XCTAssert(result == true)
    }
    
    func testAnagram5() {
        let result = anagram.isAnagram(word1: "TINGES", word2: "SIGNET")
        XCTAssert(result == true)
    }
    
    func testAnagram6() {
        let result = anagram.isAnagram(word1: "A gentleman", word2: "Elegant man")
        XCTAssert(result == true)
    }
    
    func testAnagram7() {
        let result = anagram.isAnagram(word1: "Astronomers", word2: "No more stars")
        XCTAssert(result == true)
    }
    
    func testAnagram8() {
        let result = anagram.isAnagram(word1: "George Bush", word2: "He bugs Gore")
        XCTAssert(result == true)
    }
    
    func testAnagram9() {
        let result = anagram.isAnagram(word1: "Elvis", word2: "Lives")
        XCTAssert(result == true)
    }
    
    func testAnagram10() {
        let result = anagram.isAnagram(word1: "Boat", word2: "toab")
        XCTAssert(result == true)
    }
    
    func testAnagram11() {
        let result = anagram.isAnagram(word1: "signature", word2: "a true sign")
        XCTAssert(result == true)
    }
    
    func testAnagram12() {
        let result = anagram.isAnagram(word1: "Dave Barry", word2: "Ray Adverb")
        XCTAssert(result == true)
    }
    
    func testAnagram13() {
        let result = anagram.isAnagram(word1: "Schoolmaster", word2: "The classroom")
        XCTAssert(result == true)
    }
    
    func testAnagram14() {
        let result = anagram.isAnagram(word1: "silent", word2: "listen")
        XCTAssert(result == true)
    }
    
    
    func testFail1() {
        self.measure {
            let result = anagram.isAnagram(word1: "potato", word2: "tomato")
            XCTAssert(result == false)
        }
    }
    
    func testFail2() {
        self.measure {
            let result = anagram.isAnagram(word1: "Hello", word2: "helll")
            XCTAssert(result == false)
        }
    }
}
