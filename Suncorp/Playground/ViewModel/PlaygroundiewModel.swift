//
//  PlaygroundiewModel.swift
//  Suncorp
//
//  Created by Wael Saad - r00tdvd on 11/9/19 Copyright © 2019. All rights reserved.
//

import Foundation

protocol PlaygroundiewModelType {
    var titleOops: String { get }
    var errorMessage: String { get }
    var anagramRegEx: String { get }
    func isAnagram(word1: String, word2: String) -> Bool
}

class PlaygroundiewModel: PlaygroundiewModelType {

    var titleOops: String {
        return "ALERT.OOPS!".localized
    }
    
    var errorMessage: String {
        return "EMPTY.TEXT.ERROR".localized
    }
    
    var anagramRegEx: String {
        return Constants.AnagramAlphaSpaceDeleteRegEx
    }
    
    init (anagramService: Anagram) {
        self.anagramService = anagramService
    }
    
    func isAnagram(word1: String, word2: String) -> Bool {
        return anagramService.isAnagram(word1: word1, word2: word2)
    }
    
    private var anagramService: Anagram
}

extension PlaygroundiewModel {
    struct Constants {
        static let AnagramAlphaSpaceDeleteRegEx = "[a-zA-Z\\s]+"
    }
}
