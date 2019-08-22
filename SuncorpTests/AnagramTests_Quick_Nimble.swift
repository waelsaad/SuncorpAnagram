//
//  AnagramTests_Quick_Nimble.swift
//  Suncorp
//
//  Created by Wael Saad - r00tdvd on 11/9/19 Copyright © 2019. All rights reserved.
//

import Quick
import Nimble

@testable import Suncorp


class AnagramTests: QuickSpec {
    
    override func spec() {
        
        describe("PlaygroundViewController") {
            
            let anagram = Anagram()
            
            beforeEach {
                
            }
            
            // MARK: - Table secion count test
            it("should pass for anagram word") {
                 let result = anagram.isAnagram(word1: "eat", word2: "tea")
                expect(result) == true
            }
            
            it("should pass for anagram word with spaces") {
                let result = anagram.isAnagram(word1: "Astronomers", word2: "No more stars")
                expect(result) == true
            }
            
            it("should pass for anagram word with spaces") {
                let result = anagram.isAnagram(word1: "George Bush", word2: "He bugs Gore")
                expect(result) == true
            }
            
            
            it("should fail for anagram word") {
                let result = anagram.isAnagram(word1: "GeorgeBush", word2: "He bugs Gore")
                expect(result) == true
            }
        }
    }
}
