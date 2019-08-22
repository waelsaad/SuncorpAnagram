//
//  UITextField+Empty.swift
//  Suncorp
//
//  Created by Wael Saad - r00tdvd on 11/9/19 Copyright © 2019. All rights reserved.
//

import UIKit

extension UITextField {
    var isEmpty: Bool {
        if let text = self.text, !text.isEmpty {
            return false
        }
        return true
    }
}
