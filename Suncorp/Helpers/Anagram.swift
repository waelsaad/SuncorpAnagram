//
//  Anagram.swift
//  Suncorp
//
//  Created by Wael Saad - r00tdvd on 11/9/19 Copyright © 2019. All rights reserved.
//

import Foundation

class Anagram {

    //I have read a bit about anagrams and found really nice popular anagram words that I used in my test cases.
    //https://writingexplained.org/grammar-dictionary/anagram
    
    // Works but Not good enough (doesn't handle spaces correctly)
    func isAnagram1(word1: String, word2: String) -> Bool {
        return word1.lowercased().sorted() == word2.lowercased().sorted()
    }
    
    // Works but Not good enough (doesn't handle spaces correctly)
    func isAnagram2(word1: String, word2: String) -> Bool {
        let word = word1.lowercased()
        var anagram = word2.lowercased()
        
        for character in word {
            if let characterIndex = anagram.firstIndex(of: character) {
                anagram.remove(at: characterIndex)
            } else {
                break
            }
        }
        
        return anagram.count == 0
    }

    // So far it works with all anagrams I found.
    func isAnagram(word1: String, word2: String) -> Bool {
        if (word1.count > 0 && word2.count > 0) {
            let regex = try! NSRegularExpression(pattern: "[\\s\\p{P}]", options: [.caseInsensitive])
            
            let trimmedPhrase1 = regex.stringByReplacingMatches(in: word1, options: [], range: NSMakeRange(0, word1.count), withTemplate: "")
            let trimmedPhrase2 = regex.stringByReplacingMatches(in: word2, options: [], range: NSMakeRange(0, word2.count), withTemplate: "")
            
            let chArr1 = Array(trimmedPhrase1.lowercased())
            let chArr2 = Array(trimmedPhrase2.lowercased())
            
            if (chArr1 == chArr2) {
                return false;
            }
            
            let sorted1 = chArr1.sorted()
            let sorted2 = chArr2.sorted()
            
            if sorted1 == sorted2 {
                return true;
            }
            
        }
        return false;
    }
}
