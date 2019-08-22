//
//  ArrayService.swift
//  Suncorp
//
//  Created by Wael Saad - r00tdvd on 11/9/19 Copyright © 2019. All rights reserved.
//

import Foundation

class ArrayService {

    func uniquePairs(numbers: [Int], delta: Int) -> Int {
        if delta < 0 { return 0 }
        var count = 0
        var dict = [Int : Int]()
        for i in numbers {
            dict[i] = (dict[i] ?? 0) + 1
        }
        
        for key in dict.keys {
            if delta == 0 {
                count += dict[key]! >= 2 ? 1 : 0
            } else {
                if dict[key + delta] != nil {
                    count += 1
                }
            }
        }
        return count
    }
}
